//
//  AlarmStateView.swift
//  Alarm Bear
//
//  Created by Gustavo Kumasawa on 19/01/22.
//

import UIKit

class AlarmStateView: UIView {
    private lazy var headerLabel: UILabel = {
        let label = UILabel()
        label.text = "Situação do alarme:"
        label.textColor = UIColor(named: "textWhite")
        label.font = UIFont.systemFont(
            ofSize: LayoutMetrics.headerLabelFontSize,
            weight: LayoutMetrics.headerLabelFontWeight
        )
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var stateLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(named: "textWhite")
        label.font = UIFont.systemFont(
            ofSize: LayoutMetrics.headerLabelFontSize,
            weight: LayoutMetrics.headerLabelFontWeight
        )
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()

    enum LayoutMetrics {
        static let headerLabelFontSize: CGFloat = 18
        static let headerLabelFontWeight: UIFont.Weight = .medium
    }
}
