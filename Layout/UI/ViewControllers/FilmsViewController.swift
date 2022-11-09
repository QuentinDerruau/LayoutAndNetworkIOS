//
//  FilmsViewController.swift
//  Layout
//
//  Created by Audrey SOBGOU ZEBAZE on 05/01/2022.
//

import UIKit

class FilmsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let moviesService = MoviesService()
    var movies: [Film] = []
    var count: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        updateTitle()
        navigationController?.navigationBar.tintColor = .yellow
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 200
        tableView.estimatedRowHeight = 200
        tableView.sectionHeaderHeight = 70
        
        moviesService.fetchMovies(Endpoint(path: "/api/films", queryItems: [])) { [weak self] (result: Result<FilmsResponse, APIServiceError>) in
            switch result {
            case .success(let response):
                DispatchQueue.main.async {
                    self?.count = response.count
                    self?.movies = response.results
                    print("movies: \(String(describing: self?.movies))")
                    self?.updateUI()
                }
            case .failure(let error):
                // Normally display something to the user (an alert for instance)
                print("Error: \(error)")
            }
        }
    }
    
    func updateUI() {
        updateTitle()
        self.tableView.reloadData()
    }
    
    func updateTitle() {
        title =  count > 0 ? "\(count) Films" : "No films"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! FilmsTableViewCell
        let currentFilm = movies[indexPath.row]
        cell.configUI(with: currentFilm)
        return cell
    }
}
