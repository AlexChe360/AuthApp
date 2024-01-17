//
//  ViewController.swift
//  AuthApp
//
//  Created by Alex on 12.01.2024.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    private let signUp = "Sign up"
    
    // MARK: - Constants
    
    private enum Constants {
        static let titleLabelTopAnchor: CGFloat = 150
        static let labelLeadingAnchor: CGFloat = 20
        static let labelTralingAnchor: CGFloat = -20
        static let userNameTextFieldTopAnchor: CGFloat = 50
        static let passwordTextFieldTopAnchor: CGFloat = 20
        static let topAnchor: CGFloat = 20
        static let leadingAnchor: CGFloat = 50
        static let tralingAnchor: CGFloat = -50
        static let heightAnchor: CGFloat = 40
        static let fontSize32: CGFloat = 32
        static let fontSize16: CGFloat = 16
        static let fontSize12: CGFloat = 12
        static let cornerRadius: CGFloat = 20
        static let stackSpace: CGFloat = 20
        static let lineCornerRadius: CGFloat = 5
    }
    
    // MARK: - UI
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.font = UIFont.systemFont(ofSize: Constants.fontSize32, weight: .bold)
        label.textColor = UIColor.white
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var userNameTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = UIColor.white
        textField.borderStyle = .roundedRect
        textField.layer.masksToBounds = true
        textField.layer.cornerRadius = Constants.cornerRadius
        textField.placeholder = "Username"
        textField.text = "keanureeves01"
        textField.textColor = UIColor.lightGray
        if let image = UIImage(systemName: "person") {
            textField.setLeftView(image: image)
        }
        if let successImage = UIImage(named: "success_icon") {
            textField.setRigntView(image: successImage)
        }
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = UIColor.white
        textField.borderStyle = .roundedRect
        textField.layer.cornerRadius = Constants.cornerRadius
        textField.layer.masksToBounds = true
        textField.placeholder = "Password"
        textField.font = UIFont.systemFont(ofSize: Constants.fontSize16, weight: .medium)
        if let image = UIImage(systemName: "lock") {
            textField.setLeftView(image: image)
        }
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor.buttonColor
        button.setTitle("Login", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        button.layer.cornerRadius = Constants.cornerRadius
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var forgotPasswordLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: Constants.fontSize12, weight: .medium)
        label.text = "Forgot your paswword?"
        label.textColor = UIColor.white
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var separatorRightView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = Constants.lineCornerRadius
        view.layer.masksToBounds = true
        view.backgroundColor = UIColor.grayColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var separatorLeftView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = Constants.lineCornerRadius
        view.layer.masksToBounds = true
        view.backgroundColor = UIColor.grayColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var connectWithLabel: UILabel = {
        let label = UILabel()
        label.text = "or connect with"
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.textColor = UIColor.lightGray
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    lazy var facebookButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Facebook", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        button.backgroundColor = UIColor.facebookButtonColor
        button.setImage(UIImage(named: "facebook"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.contentVerticalAlignment = .fill
        button.contentHorizontalAlignment = .fill
        button.imageEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        button.layer.cornerRadius = Constants.cornerRadius
        return button
    }()
    
    lazy var twitterButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Twitter", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        button.backgroundColor = UIColor.twitterButtonColor
        button.setImage(UIImage(named: "twitter"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.contentVerticalAlignment = .fill
        button.contentHorizontalAlignment = .fill
        button.imageEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        button.layer.cornerRadius = Constants.cornerRadius
        return button
    }()
    
    lazy var buttonStack: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.addArrangedSubview(facebookButton)
        stackView.addArrangedSubview(twitterButton)
        return stackView
    }()
    
    lazy var haveAccountLabel: UILabel = {
        let label = UILabel()
        let fullString = "Dont have account? " + signUp
        let strNSString: NSString = fullString as NSString
        let rangeSignUp = (strNSString as NSString).range(of: signUp)
        let attribute = NSMutableAttributedString.init(fullString: fullString, fullStringColor: UIColor.lightGray, fullStringSize: 12, subString: signUp, subStringColor: UIColor.buttonColor, subStringSize: 12)
        label.attributedText = attribute
        
        //Tap Gesture
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(lblNumberTapped))
        label.addGestureRecognizer(tapGesture)
        label.isUserInteractionEnabled = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Setups
    
    private func setupView() {
        setGradientBackground()
    }
    
    private func setupHierarchy() {
        view.addSubViews([
            titleLabel,
            userNameTextField,
            passwordTextField,
            loginButton,
            forgotPasswordLabel,
            separatorLeftView,
            connectWithLabel,
            separatorRightView,
            buttonStack,
            haveAccountLabel
        ])
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: Constants.titleLabelTopAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Constants.labelLeadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: Constants.labelTralingAnchor),
            
            userNameTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            userNameTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: Constants.userNameTextFieldTopAnchor),
            userNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Constants.leadingAnchor),
            userNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: Constants.tralingAnchor),
            userNameTextField.heightAnchor.constraint(equalToConstant: Constants.heightAnchor),
            
            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTextField.topAnchor.constraint(equalTo: userNameTextField.bottomAnchor, constant: Constants.passwordTextFieldTopAnchor),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Constants.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: Constants.tralingAnchor),
            passwordTextField.heightAnchor.constraint(equalToConstant: Constants.heightAnchor),
            
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 50),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Constants.leadingAnchor),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: Constants.tralingAnchor),
            loginButton.heightAnchor.constraint(equalToConstant: Constants.heightAnchor),
            
            forgotPasswordLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            forgotPasswordLabel.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: Constants.topAnchor),
            forgotPasswordLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Constants.labelLeadingAnchor),
            forgotPasswordLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: Constants.labelTralingAnchor),
            
            separatorLeftView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Constants.leadingAnchor),
            separatorLeftView.trailingAnchor.constraint(equalTo: connectWithLabel.leadingAnchor, constant: 10),
            separatorLeftView.heightAnchor.constraint(equalToConstant: 1),
            separatorLeftView.widthAnchor.constraint(equalToConstant: 100),
            separatorLeftView.topAnchor.constraint(equalTo: forgotPasswordLabel.bottomAnchor, constant: 208),
            
            connectWithLabel.topAnchor.constraint(equalTo: forgotPasswordLabel.bottomAnchor, constant: 200),
            connectWithLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            separatorRightView.topAnchor.constraint(equalTo: forgotPasswordLabel.bottomAnchor, constant: 208),
            separatorRightView.leadingAnchor.constraint(equalTo: connectWithLabel.trailingAnchor, constant: 10),
            separatorRightView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: Constants.tralingAnchor),
            separatorRightView.heightAnchor.constraint(equalToConstant: 1),
            separatorRightView.widthAnchor.constraint(equalTo: separatorLeftView.widthAnchor),
            
            buttonStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonStack.topAnchor.constraint(equalTo: connectWithLabel.bottomAnchor, constant: 30),
            buttonStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Constants.leadingAnchor),
            buttonStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: Constants.tralingAnchor),
            buttonStack.heightAnchor.constraint(equalToConstant: Constants.heightAnchor),
            
            haveAccountLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            haveAccountLabel.topAnchor.constraint(equalTo: buttonStack.bottomAnchor, constant: 30),
            haveAccountLabel.heightAnchor.constraint(equalToConstant: 20),
        ])
    }
    
    // MARK: - Actions
    @objc func lblNumberTapped(_ gesture: UITapGestureRecognizer) {
        self.view.endEditing(true)
        let text = self.haveAccountLabel.text ?? ""
        let recoverText = (text as NSString).range(of: signUp)
        if gesture.didTapAttributedTextInLabel(label: haveAccountLabel, inRange: recoverText) {
            print("Somethig do")
        }
    }
    
    // MARK: - Other functions
    private func setGradientBackground() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.white.cgColor, UIColor.secondaryColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 0.0)
        gradientLayer.locations = [0, 1]
        gradientLayer.frame = view.bounds
        view.layer.insertSublayer(gradientLayer, at: 2)
    }
    
}


