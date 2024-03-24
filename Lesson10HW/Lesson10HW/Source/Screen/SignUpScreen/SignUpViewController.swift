//
//  SignUpViewController.swift
//  Lesson10HW
//

//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var contentView: SignUpView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        subscrubeNotifications()
        configureTextFieldDelegates()
    }
}

