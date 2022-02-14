//
//  ViewController.swift
//  AppListaFilmes
//
//  Created by Katia Cristina Rodrigues on 14/02/22.
//

import UIKit


class ViewController: UIViewController, UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell( )
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    @IBOutlet var table: UITableView!
    @IBOutlet var field: UITextField!
    
    var movies = [Movie]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        table.delegate = self
        table.dataSource = self
        field.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchMovies()
        return true
    }
    
    func searchMovies() {
    field.resignFirstResponder()
    }
        

}
  
    
 
struct Movie {
    
}
 


