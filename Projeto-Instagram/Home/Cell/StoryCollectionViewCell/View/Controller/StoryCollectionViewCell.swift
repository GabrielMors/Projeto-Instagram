//
//  StoryCollectionViewCell.swift
//  Projeto-Instagram
//
//  Created by Gabriel Mors  on 17/05/23.
//

import UIKit

class StoryCollectionViewCell: UICollectionViewCell {
    
    static var identifier: String = String(describing: StoryCollectionViewCell.self)
    
  //  private var screen: StoryCardCollectionViewCellScreen = StoryCardCollectionViewCellScreen()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        configScreen()
//        screen.configProtocolsCollectionView(delegate: self, dataSource: self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
