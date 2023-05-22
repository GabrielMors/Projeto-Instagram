//
//  HomeViewModel.swift
//  Projeto-Instagram
//
//  Created by Gabriel Mors  on 10/04/23.
//

import UIKit

class HomeViewModel {

    private var posts = [Posts(profileImage: "perfil.vitor", userName: "Mini Chan", postImage: "post-vitor"),
                        Posts(profileImage: "perfil.fer", userName: "Fernando", postImage: "post.fer"),
                        Posts(profileImage: "perfil.chico", userName: "Chico", postImage: "post-chico"),
                        Posts(profileImage: "perfil.marada", userName: "Marada", postImage: "post-marada"),
                        Posts(profileImage: "perfil.diego", userName: "Diego", postImage: "post-diego"),
                        Posts(profileImage: "perfil.enzo", userName: "Enzo", postImage: "post-enzo"),
                         Posts(profileImage: "perfil.samuca", userName: "Samuel", postImage: "post-samuca"),
                        Posts(profileImage: "perfil.dasa", userName: "Dasaev", postImage: "post-dasa"),
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
                         Stories(Image: "perfil.enzo", userName: "Enzo"),
                         Stories(Image: "perfil.chico", userName: "Chico"),
                         Stories(Image: "perfil.marada", userName: "Maradona"),
                         Stories(Image: "perfil.fer", userName: "Fernando"),
                         Stories(Image: "perfil.samuca", userName: "Samuel"),
                         Stories(Image: "perfil.dasa", userName: "Dasaev"),
                         Stories(Image: "perfil.arthur", userName: "Arthurito"),
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
