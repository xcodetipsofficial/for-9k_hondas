//
//  K20tableview.swift
//  Honda Info
//
//  Created by Kane Nevill on 03/06/2020.
//  Copyright © 2020 Kane Nevill. All rights reserved.
//

import SwiftUI
import UIKit

class K20tableview: UIViewController {
    
    @IBOutlet weak var k20TableView: UITableView!
    
    var data = ["","",""]
    var data2 = ["","",""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        k20TableView.delegate = self
        k20TableView.dataSource = self
        let nib = UINib(nibName: "YourTableViewCell", bundle: nil)
        k20TableView.register(nib, forCellReuseIdentifier: "cell")
    }
}

extension K20tableview: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! YourTableViewCell
        cell.label1.text = data[indexPath.row]
        cell.label2.text = data2[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "segue", sender: nil)
        
    }
    
}
