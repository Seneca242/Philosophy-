//
//  MovementDetailsViewController.swift
//  Philosophy!
//
//  Created by Дмитрий Дмитрий on 26.05.2023.
//

import UIKit
import SnapKit

class MovementDetailsViewController: UIViewController {
    
    private lazy var textView: UITextView = {
        let textView = UITextView()
        textView.text = movement?.description
        textView.font = UIFont(name: "Cheltenham", size: 40)
        textView.textColor = .white
        textView.backgroundColor = .black
        textView.textAlignment = .justified
        return textView
    }()

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

//    private lazy var descriptionLabel: UILabel = {
//        let label = UILabel()
//        label.text = movement?.description
//        label.font = UIFont(name: "Cheltenham", size: 40)
//        label.textColor = .white
//        label.numberOfLines = 0
//        label.backgroundColor = .black
//        label.textAlignment = .justified
//        label.lineBreakMode = .byWordWrapping
//        return label
//    }()
    
    private lazy var philosophersButton: UIButton = {
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
        setupConstraints()
    }
    

    private func setupConstraints() {
        view.addSubviews(textView, philosophersButton, philosophicalSchoolsButton)
        
        philosophersButton.snp.makeConstraints { make in
            make.top.left.equalTo(view.safeAreaLayoutGuide).offset(16)
            make.right.equalTo(view.snp.centerX).inset(8)
            make.height.equalTo(44)
        }
        
        philosophicalSchoolsButton.snp.makeConstraints { make in
            make.top.right.equalTo(view.safeAreaLayoutGuide).inset(16)
            make.left.equalTo(view.snp.centerX).offset(8)
            make.height.equalTo(44)
        }
        
        textView.snp.makeConstraints { make in
            make.left.right.bottom.equalTo(view.safeAreaLayoutGuide).inset(8)
            make.top.equalTo(philosophersButton.snp.bottom).offset(16)
        }
    }
    

}

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach { subView in
            addSubview(subView)
        }
    }
}
