//
//  LoginView.swift
//  practice
//
//  Created by Konstantin on 27.11.2021.
//

import UIKit

final class LoginView: UIView
{
    weak var controller: ViewController?
    
    private lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.text = "Log In"
        label.font = UIFont.systemFont(ofSize: 30)
        label.textColor = .black
        return label
    }()
    
    lazy var textFieldNumber: UITextField = {
        let label = UITextField()
        label.placeholder = "  Write your number"
        label.backgroundColor = UIColor(red: 246/255, green: 246/255, blue: 246/255, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 16)
        label.layer.cornerRadius = 8
        label.textColor = UIColor(red: 189/255, green: 189/255, blue: 189/255, alpha: 1)
        return label
    }()
    
    
    lazy var textFieldCode: UITextField = {
        let label = UITextField()
        label.placeholder = "  Write auth code"
        label.text = ""
        label.backgroundColor = UIColor(red: 246/255, green: 246/255, blue: 246/255, alpha: 1)
        label.layer.cornerRadius = 8
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = UIColor(red: 189/255, green: 189/255, blue: 189/255, alpha: 1)
        label.isHidden = true
        return label
    }()
    
    lazy var buttonGetCode : UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 93/255, green: 176/255, blue: 117/255, alpha: 1)
        button.setTitle("Get auth code", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 25
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(buttonCodeDidSelected), for: .touchUpInside)
        return button
    }()
    
    lazy var buttonLogin : UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 93/255, green: 176/255, blue: 117/255, alpha: 1)
        button.setTitle("Log In", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 25
        button.translatesAutoresizingMaskIntoConstraints = false
        button.isHidden = true
        button.addTarget(self, action: #selector(buttonLoginDidSelected), for: .touchUpInside)
        return button
    }()
    
    func setViews() {
        self.backgroundColor = .white
        self.addSubview(loginLabel)
        self.addSubview(textFieldNumber)
        self.addSubview(textFieldCode)
        self.addSubview(buttonGetCode)
        self.addSubview(buttonLogin)
    }
    
    func loadView(controller: ViewController) {
        self.controller = controller
        self.setViews()
        self.setConstraints()
    }
    
    func setConstraints() {
        self.setLoginConstraints()
        self.setTextFieldNumberConstraints()
        self.setTextFieldCodeConstraints()
        self.setButtonCodeConstraints()
        self.setButtonLoginConstraints()
    }
    
    
    func setLoginConstraints() {
        loginLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            loginLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 60),
            loginLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
    }
    
    func setTextFieldNumberConstraints() {
        textFieldNumber.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            textFieldNumber.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 39),
            textFieldNumber.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            textFieldNumber.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            textFieldNumber.heightAnchor.constraint(equalToConstant: 50),
            textFieldNumber.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16)
        ])
    }
    
    func setTextFieldCodeConstraints() {
        textFieldCode.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            textFieldCode.topAnchor.constraint(equalTo: textFieldNumber.bottomAnchor, constant: 9),
            textFieldCode.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            textFieldCode.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            textFieldCode.heightAnchor.constraint(equalToConstant: 50),
            textFieldCode.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16)
        ])
    }
    
    func setButtonCodeConstraints() {
        buttonGetCode.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonGetCode.topAnchor.constraint(equalTo: textFieldNumber.bottomAnchor, constant: 159),
            buttonGetCode.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            buttonGetCode.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonGetCode.heightAnchor.constraint(equalToConstant: 51),
            buttonGetCode.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16)
        ])
    }
    
    func setButtonLoginConstraints() {
        buttonLogin.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonLogin.topAnchor.constraint(equalTo: buttonGetCode.bottomAnchor, constant: 16),
            buttonLogin.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            buttonLogin.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonLogin.heightAnchor.constraint(equalToConstant: 51),
            buttonLogin.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16)
        ])
    }
    
    @objc
    func buttonCodeDidSelected(sender: UIButton) {
        controller?.buttonCodeOnTouch()
    }
    
    @objc
    func buttonLoginDidSelected(sender: UIButton) {
        controller?.buttonLoginOnTouch()
    }
}
