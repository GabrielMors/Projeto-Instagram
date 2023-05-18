//
//  PostCardCollectionViewCell.swift
//  Projeto-Instagram
//
//  Created by Gabriel Mors  on 17/05/23.
//

import UIKit

class PostCardCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: PostCardCollectionViewCell.self)
    
    private var screen: PostCardCollectionViewCellScreen = PostCardCollectionViewCellScreen()
    private var viewModel: PostCardViewModel?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configScreen()
        configProtocol()
    }
    
    private func configProtocol() {
        screen.configProtocolsCollectionView(delegate: self, dataSource: self)
    }
    
    private func configScreen() {
        screen.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(screen)
        screen.pin(to: contentView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setupCell(listPosts: [Posts]) {
        viewModel = PostCardViewModel(listPosts: listPosts)
    }
    
}

extension PostCardCollectionViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        viewModel?.numberOfItems ?? 0 
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 450)
    }
}
