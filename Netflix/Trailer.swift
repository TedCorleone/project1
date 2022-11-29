//
//  Trailer.swift
//  Netflix
//
//  Created by terry on 2022/11/27.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: String
}
