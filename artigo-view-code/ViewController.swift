//
//  ViewController.swift
//  artigo-view-code
//
//  Created by João Alexandre on 21/05/22.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 34, weight: .semibold)
        label.text = "Meu app ViewCode"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var printButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 8
        button.backgroundColor = .blue
        button.addTarget(self, action:#selector(printButtonPressed(_:)), for: .touchUpInside)
        button.setTitle("Clique aqui", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        configureUI()
        setContraints()
    }
    
    func configureUI() {
        view.addSubview(titleLabel)
        view.addSubview(printButton)
    }

    private func setContraints() {
        //MARK: - titleLabel
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 64),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -32),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32)
        ])
        
        //MARK: - printButton
        NSLayoutConstraint.activate([
            printButton.heightAnchor.constraint(equalToConstant: 50),
            printButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32),
            printButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -32),
            printButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32)
        ])
    }
    
    // exibi o título do botão no console
    @objc func printButtonPressed(_ sender: UIButton) {
        if let title = sender.titleLabel?.text {
            print(title)
        }
    }
}

