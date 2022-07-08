//
//  RegisterCoordinator.swift
//  MeusGastos
//
//  Created by Thiago Almeida Leite on 07/07/22.
//

import UIKit

class RegisterCoordinator: Coordinator {
    var parentCoordinator: Coordinator?
    
    func childDidFinish(_ child: Coordinator) {
        
    }
    
    var childCoordinators: [Coordinator]?
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let registerViewController = RegisterViewController()
        navigationController.pushViewController(registerViewController, animated: true)
        registerViewController.backButtonTapped = {
            self.showLogin()
        }
    }
    
    private func showLogin() {
        navigationController.popToRootViewController(animated: true)
    }
    
}
