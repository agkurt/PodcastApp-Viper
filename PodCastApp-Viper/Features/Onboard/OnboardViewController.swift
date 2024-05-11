//
//  OnboardViewController.swift
//  PodCastApp-Viper
//
//  Created by Ahmet Göktürk Kurt on 11.05.2024.
//

import UIKit
import SnapKit

protocol OnboardingViewControllerProtocol: AnyObject {
    
}

class OnboardViewController: UIViewController,OnboardingViewControllerProtocol {
    
    var presenter: OnboardPresenterProtocol?
    
    private var onboardingView = OnboardingView()
    
    /// viewdidload öncesi
    override func loadView() {
        super.loadView()
        onboardingView = OnboardingView(frame: self.view.frame)
        view.addSubview(onboardingView)
        onboardingView.delegate = self
    }
    /// ekran yüklendikten sonra
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension OnboardViewController: OnboardingViewProtocol {
    func onTappedListenButton() {
        presenter?.checkAndNavigateTestPage()
    }
}

#Preview {
    OnboardViewController()
}
