//
//  MovementPhilosophersCollectionViewController.swift
//  Philosophy!
//
//  Created by Дмитрий Дмитрий on 30.05.2023.
//

import UIKit
import CoreData

//class MovementPhilosophersCollectionViewController: UICollectionViewController {
//
//    var movement: MovementNew?
//    var movements: [MovementNew] = []
//    var index: Int
//    var philosophers: [PhilosopherNew] = []
////    let movementsCollectionVC = MovementsCollectionViewController()
//
////    private lazy var movementPhilosophers: [Philosopher] = {
////        let coreDataModels = fetchPhilosophers()
////        return convertCoreDataModelsToPhilosophyModels(coreDataModels)
////    }()
//
//    private let sectionInserts = UIEdgeInsets(top: 20, left: 0, bottom: 20, right: 0)
//    private let reuseIdentifier = "Cell"
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        collectionView.backgroundColor = .black
//        setupNavigationBar()
//        setupFlowLayout()
//
//        if let movement = movement {
//            philosophers = StorageManager.shared.movementPhilosophers(movement: movement)
//        }
//        collectionView.reloadData()
//    }
//
//    init(index: Int) {
//        self.index = index
//        super.init(nibName: nil, bundle: nil)
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//
//    // MARK: UICollectionViewDataSource
//
////    override func numberOfSections(in collectionView: UICollectionView) -> Int {
////        return 0
////    }
//
//
//    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
////        movementPhilosophers.count
//        philosophers.count
//    }
//
//    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? PhilosophicalWithImageCollectionViewCell else { return UICollectionViewCell()}
//        cell.backgroundColor = .red
//        cell.alignment = .left
////        let movementPhilosopher = movementPhilosophers[indexPath.item]
////        cell.configureCell(with: movementPhilosopher)
//        return cell
//    }
//
//    private func fetchPhilosophers() -> [PhilosopherNew] {
//        let request: NSFetchRequest<PhilosopherNew> = PhilosopherNew.fetchRequest()
//        var fetchedPhilosophers: [PhilosopherNew] = []
//        do {
//            fetchedPhilosophers = try StorageManager.shared.viewContext.fetch(request)
//        } catch let error {
//            print("Error fetching philosophers \(error)")
//        }
//        return fetchedPhilosophers
//    }
//
//    private func convertCoreDataModelsToPhilosophyModels(_ coreDataModels: [PhilosopherNew]) -> [Philosopher] {
//        coreDataModels.map {
//            Philosopher(
//                name: $0.name!,
//                biography: $0.biography!,
//                philosopherImage: $0.philosopherImage!,
//                doctrine: $0.doctrine!,
//                movement: nil,
//                school: nil
//            )
//        }
//    }
//
//    private func setupFlowLayout() {
//        let flowLayout = UICollectionViewFlowLayout()
//        collectionView.collectionViewLayout = flowLayout
//        self.collectionView!.register(PhilosophicalWithImageCollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
//    }
//
//    private func setupNavigationBar() {
//        let movement = movements[index].title
//        title =  "Philosophers of \(movement ?? "") Movement"
//        let navBarAppearance = UINavigationBarAppearance()
//        navBarAppearance.configureWithOpaqueBackground()
//        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
//        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
//        navBarAppearance.backgroundColor = UIColor(
//            red: 183/255,
//            green: 65/255,
//            blue: 14/255,
//            alpha: 1
//        )
//        navigationController?.navigationBar.standardAppearance = navBarAppearance
//        navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance
//
//        navigationController?.navigationBar.tintColor = .black
//    }
//
//    // MARK: UICollectionViewDelegate
//
//    /*
//    // Uncomment this method to specify if the specified item should be highlighted during tracking
//    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
//        return true
//    }
//    */
//
//    /*
//    // Uncomment this method to specify if the specified item should be selected
//    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
//        return true
//    }
//    */
//
//    /*
//    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
//    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
//        return false
//    }
//
//    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
//        return false
//    }
//
//    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
//
//    }
//    */
//
//}
//
//extension MovementPhilosophersCollectionViewController: UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let itemsPerRow: CGFloat = 1
//        let paddingWidth = 5 * (itemsPerRow + 1)
//        let availableWidth = collectionView.frame.width - paddingWidth
//        let widthPerItem = availableWidth / itemsPerRow
//        return CGSize(width: widthPerItem, height: 100)
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        sectionInserts
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        10
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        10
//    }
//}


class MovementPhilosophersCollectionViewController: UICollectionViewController {

    var philosophers: [PhilosopherNew] = []
    var index: Int
    var movement: MovementNew?
    var movements = StorageManager.shared.movements()

    private let sectionInserts = UIEdgeInsets(top: 20, left: 0, bottom: 20, right: 0)
    private let reuseIdentifier = "Cell"

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .black
        setupNavigationBar()
        setupFlowLayout()

        if let movement = movement {
            philosophers = StorageManager.shared.movementPhilosophers(movement: movement)
        }
        collectionView.reloadData()
    }

    init(index: Int) {
        self.index = index
        movement = movements[index]
//        super.init(nibName: nil, bundle: nil)
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }


    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    // MARK: UICollectionViewDataSource

//    override func numberOfSections(in collectionView: UICollectionView) -> Int {
//        return 0
//    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        movementPhilosophers.count
        philosophers.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? PhilosophicalWithImageCollectionViewCell else { return UICollectionViewCell()}
        cell.backgroundColor = .red
        cell.alignment = .left
        let movementPhilosopher = philosophers[indexPath.item]
        cell.configureCell(with: movementPhilosopher)
        return cell
    }

//    private func fetchPhilosophers() -> [PhilosopherNew] {
//        let request: NSFetchRequest<PhilosopherNew> = PhilosopherNew.fetchRequest()
//        var fetchedPhilosophers: [PhilosopherNew] = []
//        do {
//            fetchedPhilosophers = try StorageManager.shared.viewContext.fetch(request)
//        } catch let error {
//            print("Error fetching philosophers \(error)")
//        }
//        return fetchedPhilosophers
//    }
//
//    private func convertCoreDataModelsToPhilosophyModels(_ coreDataModels: [PhilosopherNew]) -> [Philosopher] {
//        coreDataModels.map {
//            Philosopher(
//                name: $0.name!,
//                biography: $0.biography!,
//                philosopherImage: $0.philosopherImage!,
//                doctrine: $0.doctrine!,
//                movement: nil,
//                school: nil
//            )
//        }
//    }

    private func setupFlowLayout() {
        let flowLayout = UICollectionViewFlowLayout()
        collectionView.collectionViewLayout = flowLayout
        self.collectionView!.register(PhilosophicalWithImageCollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }

    private func setupNavigationBar() {
        let movement = movements[index].title
        title =  "Philosophers of \(movement ?? "") Movement"
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

        navigationController?.navigationBar.tintColor = .black
    }

}

extension MovementPhilosophersCollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemsPerRow: CGFloat = 1
        let paddingWidth = 5 * (itemsPerRow + 1)
        let availableWidth = collectionView.frame.width - paddingWidth
        let widthPerItem = availableWidth / itemsPerRow
        return CGSize(width: widthPerItem, height: 100)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        sectionInserts
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        10
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        10
    }
}

