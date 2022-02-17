//
//  ViewController.swift
//  ListaFilme
//
//  Created by Katia Cristina Rodrigues on 14/02/22.
//

import UIKit
import Alamofire
import AlamofireImage


class ViewController: UIViewController{
    
    var MovieData:[Result?] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ApiMovie()
    }

    // MARK: - Table view data source

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MovieData.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "capa", for: indexPath) as! tableViewCell
        let titulo = MovieData[indexPath.row]
        cell.image(atributo: titulo)
        return cell
    }
     
        func ApiMovie(){
        MovieAPI.MoviesLoad (onComplete: { (receberFilmes) in
            if let movies = receberFilmes{
                self.MovieData += movies.results
                DispatchQueue.main.async {
                    self.tableViewCell.reloadData()
                }
            }
        })
    }
    

    
    
 
}

