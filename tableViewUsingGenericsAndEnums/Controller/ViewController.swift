//
//  ViewController.swift
//  tableViewUsingGenericsAndEnums
//
//  Created by Mohamed Samir on 10/11/19.
//  Copyright © 2019 Mohamed Samir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.registerNib(cell: TableViewCell.self)
        
    }
}
extension ViewController : UITableViewDelegate , UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.deque() as TableViewCell
        return cell 
    }
    
}
