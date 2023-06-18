//
//  MovementSchoolsCollectionViewController.swift
//  Philosophy!
//
//  Created by Dmitry Dmitry on 06.06.2023.
//

import UIKit
import CoreData

private let reuseIdentifier = "Cell"

class MovementSchoolsCollectionViewController: UICollectionViewController {
    
    private lazy var movementSchools: [School] = {
        let coreDataModels = fetchSchools()
        return convertCoreDataModelsToPhilosophyModels(coreDataModels)
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }
    
    private func fetchSchools() -> [SchoolNew] {
        let request: NSFetchRequest<SchoolNew> = SchoolNew.fetchRequest()
        var fetchedSchools: [SchoolNew] = []
        do {
            fetchedSchools = try StorageManager.shared.viewContext.fetch(request)
        } catch let error {
            print("Error fetching philosophers \(error)")
        }
        return fetchedSchools
    }
    
    private func convertCoreDataModelsToPhilosophyModels(_ coreDataModels: [SchoolNew]) -> [School] {
        coreDataModels.map {
            School(
                title: $0.title!,
                description: $0.schoolDescription!,
                movement: nil,
                philosopher: nil
            )
        }
    }

    // MARK: UICollectionViewDataSource

//    override func numberOfSections(in collectionView: UICollectionView) -> Int {
//        return 0
//    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 0
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        // Configure the cell
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
