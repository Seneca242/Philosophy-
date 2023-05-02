//
//  PhilosophicalMovementsCollectionViewController.swift
//  Philosophy!
//
//  Created by Дмитрий Дмитрий on 10.04.2023.
//

import UIKit

private let reuseIdentifier = "Cell"
private let philosophicalMovement = Movement.getMovement()

class PhilosophicalMovementsCollectionViewController: UICollectionViewController {

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
        philosophicalMovement.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? PhilosophicalMovementsCollectionViewCell else { return UICollectionViewCell()}
    
        cell.backgroundColor = .red
        let movement = philosophicalMovement[indexPath.item]
        cell.configure(with: movement)
    
        return cell
    }
    
    private func setupFlowLayout() {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.minimumLineSpacing = 10
        flowLayout.minimumInteritemSpacing = 10
        flowLayout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        let screenWidth = UIScreen.main.bounds.width
        let itemWidth = (screenWidth - flowLayout.minimumInteritemSpacing * 2 - flowLayout.sectionInset.left - flowLayout.sectionInset.right) / 3
        flowLayout.itemSize = CGSize(width: itemWidth, height: itemWidth)
        collectionView.collectionViewLayout = flowLayout
        
        collectionView.register(PhilosophicalMovementsCollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
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

    // MARK: UICollectionViewDelegate

    
}
