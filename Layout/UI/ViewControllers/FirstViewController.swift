//
//  FirstViewController.swift
//  Layout
//
//  Created by Audrey SOBGOU ZEBAZE on 08/12/2021.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var iconImageView: UIImageView!
    
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        // Do any additional setup after loading the view.
        
        setupUI()
    }

    func setupUI() {
        // let color = UIColor(named: "Primary")
        //let color: UIColor = .primary

        //view.backgroundColor = color
        titleLabel.text = "Coucou"
        iconImageView.image = UIImage(systemName: "trash")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")

    }

    // MARK: Actions
    
    @IBAction func showNextView(_ sender: Any) {
       performSegue(withIdentifier: "presentSecondViewControllerSegue", sender: sender)
    }
    
}

