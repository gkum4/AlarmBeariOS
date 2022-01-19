//
//  OnOffButton.swift
//  Alarm Bear
//
//  Created by Gustavo Kumasawa on 19/01/22.
//

import UIKit

class OnOffButton: UIButton {
    var titleText: String? {
        didSet {
            setTitle(titleText, for: .normal)
            self.titleLabel?.font = UIFont.systemFont(
                ofSize: LayoutMetrics.buttonTitleFontSize,
                weight: LayoutMetrics.buttonTitleFontWeight
            )
        }
    }
    
    var backgroundColorName: String? {
        didSet {
            backgroundColor = UIColor(named: backgroundColorName ?? "buttonBlue")
        }
    }
    
    var titleColorName: String? {
        didSet {
            setTitleColor(UIColor(named: titleColorName ?? "textWhite"), for: .normal)
        }
    }
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)

        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.cornerRadius = LayoutMetrics.buttonCornerRadius
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    enum LayoutMetrics {
        static let buttonHeight: CGFloat = 90
        static let buttonWidth: CGFloat = 90
        static let buttonCornerRadius: CGFloat = buttonHeight / 2
        static let buttonTitleFontSize: CGFloat = 14
        static let buttonTitleFontWeight: UIFont.Weight = .bold
    }
}
