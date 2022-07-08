//
//  LoginCoordinator.swift
//  MeusGastos
//
//  Created by Thiago Almeida Leite on 06/07/22.
//

import UIKit

class LoginCoordinator: Coordinator {
    var parentCoordinator: Coordinator?
    
    func childDidFinish(_ child: Coordinator) {
        
    }
    
    var childCoordinators: [Coordinator]?
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = LoginViewController()
        navigationController.pushViewController(viewController, animated: true)
        
        // Closure
        viewController.onRegisterTap = {
            self.showRegisterScreen()
        }
    }
    
    private func showRegisterScreen() {
        let registerCoordinator = RegisterCoordinator(navigationController: navigationController)
        registerCoordinator.start()
    }
}
