//
//  SignUpViewController+UITexteFieldDelegate.swift
//  Lesson10HW
//
//  Created by rendi on 24.03.2024.
//

import UIKit

extension SignUpViewController: UITextFieldDelegate {
    // Setup text field delegates and modify return key type
    func configureTextFieldDelegates() {
        for textField in contentView.getTextFields() {
            textField.delegate = self // Set delegate
            textField.returnKeyType = .done // Set return key to 'Done'
        }
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        // Check if the textField is cardNumberTextField or cvvTextField
        if textField == contentView.cardNumberTextField {
            // Limit the maximum length to 16 characters for card number
            return limitTextFieldCharacterCount(textField, range: range, replacementString: string, maxLength: 16)
        } else if textField == contentView.cvvTextField {
            // Limit the maximum length to 3 characters for CVV
            return limitTextFieldCharacterCount(textField, range: range, replacementString: string, maxLength: 3)
        }
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Dismiss keyboard when "Done" is pressed
        textField.resignFirstResponder()
        return true
    }
    
    private func limitTextFieldCharacterCount(_ textField: UITextField, range: NSRange, replacementString string: String, maxLength: Int) -> Bool {
        let currentText = textField.text ?? ""
        guard let stringRange = Range(range, in: currentText) else { return false }
        let updatedText = currentText.replacingCharacters(in: stringRange, with: string)
        return updatedText.count <= maxLength
    }
}


