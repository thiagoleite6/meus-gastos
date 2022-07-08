//
//  RegisterView.swift
//  MeusGastos
//
//  Created by Thiago Almeida Leite on 07/07/22.
//

import UIKit

class RegisterView: UIView {

    var onBackButtonTapped: (() -> Void)?
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Register"
        label.font = UIFont.preferredFont(forTextStyle: .title1)
        
        return label
    }()
    
    lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Email"
        
        return label
    }()
    
    lazy var emailTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.borderWidth = 0.5
        textField.layer.cornerRadius = 10
        
        return textField
    }()
    
    lazy var passwordlLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Password"
        
        return label
    }()
    
    lazy var passwordlTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.borderWidth = 0.5
        textField.layer.cornerRadius = 10
        
        return textField
    }()
    
    lazy var confirmPasswordlLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Confirm password"
        
        return label
    }()
    
    lazy var confirmPasswordlTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.borderWidth = 0.5
        textField.layer.cornerRadius = 10
        
        return textField
    }()
    
    
    lazy var registerButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Save", for: .normal)
        btn.layer.cornerRadius = 10
        btn.backgroundColor = .systemBlue
        btn.addTarget(self, action: #selector(registerButtonTapped), for: .touchUpInside)
        
        return btn
    }()
    
    lazy var backLoginButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Voltar", for: .normal)
        btn.setTitleColor(UIColor.systemBlue, for: .normal)
        btn.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        
        return btn
    }()
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureSubViews()
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Methods
    
    private func configureSubViews() {
        addSubview(titleLabel)
        addSubview(emailLabel)
        addSubview(emailTextField)
        addSubview(passwordlLabel)
        addSubview(passwordlTextField)
        addSubview(confirmPasswordlLabel)
        addSubview(confirmPasswordlTextField)
        addSubview(registerButton)
        addSubview(backLoginButton)
    }
    
    @objc func registerButtonTapped() {
//        delegate?.handleRegisterButton()
        // Closure
//        onRegisterTap?()
    }
    
    @objc func backButtonTapped() {
        onBackButtonTapped?()
    }
    
    // MARK: - Contraints
    
    private func setUpConstraints() {
        setupTitle()
        setupEmail()
        setupPassword()
        setupConfirmPassword()
        setupRegisterButton()
        setupBackLoginButton()
    }
    
    private func setupTitle() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
        ])
    }
    
    private func setupEmail() {
        NSLayoutConstraint.activate([
            emailLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 32),
            emailLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            emailLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 12),
            emailTextField.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor),
            emailTextField.trailingAnchor.constraint(equalTo: emailLabel.trailingAnchor),
            emailTextField.heightAnchor.constraint(equalToConstant: 45)
            
        ])
    }
    
    private func setupPassword() {
        NSLayoutConstraint.activate([
            passwordlLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 32),
            passwordlLabel.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor),
            passwordlLabel.trailingAnchor.constraint(equalTo: emailLabel.trailingAnchor),
            
            passwordlTextField.topAnchor.constraint(equalTo: passwordlLabel.bottomAnchor, constant: 12),
            passwordlTextField.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
            passwordlTextField.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor),
            passwordlTextField.heightAnchor.constraint(equalToConstant: 45)
            
        ])
    }
    
    private func setupConfirmPassword() {
        NSLayoutConstraint.activate([
            confirmPasswordlLabel.topAnchor.constraint(equalTo: passwordlTextField.bottomAnchor, constant: 12),
            confirmPasswordlLabel.leadingAnchor.constraint(equalTo: passwordlTextField.leadingAnchor),
            confirmPasswordlLabel.trailingAnchor.constraint(equalTo: passwordlTextField.trailingAnchor),
            
            confirmPasswordlTextField.topAnchor.constraint(equalTo: confirmPasswordlLabel.bottomAnchor, constant: 12),
            confirmPasswordlTextField.leadingAnchor.constraint(equalTo: passwordlTextField.leadingAnchor),
            confirmPasswordlTextField.trailingAnchor.constraint(equalTo: passwordlTextField.trailingAnchor),
            confirmPasswordlTextField.heightAnchor.constraint(equalToConstant: 45),
        ])
    }
    
    private func setupRegisterButton() {
        NSLayoutConstraint.activate([
            registerButton.topAnchor.constraint(equalTo: confirmPasswordlTextField.bottomAnchor, constant: 42),
            registerButton.leadingAnchor.constraint(equalTo: confirmPasswordlTextField.leadingAnchor),
            registerButton.trailingAnchor.constraint(equalTo: confirmPasswordlTextField.trailingAnchor),
            registerButton.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
    
    private func setupBackLoginButton() {
        NSLayoutConstraint.activate([
            backLoginButton.topAnchor.constraint(equalTo: registerButton.bottomAnchor, constant: 12),
            backLoginButton.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    

}
