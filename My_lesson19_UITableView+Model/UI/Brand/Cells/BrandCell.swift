//
//  BrandCell.swift
//  My_lesson19_UITableView+Model
//
//  Created by OlegChudnovskiy on 11.05.2020.
//  Copyright © 2020 Олег Чудновский. All rights reserved.
//

import UIKit

class BrandCell: TableCell { 
    @IBOutlet private var brandName: UILabel?
    
    var brand: Brand? {
        didSet {
            brandName?.text = brand?.name
        }
    }
    
}
