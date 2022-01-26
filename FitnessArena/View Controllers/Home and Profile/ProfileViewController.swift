//
//  ProfileViewController.swift
//  FitnessArena
//
//  Created by Akshay on 2021-12-13.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseDatabase


class ProfileViewController: UIViewController {
    
    
    
    @IBOutlet weak var backLabel: UIButton!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let ref = Database.database().reference()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.backLabel.setTitle("", for: .normal)
        self.getUserProfile()
        
        
    }
    
    func getUserProfile() {
        
        guard let uid = Auth.auth().currentUser?.uid else {
            print("User not found")
            return
        }
        self.ref.child("users").child(uid).observeSingleEvent(of: .value, with: { snapshot in
            // Get user value
            let value = snapshot.value as? NSDictionary
            let userId = value?["id"] as? String ?? ""
            let firstName = value?["firstName"] as? String ?? ""
            let lastName = value?["lastName"] as? String ?? ""
            let email = value?["email"] as? String ?? ""
            let mobile = value?["mobile"] as? String ?? ""
            
            self.firstNameTextField.text = firstName
            self.lastNameTextField.text = lastName
            self.emailTextField.text = email
            self.phoneTextField.text = mobile
        })
        
    }
    func validateFields() -> String? {
        
        // Check that all fields are filled in
        if firstNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            lastNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            phoneTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""
        {
            
            return "Please fill in all fields."
        }
        return nil
    }
    
    func updateUser() {
        
        //VALIDATION
        guard let uid = Auth.auth().currentUser?.uid else {
            print("User not found")
            return
        }
        if  uid.count > 0 {
            self.ref.child("users").child(uid).updateChildValues([
                "firstName" : self.firstNameTextField.text!,
                "lastName" : self.lastNameTextField.text!,
            ])
        }
        self.present(Utilities.createAlertController(title: "Success", message: "Profile updated successfully"), animated: true, completion: nil)
    }
    
    @IBAction func updateButtonTapped(_ sender: Any) {
        let error = validateFields()
        if error != nil {
            
            // There's something wrong with the fields, show error message
            self.present(Utilities.createAlertController(title: "Cannot Sign Up", message: "Please check entered Fields"), animated: true, completion: nil)
        }
        else {
            self.updateUser()
            
        }
    }
    
    @IBAction func logOutButtonTapped(_ sender: Any) {
        let auth = Auth.auth()
        
        do {
            try auth.signOut()
            let defaults = UserDefaults.standard
            defaults.set(false, forKey: "isUserSignedIn")
            self.dismiss(animated: true, completion: nil)
        } catch let signOutError {
            self.present(Utilities.createAlertController(title: "Error", message: signOutError.localizedDescription), animated: true, completion: nil)
        }
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "homeScreenSegue", sender: nil)
    }
}
