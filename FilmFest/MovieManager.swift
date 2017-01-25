//
//  MovieManager.swift
//  FilmFest
//
//  Created by Jacob Posner on 1/24/17.
//  Copyright © 2017 Kaizen Human. All rights reserved.
//

import Foundation

class MovieManager {
    var moviesToSeeCount : Int {return moviesToSeeArray.count}
    var moviesSeenCount : Int {return moviesSeenArray.count}
    
    var moviesToSeeArray = [Movie]()
    var moviesSeenArray = [Movie]()
    
    func addMovieToSee(movie: Movie) {
        moviesToSeeArray.append(movie)
    }
    
    func movieAtIndex(index: Int) -> Movie {
        return moviesToSeeArray[0]
    }
    
    func favoriteMovieAtIndex(index: Int) {
        guard index < moviesToSeeCount else {return}
        
        let favoritedMovie = moviesToSeeArray.remove(at: index)
        moviesSeenArray.append(favoritedMovie)
    }
    
    func favoritedMovieAtIndex(index: Int) -> Movie {
        return moviesSeenArray[index]
    }
}
