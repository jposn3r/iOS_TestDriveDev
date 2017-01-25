//
//  MovieStructTest.swift
//  FilmFest
//
//  Created by Jacob Posner on 1/24/17.
//  Copyright © 2017 Kaizen Human. All rights reserved.
//

import XCTest

@testable import FilmFest
class MovieStructTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInit_SetMovieTitle() {
        let movie = Movie(title: "Summer Blockbuster")
        XCTAssertEqual(movie.title, "Summer Blockbuster")
    }
    
    func testInit_SetMovieTitleAndReleaseDate() {
        let movie = Movie(title: "Romantic Comedy", releaseDate: "02/10/1985")
        XCTAssertEqual(movie.releaseDate, "02/10/1985")

    }
    
}
