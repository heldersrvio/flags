//
//  ViewController.swift
//  Flags

//  Created by Helder on 19/06/20.
//  Copyright © 2020 Helder de Melo Sérvio Filho. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var countries: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries += ["Estonia", "France", "Germany", "Ireland", "Italy", "Monaco", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"]
        title = "Country flags"
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Flag", for: indexPath) as! TableViewCell
        cell.countryFlagImg.image = UIImage(named: countries[indexPath.row].lowercased())
        cell.countryName.text = countries[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let dvc = storyboard?.instantiateViewController(identifier: "Detail") as? DetailViewController{
            dvc.name = countries[indexPath.row]
            dvc.imageName = countries[indexPath.row].lowercased()
            navigationController?.pushViewController(dvc, animated: true)
        }
    }
    


}

