//
//  ViewController.swift
//  Final Project
//
//  Created by Jiayu Han on 11/14/22.
//

import UIKit

class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        //set bottom
        let tab3 = UINavigationController(rootViewController: UserViewController())
        let tab1 = UINavigationController(rootViewController: NotesViewController())
        let tab2 = UINavigationController(rootViewController: SearchViewController())
        let tabBlue = UINavigationController(rootViewController: blueController())
        //bottom image
        tab1.tabBarItem.image = UIImage(systemName: "square.and.pencil")
        tab2.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        tab3.tabBarItem.image = UIImage(systemName: "person.fill")
        tabBlue.tabBarItem.image = UIImage(systemName: "rays")
        //bottom title
        tab1.title = "Notes"
        tab2.title = "Search"
        tab3.title = "User"
        tabBlue.title = "Bluetooth"
        
        
        setViewControllers([tab1, tab2, tab3, tabBlue], animated: true)
        
    }

}

