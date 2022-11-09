//
//  CustomTableViewCell.swift
//  Layout
//
//  Created by Audrey SOBGOU ZEBAZE on 15/12/2021.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var leftLabel: UILabel!
    
    @IBOutlet weak var rightLabel: UILabel!
    
    var view: UIView = UIView()

    func configUI(with course: Course) {
        leftLabel.text = course.name
        rightLabel.text = "\(course.hours)"
        // addView()
    }
    
    func addView() {
        view.frame = CGRect(origin: CGPoint(x: 50, y: 60), size: CGSize(width: 100, height: 50))
        view.backgroundColor = .red
        contentView.addSubview(view)
    }
}
