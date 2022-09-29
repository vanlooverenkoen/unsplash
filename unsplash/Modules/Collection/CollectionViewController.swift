//
//  CollectionViewController.swift
//  unsplash
//
//  Created by Hannes Van den Berghe on 29/09/2022.
//

import UIKit

struct Collection {
    var title: String
    var owner: String
}

class CollectionViewController: UIViewController {
    
    private let collection: [[Collection]] = [
        [
            Collection(title: "Title 1", owner: "Hannes"),
            Collection(title: "Title 2", owner: "Jef"),
            Collection(title: "Title 3", owner: "Koen")
        ],
        [
            Collection(title: "Title 1", owner: "Hannes"),
            Collection(title: "Title 2", owner: "Jef")
        ]
    ]
    
    @IBOutlet weak var collectionsTableView: UITableView! {
        didSet {
            collectionsTableView.dataSource = self
            collectionsTableView.delegate = self
            collectionsTableView.sectionHeaderHeight = 50
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - UITableViewDataSource

extension CollectionViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        print(section)
        let view = UIView()
        view.backgroundColor = UIColor.red
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        label.topAnchor.constraint(equalTo: view.topAnchor, constant: 8).isActive = true
        label.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -8).isActive = true
        label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        label.text = "Section \(section)"
        return view
    }

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return collection.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return collection[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "demo")
        let item = collection[indexPath.section][indexPath.row]
        cell.textLabel?.text = item.title
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = collection[indexPath.row]
        print("Item is \(item)")
    }
}
