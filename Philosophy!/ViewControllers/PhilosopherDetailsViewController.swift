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
        image.backgroundColor = .red
        return image
    }()
    
    var philosopher: Philosopher?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    private func setupConstraints() {
        view.addSubview(philosopherImage)
        
        philosopherImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            philosopherImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 30),
            philosopherImage.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    

}
