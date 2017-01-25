//
//  ViewController.swift
//  FilmFest
//
//  Created by Jacob Posner on 1/24/17.
//  Copyright © 2017 Kaizen Human. All rights reserved.
//

import UIKit
import ChameleonFramework

class MovieLibraryViewController: UIViewController {
    @IBOutlet weak var movieTableView: UITableView!
    @IBOutlet var dataService: MovieLibraryDataService!

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
     
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = GradientColor(.radial, frame: self.view.frame,
                                                  colors: [UIColor.flatSkyBlue(), UIColor.flatNavyBlue()])
        
        self.movieTableView.dataSource = dataService
        self.movieTableView.delegate = dataService
        
    }

    

}

