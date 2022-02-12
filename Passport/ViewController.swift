//
//  ViewController.swift
//  Passport
//
//  Created by Kevin Shiflett on 2/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    
    lazy var contentViewSize = CGSize(width: self.view.frame.width, height: self.view.frame.height + 1000)
    
    // MARK: - Views
    
    let totalStampsLabel: UILabel = {
        let label = UILabel()
        label.text = "0 Stamps"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = .black
        label.font = UIFont(name: "Gilroy-Bold", size: 25)
        return label
    }()
    
    lazy var passportPage: UIScrollView = {
        let scrollView = UIScrollView(frame: .zero)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = UIColor(patternImage: UIImage(named: "paper_background")!)
        scrollView.contentSize = contentViewSize
        scrollView.showsVerticalScrollIndicator = false
        return scrollView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.addSubview(passportPage)
        passportPage.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        passportPage.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        passportPage.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        passportPage.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        passportPage.addSubview(totalStampsLabel)
        totalStampsLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        totalStampsLabel.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor).isActive = true
    }

}

