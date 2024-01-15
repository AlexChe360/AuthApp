//
//  ViewController.swift
//  AuthApp
//
//  Created by Alex on 12.01.2024.
//

import UIKit

class ViewController: UIViewController {
    
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
        if let image = UIImage(systemName: "person") {
            textField.setLeftView(image: image)
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
    
    lazy var connectStack: UIStackView = {
        let stack = UIStackView()
        stack.spacing = 20
        
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
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
            forgotPasswordLabel
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
            forgotPasswordLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: Constants.labelTralingAnchor)
        ])
    }
    
    // MARK: - Actions
    
    // MARK: - Other functions
    private func setGradientBackground() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.white.cgColor, UIColor.secondaryColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 0.0)
        gradientLayer.locations = [0, 1]
        gradientLayer.frame = view.bounds
        view.layer.insertSublayer(gradientLayer, at: 0)
    }

}


