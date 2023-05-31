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
    
    func configureCell(with philosopher: Philosopher) {
        titleLabel.text = philosopher.name
        philosopherImage.image = UIImage(named: "\(philosopher.philosopherImage)")
        philosopherImage.backgroundColor = .black
        philosopherImage.layer.cornerRadius = philosopherImage.frame.width / 2
        philosopherImage.contentMode = .scaleAspectFill
        philosopherImage.clipsToBounds = true
        }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupConstraints()
    }
    
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
