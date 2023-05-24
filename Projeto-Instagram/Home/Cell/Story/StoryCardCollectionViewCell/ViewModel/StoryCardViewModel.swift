//
//  StoryCardViewModel.swift
//  Projeto-Instagram
//
//  Created by Gabriel Mors  on 10/04/23.
//

import UIKit

class StoryCardViewModel {

    private var listStory: [Stories]
    
    init(listaStory: [Stories]) {
        self.listStory = listaStory
    }
    
    public var numberOfItems: Int {
        listStory.count
    }
    
    public func loudCurrentStory(indexPath: IndexPath) -> Stories {
        listStory[indexPath.row]
    }
    
}




