//
//  HeroHeaderUIView.swift
//  New
//
//  Created by Rudresh Uppin on 21/10/22.
//

import UIKit

class HeroHeaderUIView: UIView {
    
   // MARK: - private variables
    
    private let heroImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "heroImage")
        return imageView
    }()
    
    
    private let playButton: UIButton = {
        let button = UIButton()
        button.setTitle("Play", for: .normal)
        button.layer.borderColor = UIColor.darkGray.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 5
        button.setTitleColor(.darkGray, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    private let downloadButton: UIButton = {
        let button = UIButton()
        button.setTitle("Download", for: .normal)
        button.layer.borderColor = UIColor.darkGray.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 5
        button.setTitleColor(.darkGray, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    // MARK: - override init

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(heroImageView)
        addGradientLayer()
        
        addSubview(playButton)
        addSubview(downloadButton)

        applyConstraints()
        
    }
    
    // MARK: - ViewLayourSubViews

    override func layoutSubviews() {
        super.layoutSubviews()
        heroImageView.frame = bounds
   
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    // MARK: - Private Methods

    private func addGradientLayer(){
        let gradientLayerColor = CAGradientLayer()
        gradientLayerColor.colors = [
            UIColor.clear.cgColor,
            UIColor.systemBackground.cgColor
        ]
        gradientLayerColor.frame = bounds
        layer.addSublayer(gradientLayerColor)
        
    }
    
    private func applyConstraints(){
        let playButtonConstraints = [
            playButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            playButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
            playButton.widthAnchor.constraint(equalToConstant: 120),
        ]
   
        let downloadButtonConstraints = [
            downloadButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            downloadButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
            downloadButton.widthAnchor.constraint(equalToConstant: 120),
        ]
        
        NSLayoutConstraint.activate(playButtonConstraints)
        NSLayoutConstraint.activate(downloadButtonConstraints)
        
    }
    
}
