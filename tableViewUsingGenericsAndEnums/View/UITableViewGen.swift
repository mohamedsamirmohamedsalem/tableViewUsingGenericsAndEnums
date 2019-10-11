//
//  UITableViewGen.swift
//  tableViewUsingGenericsAndEnums
//
//  Created by Mohamed Samir on 10/11/19.
//  Copyright © 2019 Mohamed Samir. All rights reserved.
//

import Foundation
import UIKit

extension UITableView {
    
    func registerNib<cell : UITableViewCell>(cell : cell.Type){
        let nibName = String(describing: cell.self)
        self.register(UINib(nibName: nibName, bundle: nil), forCellReuseIdentifier: nibName)
    }
    
    func deque<cell : UITableViewCell>()-> cell{
        let identifier = String(describing: cell.self)
        guard let cell = self.dequeueReusableCell(withIdentifier: identifier) as? cell
            else {fatalError("=====>Error in cell") }
        return cell
    }
}
