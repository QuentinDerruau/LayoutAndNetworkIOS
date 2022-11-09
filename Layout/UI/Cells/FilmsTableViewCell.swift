//
//  FilmsTableViewCell.swift
//  Layout
//
//  Created by Audrey SOBGOU ZEBAZE on 05/01/2022.
//

import UIKit

class FilmsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var episodeLabel: UILabel!
    
    @IBOutlet weak var producerLabel: UILabel!
    
    @IBOutlet weak var directorLabel: UILabel!
    
    func configUI(with film: Film) {
        titleLabel.text = film.title
    }
}
