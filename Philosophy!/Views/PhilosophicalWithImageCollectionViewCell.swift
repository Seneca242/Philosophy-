//
//  PhilosophicalWithImageCollectionViewCell.swift
//  Philosophy!
//
//  Created by Дмитрий Дмитрий on 31.05.2023.
//

import UIKit

class PhilosophicalWithImageCollectionViewCell: UICollectionViewCell {
    
    var alignment: NSTextAlignment = .center {
        didSet {
            titleLabel.textAlignment = alignment
        }
    }
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var philosopherImage: UIImageView = {
        let image = UIImageView()
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupConstraints()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        philosopherImage.layer.cornerRadius = philosopherImage.frame.width / 2
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutIfNeeded() {
        super.layoutIfNeeded()
        philosopherImage.layer.cornerRadius = philosopherImage.frame.width / 2
    }
    
    func configureCell(with philosopher: Philosopher) {
        titleLabel.text = philosopher.name
        philosopherImage.image = UIImage(named: "\(philosopher.philosopherImage)")
        philosopherImage.backgroundColor = .black
//        philosopherImage.layer.cornerRadius = philosopherImage.frame.width / 2
        philosopherImage.contentMode = .scaleAspectFill
        philosopherImage.clipsToBounds = true
        }
    
    private func setupConstraints() {
        contentView.addSubview(philosopherImage)
        contentView.addSubview(titleLabel)
        
        philosopherImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            philosopherImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            philosopherImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            philosopherImage.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.3),
            philosopherImage.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.8)
        ])
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: philosopherImage.trailingAnchor, constant: 10),
            titleLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10)
        ])
    }
}
