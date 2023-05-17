//
//  StoryCardViewModel.swift
//  Projeto-Instagram
//
//  Created by Gabriel Mors  on 10/04/23.
//

import UIKit

class StoryCardViewModel {

    private var listaStory: [Stories]
    
    init(listaStory: [Stories]) {
        self.listaStory = listaStory
    }
    
    public var numberOfItems: Int {
        listaStory.count
    }
    
    func loudCurrentStory(indexPath: IndexPath) -> Stories {
        listaStory[indexPath.row]
    }
    
}




