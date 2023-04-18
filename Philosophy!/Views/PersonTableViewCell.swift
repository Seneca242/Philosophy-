//
//  PersonTableViewCell.swift
//  Philosophy!
//
//  Created by Дмитрий Дмитрий on 11.04.2023.
//

import UIKit

class PersonTableViewCell: UITableViewCell {

    private lazy var namePhilosopherLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Cheltenham", size: 20)
        label.textColor = .white
        label.textAlignment = .left
        return label
    }()
    
    private lazy var philosopherImage: UIImageView = {
        let image = UIImageView()
        
        return image
    }()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupConstraints()

    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//    }
    
//    override func layoutSubviews() {
//        super.layoutSubviews()
//
//        namePhilosopherLabel.translatesAutoresizingMaskIntoConstraints = false
//        namePhilosopherLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5).isActive = true
//        namePhilosopherLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 5).isActive = true
//
//        philosopherImage.translatesAutoresizingMaskIntoConstraints = false
//        philosopherImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5).isActive = true
//        philosopherImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5).isActive = true
//        philosopherImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 5).isActive = true
//        philosopherImage.trailingAnchor.constraint(equalTo: namePhilosopherLabel.leadingAnchor, constant: 15).isActive = true
//
//    }
    
    func configure(with philosopher: Philosopher) {
        namePhilosopherLabel.text = philosopher.name
        philosopherImage.image = UIImage(named: "\(philosopher.philosopherImage)")
    }
    
    private func setupConstraints() {
        philosopherImage.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            philosopherImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            philosopherImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5),
            philosopherImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 5),
            philosopherImage.trailingAnchor.constraint(equalTo: namePhilosopherLabel.leadingAnchor, constant: 15)
        ])

        namePhilosopherLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            namePhilosopherLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            namePhilosopherLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 5)
        ])
    }

}
