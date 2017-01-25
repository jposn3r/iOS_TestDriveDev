//
//  MovieManager.swift
//  FilmFest
//
//  Created by Jacob Posner on 1/24/17.
//  Copyright © 2017 Kaizen Human. All rights reserved.
//

import Foundation

class MovieManager {
    var moviesToSeeCount = 0
    var moviesSeenCount = 0
    
    var moviesToSeeArray = [Movie]()
    
    func addMovieToSee(movie: Movie) {
        moviesToSeeCount += 1
        moviesToSeeArray.append(movie)
    }
    
    func movieAtIndex(index: Int) -> Movie {
        return moviesToSeeArray[0]
    }
}
