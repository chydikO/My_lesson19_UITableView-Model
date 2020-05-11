//
//  BrandsListController.swift
//  My_lesson19_UITableView+Model
//
//  Created by OlegChudnovskiy on 11.05.2020.
//  Copyright © 2020 Олег Чудновский. All rights reserved.
//

import UIKit

class BrandsListController: TableViewController {

    override func setup() {
        super.setup()
        self.title = "Список брендов"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSourse.append(contentsOf: Brand.testData())
    }
    override func registerCells() {
        self.tableView?.register(TableCell.nib, forCellReuseIdentifier: BrandCell.reuseIdentifier)
    }
}
