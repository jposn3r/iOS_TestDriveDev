//
//  MovieLibraryDataService.swift
//  FilmFest
//
//  Created by Jacob Posner on 1/25/17.
//  Copyright © 2017 Kaizen Human. All rights reserved.
//

import UIKit

class MovieLibraryDataService: NSObject, UITableViewDelegate, UITableViewDataSource {
    
    var movieManager: MovieManager!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let movieManager = movieManager else {return 0}
        return movieManager.moviesToSeeCount
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        return cell
    }
}
