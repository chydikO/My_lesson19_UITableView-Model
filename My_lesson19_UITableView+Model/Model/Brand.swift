//
//  Brand.swift
//  My_lesson19_UITableView+Model
//
//  Created by Олег Чудновский on 10.05.2020.
//  Copyright © 2020 Олег Чудновский. All rights reserved.
//

import Foundation

struct Brand {
    let name: String
    
    static func testData() -> [Brand] {
        return [Brand(name: "BMW"), Brand(name: "Honda"), Brand(name: "Volvo")]
    }
}
