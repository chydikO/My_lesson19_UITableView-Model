//
//  SpecCell.swift
//  My_lesson19_UITableView+Model
//
//  Created by Олег Чудновский on 20.05.2020.
//  Copyright © 2020 Олег Чудновский. All rights reserved.
//

import UIKit

class SpecCell: TableCell {
    @IBOutlet private var name: UILabel?
    @IBOutlet private var price: UILabel?

    @IBOutlet private var separated: UIView?
    
    var spec: Spec? {
        didSet {
            name?.text = spec?.name
            if let price = spec?.price {
                self.price?.text = String(format: "$%0.2f", price)
            } else {
                self.price?.text = nil
            }
        }
    }
}

extension SpecCell: SeparatedProtocol {
    var separatedView: UIView? {
        return separated
    }
}
