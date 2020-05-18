//
//  BrandsListController.swift
//  My_lesson19_UITableView+Model
//
//  Created by OlegChudnovskiy on 11.05.2020.
//  Copyright © 2020 Олег Чудновский. All rights reserved.
//

import UIKit

class BrandsListController: TableViewController {

    //MARK: - setup
    override func setup() {
        super.setup()
        self.title = "Список брендов"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dataSource.append(contentsOf: Brand.testData())
    }
    
    override func registerCells() {
        self.tableView?.register(BrandCell.nib, forCellReuseIdentifier: BrandCell.reuseIdentifier)
    }
    
    // MARK: - UITableViewDataSource
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: BrandCell.reuseIdentifier, for: indexPath)
        if let cell = cell  as? BrandCell, let brand = dataSource[indexPath.row] as? Brand {
            cell.brand = brand
        }
        return cell
    }
    
    //MARK: - UITableViewDelegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        super.tableView(tableView, didSelectRowAt: indexPath)
        
        if let brand = dataSource[indexPath.row] as? Brand {
            let controller = CarsListController(brand: brand)
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }
}
