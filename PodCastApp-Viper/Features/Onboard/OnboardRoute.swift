//
//  OnboardRoute.swift
//  PodCastApp-Viper
//
//  Created by Ahmet Göktürk Kurt on 11.05.2024.
//

import UIKit

protocol OnboardRouteProtocol:AnyObject {
    func navigateToHome(from view:OnboardingViewControllerProtocol?)
}

final class OnboardRoute:OnboardRouteProtocol {
    
    func navigateToHome(from view:OnboardingViewControllerProtocol?) {
        guard let viewController = view as? UIViewController else { return }
        viewController.navigationController?.pushViewController(TestViewController(), animated: true)
    }
 
    static func createMyModule() -> OnboardViewController {
        let view = OnboardViewController()
        let router = OnboardRoute()
        let presenter =  OnboardPresenter(router: router,view: view)
        view.presenter = presenter
        
        return view
    }
}

