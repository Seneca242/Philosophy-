//
//  ViewController.swift
//  Philosophy!
//
//  Created by Дмитрий Дмитрий on 10.04.2023.
//

import UIKit

class MenuViewController: UIViewController {
    
    private lazy var phylosophyTitle: UILabel = {
        let label = UILabel()
        label.text = "PHILOSOPHY"
        label.font = UIFont(name: "Cheltenham", size: 40)
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var backgroundScreenImage: UIImageView = {
        var image = UIImageView()
        image.image = UIImage(named: "launchScreen")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .leading
        stackView.distribution = .fill
        stackView.spacing = 27
        return stackView
    }()
    
    private lazy var listOfPhilosophersButton: UIButton = {
        let button = UIButton()
        button.setTitle("PHILOSOPHERS", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Cheltenham", size: 20)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.addTarget(self, action: #selector(openScreenWithTabbar), for: .touchUpInside)
        button.tag = 0
        return button
    }()
    
    private lazy var philosophicalMovementsButton: UIButton = {
        let button = UIButton()
        button.setTitle("PHILOSOPHICAL MOVEMENTS", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Cheltenham", size: 20)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.titleLabel?.numberOfLines = 0
        button.addTarget(self, action: #selector(openScreenWithTabbar), for: .touchUpInside)
        button.tag = 1
        return button
    }()
    
    private lazy var philosophicalSchoolsButton: UIButton = {
        let button = UIButton()
        button.setTitle("PHILOSOPHICAL SCHOOLS", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Cheltenham", size: 20)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.titleLabel?.numberOfLines = 0
        button.addTarget(self, action: #selector(openScreenWithTabbar), for: .touchUpInside)
        button.tag = 2
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        view.addSubview(phylosophyTitle)
        addSubviews(subViews: backgroundScreenImage, stackView, phylosophyTitle)
        addSubviewsToStackView(subviews: listOfPhilosophersButton, philosophicalMovementsButton, philosophicalSchoolsButton)
        setupConstraints()
    }
    
    @objc private func openScreenWithTabbar(_ button: UIButton) {
        createTabbar(selectedIndex: button.tag)
    }
    
    private func createTabbar(selectedIndex: Int) {
        let philosophersVC = PhilosophersTableViewController()
        let philosophersNavigationVC = UINavigationController(rootViewController: philosophersVC)
        
        let philosophicalMovementsVC = MovementsCollectionViewController(collectionViewLayout: UICollectionViewLayout())
        let philosophicalMovementsNavigationVC = UINavigationController(rootViewController: philosophicalMovementsVC)
        
        let philosophicalSchoolsVC = SchoolsCollectionViewController(collectionViewLayout: UICollectionViewLayout())
        let philosophicalSchoolsNavigationVC = UINavigationController(rootViewController: philosophicalSchoolsVC)
        
        let tabbar = UITabBarController()
        let appearance = UITabBarAppearance()
        appearance.stackedLayoutAppearance.normal.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        appearance.backgroundColor = UIColor(
            red: 183/255,
            green: 65/255,
            blue: 14/255,
            alpha: 1
        )
        
        tabbar.tabBar.standardAppearance = appearance
        if #available(iOS 15.0, *) {
            tabbar.tabBar.scrollEdgeAppearance = appearance
        } else {
            tabbar.tabBar.isTranslucent = true
        }
        tabbar.tabBar.tintColor = .white
//        tabbar.tabBar.unselectedItemTintColor = UIColor.black
        
        philosophersNavigationVC.tabBarItem = .init(
            title: "Philosophers",
            image: UIImage(named: "books")?.withTintColor(.black) .withRenderingMode(.alwaysOriginal),
            selectedImage: UIImage(named: "books")
        )
        
//        philosophersNavigationVC.tabBarItem.badgeColor = .white
        
        philosophicalMovementsNavigationVC.tabBarItem = .init(
            title: "Philosophical movements",
            image: UIImage(named: "graduationcap")?.withTintColor(.black) .withRenderingMode(.alwaysOriginal),
            selectedImage: UIImage(named: "graduationcap")
        )
        
        philosophicalSchoolsNavigationVC.tabBarItem = .init(
            title: "Philosophical schools",
            image: UIImage(named: "list")?.withTintColor(.black) .withRenderingMode(.alwaysOriginal),
            selectedImage: UIImage(named: "list")
        )
        
//        philosophicalSchoolsNavigationVC.tabBarItem.badgeColor = .white
        
        tabbar.modalPresentationStyle = .fullScreen
        tabbar.viewControllers = [philosophersNavigationVC , philosophicalMovementsNavigationVC, philosophicalSchoolsNavigationVC]
        tabbar.selectedIndex = selectedIndex
        present(tabbar, animated: true)
    }
    
    private func addSubviews(subViews: UIView...) {
        subViews.forEach { subView in
            view.addSubview(subView)
        }
    }
    
    private func addSubviewsToStackView(subviews: UIView...) {
        subviews.forEach { subView in
            stackView.addArrangedSubview(subView)
        }
    }
    
    private func setupConstraints() {
        phylosophyTitle.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            phylosophyTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            phylosophyTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            phylosophyTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        backgroundScreenImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            backgroundScreenImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            backgroundScreenImage.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            backgroundScreenImage.widthAnchor.constraint(equalTo: view.widthAnchor),
            backgroundScreenImage.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
    }
    
}

