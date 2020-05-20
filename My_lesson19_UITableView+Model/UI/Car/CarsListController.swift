//
//  CarsListController.swift
//  My_lesson19_UITableView+Model
//
//  Created by Олег Чудновский on 18.05.2020.
//  Copyright © 2020 Олег Чудновский. All rights reserved.
//

import UIKit

class CarsListController: TableViewController {
    
    let brand: Brand
    
    //MARK: - init
    init(brand: Brand) {
        self.brand = brand
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - setup
    override func setup() {
        super.setup()
        self.title = "Список моделей"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource.append(contentsOf: brand.cars)
    }
    
    override func registerCells() {
        self.tableView?.register(CarCell.nib, forCellReuseIdentifier: CarCell.reuseIdentifier)
    }
    
    // MARK: - UITableViewDataSource
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CarCell.reuseIdentifier, for: indexPath)
        if let cell = cell  as? CarCell, let model = dataSource[indexPath.row] as? Car {
            cell.car = model
        }
        return cell
    }

    
        //MARK: - UITableViewDelegate
        override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            super.tableView(tableView, didSelectRowAt: indexPath)
            
            if let car = dataSource[indexPath.row] as? Car {
                let controller = SpecListController(car: car)
                self.navigationController?.pushViewController(controller, animated: true)
            }
        }
     
}

