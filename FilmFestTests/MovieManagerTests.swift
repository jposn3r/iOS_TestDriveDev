 //
//  MovieManagerTests.swift
//  FilmFest
//
//  Created by Jacob Posner on 1/24/17.
//  Copyright © 2017 Kaizen Human. All rights reserved.
//

import XCTest

class MovieManagerTests: XCTestCase {
    
    var movieManager: MovieManager!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        movieManager = MovieManager()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testMoviesToSeeCount_ReturnsZero() {
        XCTAssertEqual(movieManager.moviesToSeeCount, 0)
    } 
    
    func testMoviesSeenCount_ReturnsZero() {
        XCTAssertEqual(movieManager.moviesSeenCount, 0)
     }
    
    func testMoviesToSeeCount_ShouldBeOneAfterMovieAdded() {
        movieManager.addMovieToSee(movie: Movie(title: "Moana") )
        XCTAssertEqual(movieManager.moviesToSeeCount, 1)
    }
    
    func testMovieAtIndex_ReturnsLastAddedMovie() {
        let movie = Movie(title: "Action Thriller Boss Movie")
        movieManager.addMovieToSee(movie: movie)
        
        let movieReturnedAtIndex = movieManager.movieAtIndex(index: 0)
        XCTAssertEqual(movie.title, movieReturnedAtIndex.title)
    }
    
    func testFavoriteMovie_UpdatesMoviesSeenAndMoviesToSeeCounts() {
        let movie = Movie(title: "Action Adventure of Destiny", releaseDate: "1/1/1")
        movieManager.addMovieToSee(movie: movie)
        
        movieManager.favoriteMovieAtIndex(index: 0)
        
        XCTAssertEqual(movieManager.moviesToSeeCount, 0)
        XCTAssertEqual(movieManager.moviesSeenCount, 1)
        
    }
    
    func testFavoriteMovie_ShouldRemoveFromMoviesToSeeArray() {
        let movie1 = Movie(title: "Movie 1")
        let movie2 = Movie(title: "Movie 2")
        
        movieManager.addMovieToSee(movie: movie1)
        movieManager.addMovieToSee(movie: movie2)
        movieManager.favoriteMovieAtIndex(index: 0)

        XCTAssertEqual(movieManager.movieAtIndex(index: 0).title, movie2.title)
    }
    
    func testFavoriteMovieAtIndex_ShouldReturnFavoritedMovie() {
        let movie = Movie(title: "Thriller")
        
        movieManager.addMovieToSee(movie: movie)
        movieManager.favoriteMovieAtIndex(index: 0)
        let returnedMovie = movieManager.favoritedMovieAtIndex(index: 0)
        
        XCTAssertEqual(movie.title, returnedMovie.title)
        
    }
    
    
    func testMovieTitlesAreEqual_ShouldReturnTrue() {
        let movie1 = Movie(title: "Action")
        let movie2 = Movie(title: "Action")
        
        XCTAssertEqual(movie1, movie2)
    }
    
    func testMovieTitlesAreNotEqual_ShouldReturnFalse() {
        let movie1 = Movie(title: "Action")
        let movie2 = Movie(title: "Not Action")
        
        XCTAssertNotEqual(movie1, movie2)
    }
    
    func testMovieReleaseDatesAreEqual_ShouldReturnTrue() {
        let movie1 = Movie(title: "Action", releaseDate: "0/0/0")
        let movie2 = Movie(title: "Action", releaseDate: "0/0/0")
        
        XCTAssertEqual(movie1, movie2)
    }
    
    func testMovieReleaseDatesAreNotEqual_ShouldReturnFalse() {
        let movie1 = Movie(title: "Action", releaseDate: "0/0/0")
        let movie2 = Movie(title: "Action", releaseDate: "1/1/1")
        
        XCTAssertNotEqual(movie1, movie2)
    }
    
    
    
    
}
