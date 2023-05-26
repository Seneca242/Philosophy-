//
//  MovementDetailsViewController.swift
//  Philosophy!
//
//  Created by Дмитрий Дмитрий on 26.05.2023.
//

import UIKit

class MovementDetailsViewController: UIViewController {

    private var contentSize: CGSize {
        CGSize(width: view.frame.width, height: view.frame.height + 200)
    }

    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .black
        scrollView.frame = view.bounds
        scrollView.showsVerticalScrollIndicator = true
        scrollView.contentSize = contentSize
        return scrollView
    }()

    private lazy var contentView: UIView = {
        let contentView = UIView()
        return contentView
    }()

    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = movement?.description
        label.font = UIFont(name: "Cheltenham", size: 40)
        label.textColor = .white
        label.numberOfLines = 0
        label.backgroundColor = .black
        label.textAlignment = .justified
        label.lineBreakMode = .byWordWrapping
        return label
    }()
    
    private lazy var philisophersButton: UIButton = {
        let button = UIButton()
        button.setTitle("PHILOSOPHERS", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Cheltenham", size: 20)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
//        button.addTarget(self, action: #selector(openPhilosophersList), for: .touchUpInside)
        button.tag = 0
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
//        button.addTarget(self, action: #selector(openSchoolsCollection), for: .touchUpInside)
        button.tag = 2
        return button
    }()
    
    var movement: Movement?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = movement?.title
        view.backgroundColor = .yellow
    }
    

    

}
