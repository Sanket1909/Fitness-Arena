//
//  LoginViewController.swift
//  FitnessArena
//
//  Created by Akshay on 2021-12-13.
//

import UIKit
import FirebaseAuth
import Firebase

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    
    let ref = Database.database().reference()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func validateFields() -> String? {
        
        // Check that all fields are filled in
        if emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            PasswordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""
           
        {
            
            return "Please fill in all fields."
        }
        return nil
    }
    
    @IBAction func LoginButtonTapped(_ sender: Any) {
        
        let defaults = UserDefaults.standard
        
        let error = validateFields()
        if error != nil {
            
            // There's something wrong with the fields, show error message
            self.present(Utilities.createAlertController(title: "Cannot Sign Up", message: "Please check entered Fields"), animated: true, completion: nil)
        }
        else {
            // Create cleaned versions of the text field
            let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let password = PasswordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
                if let error = error, let _ = AuthErrorCode(rawValue: error._code) {
                    // Couldn't sign in
                    self.present(Utilities.createAlertController(title: "Cannot login", message: "Please check your credentials !"), animated: true, completion: nil)
                } else {
                    
                    guard let userID = Auth.auth().currentUser?.uid else { return }
                    print(userID)
                    
                    self.ref.child("users").child(userID).observeSingleEvent(of: .value, with: { snapshot in
                        // Get user value
                        let value = snapshot.value as? NSDictionary
                        let userIds = value?["id"] as? String ?? ""
                        defaults.set(true, forKey: "isUserSignedIn")
                        defaults.set(userIds, forKey: "loggedInUserID")
                        self.performSegue(withIdentifier: "UserLoggedInSegue", sender: nil)
                    }) { error in
                        // Couldn't sign in
                        self.present(Utilities.createAlertController(title: "Cannot login", message: "Please check your Internet Connection !"), animated: true, completion: nil)
                    }
                }
            }
        }
        
        
    }
    
    @IBAction func ForgotPasswordTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "ForgotPasswordSegue", sender: nil)
    }
    
    
    @IBAction func SignUpTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "UserSignedUpSegue", sender: nil)
    }
    
}
