//
//  SignUpViewController+Notification.swift
//  Lesson10HW
//

//

import UIKit

extension SignUpViewController {
    
    func subscrubeNotifications() {
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillShow),
            name: UIResponder.keyboardWillShowNotification,
            object: nil
        )
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(self.keyboardWillHide),
            name: UIResponder.keyboardWillHideNotification,
            object: nil
        )
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        print("keyboardWillShow")
        let keyboardHeight = keyboardHeight(from: notification)
        setContentInset(bottom: keyboardHeight)
    }

    @objc func keyboardWillHide(notification: NSNotification) {
        print("keyboardWillHide")
        setContentInset(bottom: 0)
    }
    
    private func keyboardHeight(from notification: NSNotification) -> CGFloat {
        
        if let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
            
            let keyboardRectangle = keyboardFrame.cgRectValue
            let keyboardHeight = keyboardRectangle.height
            
            return keyboardHeight
        }
        
        return 0.0
    }
    
    private func setContentInset(bottom value: CGFloat) {
        self.scrollView.contentInset.bottom = value
    }
}
