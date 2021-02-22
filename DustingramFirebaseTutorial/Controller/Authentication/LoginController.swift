//
//  LoginController.swift
//  DustingramFirebaseTutorial
//
//  Created by Dustin on 2021/02/22.
//

import UIKit

class LoginController: UIViewController {
    
    private let iconImage : UIImageView = {
        let iv = UIImageView(image: #imageLiteral(resourceName: "Instagram_logo_white"))
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    
    private let emailTextField : UITextField = {
        let tf = CustomTextField(placeholder: "Email")
        tf.keyboardType = .emailAddress
        return tf
    }()
    
    private let passwordTextField : UITextField = {
        let tf = CustomTextField(placeholder: "password")
        tf.isSecureTextEntry = true
        return tf
    }()
    
    private let loginButton : UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitle("Log In", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.backgroundColor = .blue
        bt.layer.cornerRadius = 5
        bt.setHeight(50)
        bt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        return bt
    }()
    
    
    private let forgotPasswordButton : UIButton = {
        let bt = UIButton(type: .system)
        bt.attributedTitle(firstPart: "forgot your password", secondPart: "Get help signing in.")
        return bt
    }()
    
    private let dontHaveAccountButton : UIButton = {
        let bt = UIButton(type: .system)
        bt.attributedTitle(firstPart: "Don't have an account?", secondPart: "Sign Up.")
        return bt
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }
    
    
    
    

    func configureUI() {
        view.backgroundColor = .white
        navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.barStyle = .black
        
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.systemPurple.cgColor,UIColor.systemBlue.cgColor]
        gradient.locations = [0,1]
        view.layer.addSublayer(gradient)
        gradient.frame = view.frame
        
        view.addSubview(iconImage)
        iconImage.centerX(inView: view)
        iconImage.setDimensions(height: 80, width: 120)
        iconImage.anchor(top:view.safeAreaLayoutGuide.topAnchor,paddingTop: 32)
        
        let stack = UIStackView(arrangedSubviews: [emailTextField,passwordTextField,loginButton,forgotPasswordButton])
        
        stack.axis = .vertical
        stack.spacing = 20
        
        view.addSubview(stack)
        stack.anchor(top:iconImage.bottomAnchor,left: view.leftAnchor,right: view.rightAnchor,paddingTop: 32,paddingLeft: 32,paddingRight: 32)
        
        view.addSubview(dontHaveAccountButton)
        dontHaveAccountButton.centerX(inView: view)
        dontHaveAccountButton.anchor(bottom:view.safeAreaLayoutGuide.bottomAnchor)
        
    }

}
