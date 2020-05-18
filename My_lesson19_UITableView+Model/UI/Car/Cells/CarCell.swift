//
//  CarCell.swift
//  My_lesson19_UITableView+Model
//
//  Created by Олег Чудновский on 18.05.2020.
//  Copyright © 2020 Олег Чудновский. All rights reserved.
//

import UIKit

class CarCell: TableCell {
    @IBOutlet private var carName: UILabel?
    @IBOutlet private var separated: UIView?
    
    var car: Car? {
        didSet {
            carName?.text = car?.name
        }
    }
}

extension CarCell: SeparatedProtocol {
    var separatedView: UIView? {
        return separated
    }
}
