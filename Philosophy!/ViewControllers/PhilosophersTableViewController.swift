//
//  PhilosophersTableViewController.swift
//  Philosophy!
//
//  Created by Дмитрий Дмитрий on 10.04.2023.
//

import UIKit
import CoreData

class PhilosophersTableViewController: UITableViewController {
    
    private let searchController = UISearchController(searchResultsController: nil)
    private var filteredPhilosopher: [Philosopher] = []
    private var searchBarIsEmpty: Bool {
        guard let text = searchController.searchBar.text else { return false }
        return text.isEmpty
    }
    private var isFiltering: Bool {
        return searchController.isActive && !searchBarIsEmpty
    }
    
    private let cellID = "philosopherCell"
//    private let philosopher = Philosopher.getPhilosopher()
    private lazy var philosopher: [Philosopher] = {
        let coreDataModels = fetchPhilosophers()
        return convertCoreDataModelsToPhilosophyModels(coreDataModels)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 70
        view.backgroundColor = .black
        tableView.backgroundColor = .black
        setupNavigationBar()
        tableView.register(PersonTableViewCell.self, forCellReuseIdentifier: cellID)
        setupSearchController()
    }
    
//    #Preview("PhilosophersTableViewController") {
//        PhilosophersTableViewController()
//    }


    private func fetchPhilosophers() -> [PhilosopherNew] {
        let request: NSFetchRequest<PhilosopherNew> = PhilosopherNew.fetchRequest()
        var fetchedPhilosophers: [PhilosopherNew] = []
        do {
            fetchedPhilosophers = try StorageManager.shared.viewContext.fetch(request)
        } catch let error {
            print("Error fetching philosophers \(error)")
        }
        return fetchedPhilosophers
    }
    
    private func convertCoreDataModelsToPhilosophyModels(_ coreDataModels: [PhilosopherNew]) -> [Philosopher] {
        coreDataModels.map {
            Philosopher(
                name: $0.name!,
                biography: $0.biography!,
                philosopherImage: $0.philosopherImage!,
                doctrine: $0.doctrine!,
                movement: nil,
                school: nil
            )
        }
    }
    
    
    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        Movement.getMovement().count
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        isFiltering ? filteredPhilosopher.count : philosopher.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        guard let cell = cell as? PersonTableViewCell else { return UITableViewCell() }
        
        let backgroundView = UIView()
        backgroundView.backgroundColor = .black
        cell.selectedBackgroundView = backgroundView
        cell.backgroundColor = .black
        
        let philosopher = isFiltering ? filteredPhilosopher[indexPath.row] : philosopher[indexPath.row]
        cell.configure(with: philosopher)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let philosopherDetailsVC = PhilosopherDetailsViewController()
        let philosoher = isFiltering ? filteredPhilosopher[indexPath.row] : philosopher[indexPath.row]
        philosopherDetailsVC.philosopher = philosoher
        
        let selectedCell = tableView.cellForRow(at: indexPath)
        let backgroundView = UIView()
        backgroundView.backgroundColor = .black
        selectedCell?.selectedBackgroundView = backgroundView
        
        navigationController?.pushViewController(philosopherDetailsVC, animated: true)
    }
    
    private func setupSearchController() {
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search"
        searchController.searchBar.barTintColor = .white
        
        searchController.searchBar.searchTextField.backgroundColor = UIColor.clear
        searchController.searchBar.barTintColor = UIColor.clear
        searchController.searchBar.backgroundImage = UIImage()
        
        let placeholderAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        let attributedPlaceholder = NSAttributedString(string: "Search", attributes: placeholderAttributes)
        UITextField.appearance(whenContainedInInstancesOf: [UISearchBar.self]).attributedPlaceholder = attributedPlaceholder
        searchController.searchBar.setImage(UIImage(
            systemName: "magnifyingglass")?.withTintColor(.black).withRenderingMode(.alwaysOriginal),
            for: .search,
            state: .normal
        )
        searchController.searchBar.tintColor = .black

        
        navigationItem.searchController = searchController
        definesPresentationContext = true
        
        if let textField = searchController.searchBar.value(forKey: "searchField") as? UITextField {
            textField.font = UIFont(name: "Cheltenham", size: 20)
            textField.textColor = .white
            
            textField.borderStyle = .none
            textField.layer.backgroundColor = UIColor.clear.cgColor
            textField.layer.borderWidth = 0
            textField.layer.borderColor = UIColor.clear.cgColor
        }
    }
    
    private func setupNavigationBar() {
        title = "Philosophers"
//        navigationController?.navigationBar.prefersLargeTitles = true
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.configureWithOpaqueBackground()
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
//        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
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

// MARK: - UISearchResultsUpdating
extension PhilosophersTableViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText(searchController.searchBar.text!)
    }
    
    private func filterContentForSearchText(_ searchText: String) {
        filteredPhilosopher = philosopher.filter { chracter in
            chracter.name.lowercased().contains(searchText.lowercased())
        }
        
        tableView.reloadData()
    }
}
