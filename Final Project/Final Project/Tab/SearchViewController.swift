//
//  NotesViewController.swift
//  Final Project
//
//  Created by Jiayu Han on 11/14/22.
//

import UIKit

class SearchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationItem.searchController = searchController
        title = "Search"
    }
    private let searchController: UISearchController = {
        let controller = UISearchController(searchResultsController: Search())
        controller.searchBar.placeholder = "Search for a phrase"
        controller.searchBar.searchBarStyle = .minimal
        return controller
    }()
}
