//
//  SignUpViewController.swift
//  FitnessArena
//
//  Created by Akshay on 2021-12-13.
//

import UIKit
import Firebase
import FirebaseDatabase

class SignUpViewController: UIViewController {
    
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let ref = Database.database().reference()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
    }
    func validateFields() -> String? {
        
        // Check that all fields are filled in
        if firstNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            lastNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            phoneTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            
            return "Please fill in all fields."
        }
        
        // Check if the password is secure
        let cleanedPassword = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let testStr = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if Utilities.isPasswordValid(cleanedPassword) == false && Utilities.isValidEmail(testStr: testStr) == false {
            // Password isn't secure enough
            // return "Please make sure your password is at least 8 characters, contains a special character and a number."
            self.present(Utilities.createAlertController(title: "Cannot Sign Up", message: "Please check entered Fields"), animated: true, completion: nil)
        }
        
        return nil
    }
    
    
    
    @IBAction func signUpButtonTapped(_ sender: Any) {
        // Validate the fields
        let error = validateFields()
        let defaults = UserDefaults.standard
        
        if error != nil {
            
            // There's something wrong with the fields, show error message
            self.present(Utilities.createAlertController(title: "Cannot Sign Up", message: "Please check entered Fields"), animated: true, completion: nil)
        }
        else {
            
            // Create cleaned versions of the data
            let firstName = firstNameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let lastName = lastNameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let mobile = phoneTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
            let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            // Create the user
            Auth.auth().createUser(withEmail: email, password: password) {(authResult, error) in
                if let user = authResult?.user {
                    print(user)
                    self.ref.child("users").child(user.uid).setValue([
                        "id": user.uid,
                        "firstName" : firstName,
                        "lastName" : lastName,
                        "email" : email,
                        "mobile" : mobile
                    ])
                    // Transition to the home screen
                    
                    defaults.set(true, forKey: "isUserSignedIn")
                    self.performSegue(withIdentifier: "UserSignedUpSegue", sender: nil)
                } else {
                    self.present(Utilities.createAlertController(title: "Cannot Sign Up", message: "Please check entered Fields"), animated: true, completion: nil)
                }
            }
            
        }
    }
    
}


