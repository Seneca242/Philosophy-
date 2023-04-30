//
//  PhilosopherDetailsViewController.swift
//  Philosophy!
//
//  Created by Дмитрий Дмитрий on 21.04.2023.
//

import UIKit

class PhilosopherDetailsViewController: UIViewController {
    
//    private var contentSize: CGSize {
//        CGSize(width: view.frame.width, height: view.frame.height + 200)
//    }
//
//    private lazy var scrollView: UIScrollView = {
//        let scrollView = UIScrollView()
//        scrollView.backgroundColor = .black
//        scrollView.frame = view.bounds
//        scrollView.showsVerticalScrollIndicator = true
//        scrollView.contentSize = contentSize
//        return scrollView
//    }()
//
//    private lazy var contentView: UIView = {
//        let contentView = UIView()
//        return contentView
//    }()
//
//    private lazy var philosopherImage: UIImageView = {
//        let image = UIImageView()
//        image.image = UIImage(named: philosopher?.philosopherImage ?? "")
////        image.backgroundColor = .yellow
//        return image
//    }()
//
//    private lazy var biographyLabel: UILabel = {
//        let label = UILabel()
//        label.text = philosopher?.biography
//        label.font = UIFont(name: "Cheltenham", size: 40)
//        label.textColor = .white
//        label.numberOfLines = 0
//        label.backgroundColor = .red
//        label.textAlignment = .justified
//        label.lineBreakMode = .byWordWrapping
//        return label
//    }()
//
//    var philosopher: Philosopher?
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        setupConstraints()
//        navigationItem.title = philosopher?.name
//        philosopherImage.layer.cornerRadius = philosopherImage.frame.width / 2
//    }
//
//    private func setupConstraints() {
//        view.addSubview(scrollView)
//        view.addSubview(philosopherImage)
//        scrollView.addSubview(contentView)
//        contentView.addSubview(biographyLabel)
//
//        philosopherImage.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            philosopherImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
//            philosopherImage.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
//            philosopherImage.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
//            philosopherImage.heightAnchor.constraint(equalTo: philosopherImage.widthAnchor, multiplier: 1.0)
//        ])
//
//        biographyLabel.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            biographyLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 130),
//            biographyLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
//            biographyLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
//        ])
//
//        contentView.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
//            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
//            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
//            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
//            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
//            contentView.heightAnchor.constraint(equalTo: biographyLabel.heightAnchor, constant: 80)
//        ])
//
//        scrollView.contentInset = UIEdgeInsets(top: view.frame.width / 2, left: 0, bottom: 0, right: 0)
//    }
    
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

    private lazy var philosopherImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: philosopher?.philosopherImage ?? "")
        image.contentMode = .scaleAspectFill
        
        return image
    }()

    private lazy var biographyLabel: UILabel = {
        let label = UILabel()
        label.text = philosopher?.biography
        label.font = UIFont(name: "Cheltenham", size: 40)
        label.textColor = .white
        label.numberOfLines = 0
        label.backgroundColor = .black
        label.textAlignment = .justified
        label.lineBreakMode = .byWordWrapping
        return label
    }()

    var philosopher: Philosopher?
    
    // philosopherImage.bounds.width / 2 - не константа
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        philosopherImage.layer.cornerRadius = philosopherImage.bounds.width / 2
        philosopherImage.clipsToBounds = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupConstraints()
        navigationItem.title = philosopher?.name
        
//        philosopherImage.layer.borderColor = UIColor.white.cgColor
//        philosopherImage.layer.borderWidth = 3
//        philosopherImage.layer.shadowColor = UIColor.red.cgColor
//        philosopherImage.layer.shadowOffset = .init(width: 5, height: 5)

    }

    private func setupConstraints() {
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(philosopherImage)
        contentView.addSubview(biographyLabel)
        
        //
        view.translatesAutoresizingMaskIntoConstraints = false
        
        philosopherImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            philosopherImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            philosopherImage.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            philosopherImage.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            philosopherImage.heightAnchor.constraint(equalTo: philosopherImage.widthAnchor, multiplier: 1.0)
        ])

        biographyLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            biographyLabel.topAnchor.constraint(equalTo: philosopherImage.bottomAnchor, constant: 20),
            biographyLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            biographyLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
        ])

        contentView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            contentView.heightAnchor.constraint(greaterThanOrEqualTo: scrollView.heightAnchor, constant: 1)
        ])

        scrollView.contentInset = UIEdgeInsets(top: view.frame.width / 2, left: 0, bottom: 0, right: 0)
    }
}



