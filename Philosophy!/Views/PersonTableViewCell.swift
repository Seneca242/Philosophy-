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
        label.backgroundColor = .black
        label.textAlignment = .left
        return label
    }()
    
    private lazy var philosopherImage: UIImageView = {
        let image = UIImageView()
//        image.contentMode = .scaleAspectFit
//        image.layer.cornerRadius = image.frame.width / 2
//        image.layer.masksToBounds = true
        return image
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutIfNeeded() {
        super.layoutIfNeeded()
        philosopherImage.layer.cornerRadius = philosopherImage.frame.width / 2
    }
    
//    func changeCornerRadius() {
//        philosopherImage.layer.cornerRadius = philosopherImage.frame.width / 2
//        philosopherImage.layer.borderColor = UIColor.blue.cgColor
//        philosopherImage.layer.borderWidth = 3
//        philosopherImage.layer.masksToBounds = true
//        philosopherImage.contentMode = .scaleAspectFit
//    }
    
    func configure(with philosopher: Philosopher) {
        namePhilosopherLabel.text = philosopher.name
        namePhilosopherLabel.backgroundColor = .black
        namePhilosopherLabel.textColor = .white
        philosopherImage.image = UIImage(named: "\(philosopher.philosopherImage)")
        philosopherImage.backgroundColor = .black
//        philosopherImage.layer.cornerRadius = 25
        philosopherImage.contentMode = .scaleAspectFill
        philosopherImage.clipsToBounds = true
    }
    
    private func setupConstraints() {
        contentView.addSubview(philosopherImage)
        contentView.addSubview(namePhilosopherLabel)
        
        philosopherImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            philosopherImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            philosopherImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5),
            philosopherImage.trailingAnchor.constraint(equalTo: namePhilosopherLabel.leadingAnchor, constant: -15),
            philosopherImage.heightAnchor.constraint(equalToConstant: 50),
            philosopherImage.widthAnchor.constraint(equalToConstant: 50)
        ])

        namePhilosopherLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            namePhilosopherLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
//            namePhilosopherLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 5),
            namePhilosopherLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
//            namePhilosopherLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 5)
        ])
    }

}
