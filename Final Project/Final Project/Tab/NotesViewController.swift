//
//  NotesViewController.swift
//  Final Project
//
//  Created by Jiayu Han on 11/14/22.
//

import UIKit

class NotesViewController: UIViewController {
    private let noteList: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(noteList)
        noteList.delegate = self
        noteList.dataSource = self
        title = "Notes"
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        noteList.frame = view.bounds
    }
}

extension NotesViewController:
    UITableViewDelegate,
    UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 10
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = "VS嵐 20XX/XX/XX"
            return cell
        }
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 50
        }
    }
