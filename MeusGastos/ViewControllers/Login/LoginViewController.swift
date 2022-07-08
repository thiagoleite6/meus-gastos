//
//  LoginViewController.swift
//  MeusGastos
//
//  Created by Thiago Almeida Leite on 06/07/22.
//

import UIKit

final class LoginViewController: UIViewController, LoginViewDelegate {
   
    let loginView = LoginView()
    
    //Closure
    var onRegisterTap: (() -> Void)?
    
    weak private var coordinator: LoginCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = loginView
        view.backgroundColor = .white
        loginView.delegate = self
        
        // Closure
        loginView.onRegisterTap = {
            self.onRegisterTap?()
        }
    }
    
    
    
    func handleRegisterButton() {
        print("Ação disparada do delegate")
    }
}
