//
//  SignUpView.swift
//  Lesson10HW
//

//

import UIKit

class SignUpView: UIView {
    
    // MARK: - User Info
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    // MARK: - Address Info
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    // MARK: - Bank Card Info
    @IBOutlet weak var cardNumberTextField: UITextField!
    @IBOutlet weak var expDateTextField: UITextField!
    @IBOutlet weak var cvvTextField: UITextField!
    // MARK: - Buttons
    @IBOutlet weak var signUpButton: UIButton!
    
    override func awakeFromNib() {
         super.awakeFromNib()
         setupInputFields()
     }
    
    
    // MARK: - Setting up the keyboard types and other configurations
    private func setupInputFields() {
        // Email
        emailNameTextField.keyboardType = .emailAddress
        
        // Card
        cardNumberTextField.keyboardType = .numberPad
        cvvTextField.keyboardType = .numberPad
        cvvTextField.isSecureTextEntry = true
        
        // Password
        passwordTextField.isSecureTextEntry = true
        confirmPasswordTextField.isSecureTextEntry = true
    }
    
    func getTextFields() -> [UITextField] {
        return [
            firstNameTextField,
            lastNameTextField,
            emailNameTextField,
            passwordTextField,
            confirmPasswordTextField,
            countryTextField,
            cityTextField,
            addressTextField,
            cardNumberTextField,
            expDateTextField,
            cvvTextField
        ]
    }
    
    // MARK: - Actions
    @IBAction func signUpButtonAction(_ sender: UIButton) {
        // This will force the view to resign the first responder status, hiding the keyboard
        self.endEditing(true)
    }
}
