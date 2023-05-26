//
//  PhilosophicalMovementsCollectionViewCell.swift
//  Philosophy!
//
//  Created by Дмитрий Дмитрий on 02.05.2023.
//

import UIKit

class PhilosophicalCollectionViewCell: UICollectionViewCell {
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    func configureTitle(with title: String) {
        titleLabel.text = title
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupConstraints()
    }
    
   //https://localhost:8080/ - base url
    // Vapor - бэкенд на свифте
    // https://localhost:8080/schools - список школ
    // https://localhost:8080/movements -
    // Apache
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConstraints() {
        contentView.addSubview(titleLabel)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        titleLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.8).isActive = true
    }
    
}
