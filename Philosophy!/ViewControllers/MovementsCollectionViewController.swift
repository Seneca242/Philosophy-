//
//  PhilosophicalMovementsCollectionViewController.swift
//  Philosophy!
//
//  Created by Дмитрий Дмитрий on 10.04.2023.
//

import UIKit
import CoreData

class MovementsCollectionViewController: UICollectionViewController {
    
    lazy var philosophicalMovements: [Movement] = {
        let coreDataModels = fetchMovements()
        return convertCoreDataModelsToPhilosophyModels(coreDataModels)
    }()
    //    private let philosophicalMovement = Movement.getMovement()
    
    private let sectionInserts = UIEdgeInsets(top: 20, left: 0, bottom: 20, right: 0)
    private let reuseIdentifier = "Cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        collectionView.backgroundColor = .black
//        self.collectionView!.register(PhilosophicalMovementsCollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        setupFlowLayout()
        setupNavigationBar()
    }

    // MARK: UICollectionViewDataSource

//    override func numberOfSections(in collectionView: UICollectionView) -> Int {
//        1
//    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        philosophicalMovement.count
        philosophicalMovements.count
    }

#warning("add error description")
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? PhilosophicalCollectionViewCell else { return UICollectionViewCell()}
        cell.backgroundColor = .red
//        let movement = philosophicalMovement[indexPath.item]
        let movement = philosophicalMovements[indexPath.item]
        cell.configureCell(with: movement.title)
    
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let movement = philosophicalMovements[indexPath.item]
        let movementDetailsVC = MovementDetailsViewController(index: indexPath.item, movement: movement)
//        let movement = philosophicalMovement[indexPath.item]
//        movementDetailsVC.movement = movement
        navigationController?.pushViewController(movementDetailsVC, animated: true)
    }
    
    func fetchMovements() -> [MovementNew] {
        let request: NSFetchRequest<MovementNew> = MovementNew.fetchRequest()
        var fetchedMovements: [MovementNew] = []
        do {
            fetchedMovements = try StorageManager.shared.viewContext.fetch(request)
        } catch let error {
            print("Error fetching philosophers \(error)")
        }
        return fetchedMovements
    }
    
    #warning("deal with optional properties")
    private func convertCoreDataModelsToPhilosophyModels(_ coreDataModels: [MovementNew]) -> [Movement] {
        coreDataModels.map {
            Movement(
                title: $0.title!,
                description: $0.movementDescription!,
                school: nil,
                philosopher: nil
            )
        }
    }
    
    private func setupFlowLayout() {
        let flowLayout = UICollectionViewFlowLayout()
        collectionView.collectionViewLayout = flowLayout
        collectionView.register(PhilosophicalCollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }
    
    private func setupNavigationBar() {
        title = "Philosophical movements"
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

extension MovementsCollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemsPerRow: CGFloat = 2
        let paddingWidth = 5 * (itemsPerRow + 1)
        let availableWidth = collectionView.frame.width - paddingWidth
        let widthPerItem = availableWidth / itemsPerRow
        return CGSize(width: widthPerItem, height: widthPerItem)
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
