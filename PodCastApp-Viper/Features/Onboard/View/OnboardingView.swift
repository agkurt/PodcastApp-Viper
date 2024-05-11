//
//  OnboardingView.swift
//  PodCastApp-Viper
//
//  Created by Ahmet Göktürk Kurt on 11.05.2024.
//

import UIKit
import SnapKit

protocol OnboardingViewProtocol {
    func onTappedListenButton()
}

class OnboardingView : UIView {
    
    /// async bir işlem olmadığı için weak delegate yapmadım. 
    var delegate: OnboardingViewProtocol?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let podcastTitle:String = "Podcaster"
    private let profileSubTitle:String = "Discover your favorite podcast & listen to them anywhere"
    private let listingTitle: String = "Start Listing"
    
    private lazy var profileImage: UIImageView = {
        let imageView = UIImageView(image: .podcast)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    private lazy var profileTitleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = podcastTitle
        titleLabel.font = Theme.defaultTheme.themeFont.bodyFont
        return titleLabel
    }()
    
    private lazy var profileSubTitleLabel:UILabel = {
        let label = UILabel()
        label.text = profileSubTitle
        label.font = Theme.defaultTheme.themeFont.headlineFont
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    private lazy var listingButton:UIButton = {
        let button = UIButton()
        button.setTitle(listingTitle, for: .normal)
        button.setTitleColor(Theme.defaultTheme.themeColor.textColor, for: .normal)
        button.backgroundColor = Theme.defaultTheme.themeColor.buttonColor
        button.layer.cornerRadius = Radius.medium.rawValue
        button.addAction(listingButtonTapped, for: .touchUpInside)
        return button
    }()
    
    // computed da çevir
    lazy var listingButtonTapped:UIAction = UIAction { _ in
        self.delegate?.onTappedListenButton()
    }
    
    private func setupUI() {
        backgroundColor = Theme.defaultTheme.themeColor.backgroundColor
        addSubview(profileImage)
        addSubview(profileSubTitleLabel)
        addSubview(profileTitleLabel)
        addSubview(listingButton)
        
        profileImage.snp.makeConstraints { make in
            let offsetFromTop = frame.height * 0.2
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(offsetFromTop)
            
            make.width.equalTo(self.snp.width).multipliedBy(0.8)
            make.height.equalTo(self.snp.height).multipliedBy(0.3)
        }
        
        profileTitleLabel.snp.makeConstraints { make in
            make.top.equalTo(profileImage.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
        }
        
        profileSubTitleLabel.snp.makeConstraints { make in
            make.top.equalTo(profileTitleLabel.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.centerX.equalToSuperview()
        }
        
        listingButton.snp.makeConstraints { make in
            make.bottom.equalTo(safeAreaLayoutGuide.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
            make.height.equalTo(ButtonSize.medium.rawValue)
            make.width.equalToSuperview().multipliedBy(0.8)
        }
        
    }
    
}




