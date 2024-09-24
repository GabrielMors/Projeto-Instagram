//
//  StoryCardCollectionViewCell.swift
//  Projeto-Instagram
//
//  Created by Gabriel Mors  on 10/04/23.
//

import UIKit

class StoryCardCollectionViewCell: UICollectionViewCell {
    
    static var identifier: String = String(describing: StoryCardCollectionViewCell.self)
    
    private var screen: StoryCardCollectionViewCellScreen = StoryCardCollectionViewCellScreen()
    private var viewModel: StoryCardViewModel?
    
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
    
    public func setupStory(listStory: [Stories]) {
        viewModel = StoryCardViewModel(listaStory: listStory)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension StoryCardCollectionViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        viewModel?.numberOfItems ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let viewModel = viewModel else { return UICollectionViewCell() }
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StoryCollectionViewCell.identifier, for: indexPath) as? StoryCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.setupCell(data: viewModel.loudCurrentStory(indexPath: indexPath), indexPath: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width, height: 120)
    }
    
}
