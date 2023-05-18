//
//  HomeViewModel.swift
//  Projeto-Instagram
//
//  Created by Gabriel Mors  on 10/04/23.
//

import UIKit

class HomeViewModel {

    private var posts = [Posts(profileImage: "perfil.fer", userName: "Fernando", postImage: "post.fer"),
                        Posts(profileImage: "perfil.fer", userName: "Fernando", postImage: "post.fer"),
                        Posts(profileImage: "perfil.fer", userName: "Fernando", postImage: "post.fer"),
                        Posts(profileImage: "perfil.fer", userName: "Fernando", postImage: "post.fer"),
                        Posts(profileImage: "perfil.fer", userName: "Fernando", postImage: "post.fer"),
                        Posts(profileImage: "perfil.fer", userName: "Fernando", postImage: "post.fer"),
                        Posts(profileImage: "perfil.fer", userName: "Fernando", postImage: "post.fer"),
                        Posts(profileImage: "perfil.fer", userName: "Fernando", postImage: "post.fer")
    
    ]
    
    public var getListPosts: [Posts] {
        posts
    }
    
    private var story = [Stories(Image: "foto.perfil", userName: "Add Story"),
                         Stories(Image: "perfil.fer", userName: "Fernando"),
                         Stories(Image: "foto03", userName: "Marcelo"),
                         Stories(Image: "foto04", userName: "Tiago"),
                         Stories(Image: "foto05", userName: "Vitor"),
                         Stories(Image: "foto06", userName: "Douglas"),
                         Stories(Image: "foto07", userName: "Pablo"),
                         Stories(Image: "foto08", userName: "Caio"),
                         Stories(Image: "foto01", userName: "gustavo"),
                         Stories(Image: "foto02", userName: "Jhonny")
    
    ]
  
    public var getListStory:[Stories] {
        story
    }
    
    public var numberOfItems: Int {
        2
    }
    
    public func sizeForItem(indexPath: IndexPath, frame: CGRect) -> CGSize {
        if indexPath.row == 0 {
            return CGSize(width: 120 , height: frame.height)
        } else {
            return CGSize(width: frame.width - 120, height: frame.height)
        }
    }
    
    
}
