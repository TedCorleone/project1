//
//  SwiftUIVideoView.swift
//  Netflix
//
//  Created by terry on 2022/11/27.
//

import SwiftUI
import AVKit

struct SwiftUIVideoView: View {
    var url: URL
    
    private var player: AVPlayer {
//        AVPlayer(url: url)
        AVPlayer(url: URL(string: "https://bit.ly/swswift")!)
      
    }
    
    var body: some View {
        VideoPlayer(player: player)
    }
}

struct SwiftUIVideoView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIVideoView(url: exampleVideoURL)
    }
}
