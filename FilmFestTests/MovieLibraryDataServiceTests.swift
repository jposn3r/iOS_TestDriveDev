//
//  MovieLibraryDataServiceTests.swift
//  FilmFest
//
//  Created by Jacob Posner on 1/25/17.
//  Copyright © 2017 Kaizen Human. All rights reserved.
//

import XCTest
@testable import FilmFest
class MovieLibraryDataServiceTests: XCTestCase {
    
    var sut: MovieLibraryDataService!
    var tableView: UITableView!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = MovieLibraryDataService()
        sut.movieManager = MovieManager()
        
        tableView = UITableView()
        tableView.dataSource = sut
        tableView.delegate = sut
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testTableViewSectionCount_ShouldBeTwo() {
        let sectionCount = tableView.numberOfSections
        
        XCTAssertEqual(sectionCount, 2)
        
    }
    
    func testRowCountInSectionOne_ShouldEqualMoviesToSeeCount() {
        
        sut.movieManager?.addMovieToSee(movie: Movie(title: "Action Adventure"))
        XCTAssertEqual(tableView.numberOfRows(inSection: 0), 1)

        
        sut.movieManager?.addMovieToSee(movie: Movie(title: "Adventure Horror"))
        
        tableView.reloadData()
        
        XCTAssertEqual(tableView.numberOfRows(inSection: 0), 2)


    }
    
    
}
