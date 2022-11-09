//
//  CoursesViewController.swift
//  Layout
//
//  Created by Audrey SOBGOU ZEBAZE on 08/12/2021.
//

import UIKit

class CoursesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 90
        tableView.estimatedRowHeight = 90
        tableView.sectionHeaderHeight = 70
    }
    
    @IBAction func dismissView(_ sender: Any) {
        print("dismissView")
        //navigationController?.dismiss(animated: true, completion: nil)
        //dismiss(animated: true, completion: nil)
        //navigationController?.popToRootViewController(animated: true)
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 1 {
            
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! CustomTableViewCell
        let currentCourse = CoursesMock.courses()[indexPath.row]
        cell.configUI(with: currentCourse)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        CoursesMock.courses().count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        3
    }
    
    /*func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = .green
        return view
    }*/
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "SECTION \(section + 1)"
    }
        
}
