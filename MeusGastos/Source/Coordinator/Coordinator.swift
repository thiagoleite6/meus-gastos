//
//  Coordinator.swift
//  MeusGastos
//
//  Created by Thiago Almeida Leite on 06/07/22.
//

import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator]? { get set }
    var parentCoordinator: Coordinator? { get set }
    var navigationController: UINavigationController { get set }

    func start()
    func childDidFinish(_ child: Coordinator)
}
