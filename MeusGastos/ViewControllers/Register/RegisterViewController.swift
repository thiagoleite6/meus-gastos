//
//  RegisterViewController.swift
//  MeusGastos
//
//  Created by Thiago Almeida Leite on 07/07/22.
//

import UIKit

final class RegisterViewController: UIViewController {

    let registerView = RegisterView()
    
    var backButtonTapped: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadView()
        
        registerView.onBackButtonTapped = {
            self.backButtonTapped?()
        }
    }
    
    internal override func loadView() {
        view = registerView
        view.backgroundColor = .white
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
}
