//
//  PhilosophicalSchoolsCollectionViewController.swift
//  Philosophy!
//
//  Created by Дмитрий Дмитрий on 10.04.2023.
//

import UIKit

private let reuseIdentifier = "Cell"

class SchoolsCollectionViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        collectionView.backgroundColor = .black
        setupNavigationBar()
        setupFlowLayout()
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
        
    }
    
    private func setupFlowLayout() {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.minimumLineSpacing = 10
        flowLayout.minimumInteritemSpacing = 10
        flowLayout.sectionInset = UIEdgeInsets(top: 5, left: 0, bottom: 5, right: 0)
        let screenWidth = UIScreen.main.bounds.width
        let itemWidth = (screenWidth - flowLayout.minimumInteritemSpacing * 2 - flowLayout.sectionInset.left - flowLayout.sectionInset.right) / 3
        flowLayout.itemSize = CGSize(width: itemWidth, height: itemWidth)
        collectionView.collectionViewLayout = flowLayout
        
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 3
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        cell.backgroundColor = UIColor.red
    
        return cell
    }
    
    private func setupNavigationBar() {
        title = "Philosophical schools"
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

    // MARK: UICollectionViewDelegate


}
