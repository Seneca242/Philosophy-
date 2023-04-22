//
//  PhilosopherDetailsViewController.swift
//  Philosophy!
//
//  Created by Дмитрий Дмитрий on 21.04.2023.
//

import UIKit

class PhilosopherDetailsViewController: UIViewController {
    
    private lazy var philosopherImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: philosopher?.philosopherImage ?? "")
        image.layer.cornerRadius = image.frame.width / 2
        image.backgroundColor = .red
        return image
    }()
    
    var philosopher: Philosopher?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupConstraints()
        navigationItem.title = philosopher?.name
    }
    
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        changeCornerRadius()
//    }
//
//    func changeCornerRadius() {
//        philosopherImage.layer.cornerRadius = philosopherImage.frame.width / 2
//    }
    
    private func setupConstraints() {
        view.addSubview(philosopherImage)
        
        philosopherImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            philosopherImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            philosopherImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            philosopherImage.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            philosopherImage.heightAnchor.constraint(equalTo: philosopherImage.widthAnchor, multiplier: 1.0)
        ])
    }

    

}



