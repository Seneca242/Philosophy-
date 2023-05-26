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
        textView.font = UIFont(name: "Cheltenham", size: 40)
        textView.text = "What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Why do we use it? It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32 The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. esktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32 The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. esktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32 The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham."
        textView.textColor = .white
        textView.backgroundColor = .black
        textView.textAlignment = .justified
        return textView
    }()

    private lazy var philisophersButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
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
        button.backgroundColor = .blue
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
        configure()
    }
    
    private func configure() {
        view.addSubviews([philisophersButton, philosophicalSchoolsButton, textView])
        
        philisophersButton.snp.makeConstraints { make in
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
            make.top.equalTo(philisophersButton.snp.bottom).offset(16)
        }
    }
    

}

extension UIView {
    func addSubviews(_ views: [UIView]) {
        views.forEach { view in
            addSubview(view)
        }
    }
}
