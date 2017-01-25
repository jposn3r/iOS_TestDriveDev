//
//  Movie.swift
//  FilmFest
//
//  Created by Jacob Posner on 1/24/17.
//  Copyright © 2017 Kaizen Human. All rights reserved.
//

import Foundation

struct Movie: Equatable {
    let title: String
    let releaseDate: String?
    
    init(title: String, releaseDate: String? = nil) {
        self.title = title
        self.releaseDate = releaseDate
    }
    
    static func==(lhs: Movie, rhs: Movie) -> Bool{
        if lhs.title != rhs.title {return false}
        if lhs.releaseDate != rhs.releaseDate {return false}
        return true
    }
}
