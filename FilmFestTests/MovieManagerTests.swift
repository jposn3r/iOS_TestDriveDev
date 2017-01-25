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
    
}
