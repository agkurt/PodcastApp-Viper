//
//  OnboardPresenter.swift
//  PodCastApp-Viper
//
//  Created by Ahmet Göktürk Kurt on 11.05.2024.
//

import Foundation
// her şey burada başlıcak.

protocol OnboardPresenterProtocol {
    
    var router:OnboardRouteProtocol? { get set }
    var view:OnboardingViewControllerProtocol? { get set}
    
    func checkAndNavigateTestPage()
}

final class OnboardPresenter:OnboardPresenterProtocol {
    
    var router: OnboardRouteProtocol?
    var view:OnboardingViewControllerProtocol?
    
    init(router: OnboardRouteProtocol? = nil, view: OnboardingViewControllerProtocol? = nil) {
        self.router = router
        self.view = view
    }
    
    func checkAndNavigateTestPage() {
        router?.navigateToHome(from: view)
    }

}
 
