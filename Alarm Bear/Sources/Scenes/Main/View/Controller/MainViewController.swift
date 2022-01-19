//
//  ViewController.swift
//  Alarm Bear
//
//  Created by Gustavo Kumasawa on 18/01/22.
//

import UIKit

class MainViewController: UIViewController {
    private lazy var headerView: MainHeaderView = {
        let view = MainHeaderView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    private lazy var onOffButton: OnOffButton = {
        let button = OnOffButton()
        button.backgroundColorName = "buttonRed"
        button.titleColorName = "textWhite"
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupView()
        self.setupHierarchy()
        self.setupConstraints()
    }
    
    private func setupView() {
        self.view.backgroundColor = UIColor(named: "backgroundGreen")
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    private func setupHierarchy() {
        self.view.addSubview(headerView)
//        self.view.addSubview(onOffButton)
    }
    
    private func setupConstraints() {
        let safeAreaLayoutGuide = self.view.safeAreaLayoutGuide
        
        let constraints: [NSLayoutConstraint] = [
            headerView.topAnchor.constraint(
                equalTo: safeAreaLayoutGuide.topAnchor,
                constant: LayoutMetrics.headerViewTopOffset
            ),
            headerView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            headerView.leadingAnchor.constraint(
                equalTo: self.view.leadingAnchor,
                constant: LayoutMetrics.headerViewHorizontalPadding
            ),
            headerView.trailingAnchor.constraint(
                equalTo: self.view.trailingAnchor,
                constant: -LayoutMetrics.headerViewHorizontalPadding
            ),
        ]
        
        NSLayoutConstraint.activate(constraints)
    }

    @objc private func turnOnAlarmPress() {
        print("turn alarm on")
    }
    
    @objc private func turnOffAlarmPress() {
        print("turn alarm off")
    }
    
    @objc private func stopAlarmPress() {
        print("stop alarm")
        
    }
    
    enum LayoutMetrics {
        static let headerViewTopOffset: CGFloat = 10
        static let headerViewHorizontalPadding: CGFloat = 16
    }
}

