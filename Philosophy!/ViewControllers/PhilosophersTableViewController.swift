//
//  PhilosophersTableViewController.swift
//  Philosophy!
//
//  Created by Дмитрий Дмитрий on 10.04.2023.
//

import UIKit

class PhilosophersTableViewController: UITableViewController {

    private let cellID = "philosopherCell"
//    private let philosopher: Philosopher?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 70
        view.backgroundColor = .black
        tableView.backgroundColor = .black
        setupNavigationBar()
        tableView.register(PersonTableViewCell.self, forCellReuseIdentifier: cellID)
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        Movement.getMovement().count
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Philosopher.getPhilosopher().count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        guard let cell = cell as? PersonTableViewCell else { return UITableViewCell() }
        cell.backgroundColor = .black
        let philosopher = Philosopher.getPhilosopher()[indexPath.row]
        cell.configure(with: philosopher)
        return cell
    }

    private func setupNavigationBar() {
        title = "Philosophers"
//        navigationController?.navigationBar.prefersLargeTitles = true

        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.configureWithOpaqueBackground()
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        navBarAppearance.backgroundColor = UIColor(
            red: 183/255,
            green: 65/255,
            blue: 14/255,
            alpha: 1
        )
        navigationController?.navigationBar.standardAppearance = navBarAppearance
        navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance

        let backButton = UIBarButtonItem(
            title: "Back",
            style: .plain,
            target: self,
            action: #selector(backAction)
        )
        navigationItem.leftBarButtonItem = backButton

        navigationController?.navigationBar.tintColor = .black
    }
    
    @objc func backAction() {
        dismiss(animated: true)
    }
    
    
}
