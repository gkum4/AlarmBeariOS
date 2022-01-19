//
//  MainHeaderView.swift
//  Alarm Bear
//
//  Created by Gustavo Kumasawa on 19/01/22.
//

import UIKit

class MainHeaderView: UIView {
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Alarm Bear"
        label.font = UIFont.systemFont(
            ofSize: LayoutMetrics.labelFontSize,
            weight: LayoutMetrics.labelFontWeight
        )
        label.textColor = UIColor(named: "textWhite")
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var bearImageView: UIImageView = {
        let image = UIImage(named: "bearHeaderImage")
        
        let imageView = UIImageView()
        imageView.image = image
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    init() {
        super.init(frame: .zero)
        
        self.setupViews()
        self.setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        self.addSubview(titleLabel)
        self.addSubview(bearImageView)
    }
    
    private func setupConstraints() {
        let constraints: [NSLayoutConstraint] = [
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor),
            titleLabel.leftAnchor.constraint(equalTo: self.leftAnchor),
        
            bearImageView.topAnchor.constraint(equalTo: self.topAnchor),
            bearImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            bearImageView.widthAnchor.constraint(equalToConstant: LayoutMetrics.imageWidth),
            bearImageView.heightAnchor.constraint(equalToConstant: LayoutMetrics.imageHeight)
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
    
    enum LayoutMetrics {
        static let labelFontSize: CGFloat = 36
        static let labelFontWeight: UIFont.Weight = .bold
        static let imageWidth: CGFloat = 48
        static let imageHeight: CGFloat = 51
    }
}
