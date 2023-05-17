//
//  StoryCollectionViewCellScreen.swift
//  Projeto-Instagram
//
//  Created by Gabriel Mors  on 17/05/23.
//

import UIKit

class StoryCollectionViewCellScreen: UIView {

    lazy var profileImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.layer.cornerRadius = 35
        
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(profileImageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            profileImageView.widthAnchor.constraint(equalToConstant: 70),
            profileImageView.heightAnchor.constraint(equalToConstant: 70),
            profileImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            profileImageView.topAnchor.constraint(equalTo: topAnchor, constant: 15),
        
        ])
        
        
    }
    
}
