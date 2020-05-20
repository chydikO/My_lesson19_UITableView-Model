//
//  SpecListController.swift
//  My_lesson19_UITableView+Model
//
//  Created by Олег Чудновский on 20.05.2020.
//  Copyright © 2020 Олег Чудновский. All rights reserved.
//

import UIKit

class SpecListController: TableViewController {

    let car: Car
        
        //MARK: - init
        init(car: Car) {
            self.car = car
            super.init(nibName: nil, bundle: nil)
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        //MARK: - setup
        override func setup() {
            super.setup()
            self.title = "Список спецификаций "
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            dataSource.append(contentsOf: car.specs)
        }
        
        override func registerCells() {
            self.tableView?.register(SpecCell.nib, forCellReuseIdentifier: SpecCell.reuseIdentifier)
        }
        
        // MARK: - UITableViewDataSource
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: SpecCell.reuseIdentifier, for: indexPath)
            if let cell = cell as? SpecCell, let spec = dataSource[indexPath.row] as? Spec {
                cell.spec = spec
            }
            return cell
        }

        /*
            //MARK: - UITableViewDelegate
            override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
                super.tableView(tableView, didSelectRowAt: indexPath)
                
                if let brand = dataSource[indexPath.row] as? Brand {
        //            let controller = CarsListController(brand: brand)
        //            self.navigationController?.pushViewController(controller, animated: true)
                }
            }
         */
    }
