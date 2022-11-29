//
//  GlobalHelpers.swift
//  Netflix
//
//  Created by terry on 2022/11/27.
//

import Foundation
import SwiftUI

let exampleVideoURL = URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4")!

let exampleImageURL = "b5"
let exampleImageURL2 = "b6"
let exampleImageURL3 = "b7"

var randomExampleImageURL: String {
    return [exampleImageURL, exampleImageURL2, exampleImageURL3].randomElement() ?? exampleImageURL
}

let exampleTrailer1 = Trailer(name: "Season 3 Trailer", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL)
let exampleTrailer2 = Trailer(name: "The Hero's Journey", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL2)
let exampleTrailer3 = Trailer(name: "The Mysterious", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL3)

let exampleTrailers = [exampleTrailer1, exampleTrailer2, exampleTrailer3]

let episode1 = Episode(
    name: "Beginnings and Endings",
    season: 1,
    episodeNumber: 1,
    thumbnailImageURLString: "b1",
    description: "In 2052, Jones learns that most of Winden perished in an apocalyptic event.",
    length: 53,
    videoURL: exampleVideoURL)

let episode2 = Episode(
    name: "Dark Matter",
    season: 1,
    episodeNumber: 2,
    thumbnailImageURLString: "b2",
    description: "In 2052, Jones learns that most of Winden perished in an apocalyptic event.",
    length: 54,
    videoURL: exampleVideoURL)

let episode3 = Episode(
    name: "Ghosts",
    season: 1,
    episodeNumber: 3,
    thumbnailImageURLString: "b3",
    description: "In 2052, Jones learns that most of Winden perished in an apocalyptic event.",
    length: 56,
    videoURL: exampleVideoURL)

let episode4 = Episode(
    name: "Beginnings and Endings",
    season: 2,
    episodeNumber: 1,
    thumbnailImageURLString: "b4",
    description: "In 2052, Jones learns that most of Winden perished in an apocalyptic event.",
    length: 53,
    videoURL: exampleVideoURL)

let episode5 = Episode(
    name: "Dark Matter",
    season: 2,
    episodeNumber: 2,
    thumbnailImageURLString: "b5",
    description: "In 2052, Jones learns that most of Winden perished in an apocalyptic event.",
    length: 54,
    videoURL: exampleVideoURL)

let episode6 = Episode(
    name: "Ghosts",
    season: 2,
    episodeNumber: 3,
    thumbnailImageURLString: "b6",
    description: "In 2052, Jones learns that most of Winden perished in an apocalyptic event.",
    length: 56,
    videoURL: exampleVideoURL)

var allExampleEpisodes = [episode1, episode2, episode3, episode4, episode5, episode6]





let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "DARK",
    thumbnailURL: "a1",
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 2,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Terry Wang, Eric Yang, hongfei Gu",
    cast: "Terry Wang,",
    moreLikeThisMovies:  [exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7],
    episodes: allExampleEpisodes,
    trailers: exampleTrailers)
let exampleMovie2 = Movie(
    id: UUID().uuidString,
    name: "Traverlers",
    thumbnailURL: "a2",
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 2,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Terry Wang, Eric Yang, hongfei Gu",
    cast: "Terry Wang,",
    moreLikeThisMovies: [exampleMovie3, exampleMovie4],
    episodes: allExampleEpisodes,
    promotionHeadline: "Best Rated Show",
    trailers: exampleTrailers)
let exampleMovie3 = Movie(
    id: UUID().uuidString,
    name: "Community",
    thumbnailURL: "a3",
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 3,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Terry Wang, Eric Yang, hongfei Gu",
    cast: "Terry Wang,",
    moreLikeThisMovies: [exampleMovie6],
    episodes: allExampleEpisodes,
    trailers: exampleTrailers)
let exampleMovie4 = Movie(
    id: UUID().uuidString,
    name: "Alone",
    thumbnailURL: "a11",
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 4,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Terry Wang, Eric Yang, hongfei Gu",
    cast: "Terry Wang,",
    moreLikeThisMovies: [exampleMovie6],
    episodes: allExampleEpisodes,
    promotionHeadline: "New episodes coming soon",
    trailers: exampleTrailers)
let exampleMovie5 = Movie(
    id: UUID().uuidString,
    name: "Hannibal",
    thumbnailURL: "a12",
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 5,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Terry Wang, Eric Yang, hongfei Gu",
    cast: "Terry Wang,",
    moreLikeThisMovies: [exampleMovie3, exampleMovie4, exampleMovie2, exampleMovie6],
    episodes: allExampleEpisodes,
    trailers: exampleTrailers)
let exampleMovie6 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumbnailURL: "a13",
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 6,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Terry Wang, Eric Yang, hongfei Gu",
    cast: "Terry Wang,",
    moreLikeThisMovies: [],
    episodes: allExampleEpisodes,
    promotionHeadline: "Watch Season 6 Now",
    trailers: exampleTrailers)

let exampleMovie7 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumbnailURL: "a5",
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 6,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Terry Wang, Eric Yang, hongfei Gu",
    cast: "Terry Wang,",
    moreLikeThisMovies: [],
    episodes: allExampleEpisodes,
    promotionHeadline: "Watch Season 6 Now",
    trailers: exampleTrailers)

var exampleMovies: [Movie] {
    return  [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6].shuffled()
}

let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "Beginnings and Endings", description: "In 2052, Jones learns that most of Winden perished in an apocalyptic event.", season: 2, episode: 1)


extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]),
        startPoint: .top,
        endPoint: .bottom
    )
}

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
