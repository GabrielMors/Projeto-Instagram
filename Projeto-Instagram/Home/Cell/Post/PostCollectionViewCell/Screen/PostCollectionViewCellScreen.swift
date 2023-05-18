//
//  PostCollectionViewCellScreen.swift
//  Projeto-Instagram
//
//  Created by Gabriel Mors  on 18/05/23.
//

import UIKit

class PostCollectionViewCellScreen: UIView {
    
    lazy var cardView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.setCardShadow()
        view.layer.cornerRadius = 15
        view.clipsToBounds = true
        
        return view
    }()
    
    lazy var likeImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage (named: "red-heart")
        image.contentMode = .scaleAspectFill
        let tap = UITapGestureRecognizer (target: self, action: #selector (tappedLikeImageView))
        tap.numberOfTapsRequired = 1
        image.addGestureRecognizer(tap)
        image.isUserInteractionEnabled = true
        image.isHidden = true
        image.isHidden = false
        
        return image
    }()
    
    lazy var profileImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.layer.cornerRadius = 15
        image.image = UIImage(named: "perfil.fer")
        
        return image
    }()
    
    
    @objc func tappedLikeImageView() {
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configAddSubVIews()
        configConstraints()
    }
    
    private func configAddSubVIews() {
        addSubview(cardView)
        cardView.addSubview(likeImageView)
        cardView.addSubview(profileImageView)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            
            cardView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 15),
            cardView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -10),
            cardView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            cardView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            
            likeImageView.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 19),
            likeImageView.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -20),
            likeImageView.heightAnchor.constraint(equalToConstant: 25),
            likeImageView.widthAnchor.constraint(equalToConstant: 25),
            
            profileImageView.heightAnchor.constraint(equalToConstant: 30),
            profileImageView.widthAnchor.constraint(equalToConstant: 30),
            profileImageView.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 17),
            profileImageView.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 20),
            
            
        ])
        
    }
    
}
