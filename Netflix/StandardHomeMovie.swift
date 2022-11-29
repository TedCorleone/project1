//
//  StandardHomeMovie.swift
//  Netflix
//
//  Created by terry on 2022/11/27.
//

import SwiftUI

struct StandardHomeMovie: View {
    var movie: Movie
    
    var body: some View {
        Image(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
    }
}

struct StandardHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovie(movie: exampleMovie1)
    }
}
