//
//  Episode.swift
//  Netflix
//
//  Created by terry on 2022/11/27.
//

import Foundation

struct Episode: Identifiable {
    var id = UUID().uuidString
    
    var name: String
    var season: Int
    var episodeNumber: Int
    var thumbnailImageURLString: String
    var description: String
    var length: Int
    
    var videoURL: URL
    
    var thumbnailURL: String {
        return thumbnailImageURLString
    }
}
