//
//  PartyRock.swift
//  PartyRock
//
//  Created by Allen Boynton on 4/17/17.
//  Copyright © 2017 ABtech Applications. All rights reserved.
//

import Foundation


class PartyRock {
    
    private var _imageURL: String!
    private var _videoURL: String!
    private var _videoTitle: String!
    
    var imageURL: String {
        if _imageURL == nil {
            _imageURL = ""
        }
        return _imageURL
    }
    
    var videoURL: String {
        if _videoURL == nil {
            _videoURL = ""
        }
        return _videoURL
    }
    
    var videoTitle: String {
        if _videoTitle == nil {
            
        }
        return _videoTitle
    }
    
    init(imageURL: String, videoURL: String, videoTitle: String) {
        _imageURL = imageURL
        _videoURL = videoURL
        _videoTitle = videoTitle
    }
}
