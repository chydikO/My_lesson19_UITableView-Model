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
        self.tableView?.register(BrandCell.nib, forCellReuseIdentifier: BrandCell.reuseIdentifier)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: BrandCell.reuseIdentifier, for: indexPath)
        if let cell = cell  as? BrandCell, let brand = dataSourse[indexPath.row] as? Brand {
            cell.brand = brand
        }
        return cell
    }
    
}
