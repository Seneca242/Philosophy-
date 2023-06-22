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

    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()

    private lazy var philosopherImage: UIImageView = {
        let image = UIImageView()
        return image
    }()

    private var isConfigured = false

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupConstraints()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configureCell(with philosopher: PhilosopherNew) {
        layoutIfNeeded()
        titleLabel.text = philosopher.name
        philosopherImage.layer.cornerRadius = philosopherImage.bounds.width / 2
        philosopherImage.image = UIImage(named: "\(philosopher.philosopherImage ?? "")")
        philosopherImage.backgroundColor = .black
        philosopherImage.layer.cornerRadius = philosopherImage.frame.width / 2
        philosopherImage.contentMode = .scaleAspectFill
        philosopherImage.clipsToBounds = true
        philosopherImage.layer.masksToBounds = true
    }

    private func setupConstraints() {
        contentView.addSubview(philosopherImage)
        contentView.addSubview(titleLabel)

        philosopherImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            philosopherImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            philosopherImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            philosopherImage.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.8),
            philosopherImage.widthAnchor.constraint(equalTo: philosopherImage.heightAnchor)
        ])

        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: philosopherImage.trailingAnchor, constant: 10),
            titleLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10)
        ])
    }
}
