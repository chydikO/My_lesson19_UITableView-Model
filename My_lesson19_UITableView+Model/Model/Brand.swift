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
    let cars: [Car] 
    
    
    static func testData() -> [Brand] {
        let bmvX4 = Car(name: "X4", specs: [Spec(name: "top", price: 35_000),
                                                Spec(name: "premium", price: 40_000)])
            
        let bmvX5 = Car(name: "X5", specs: [Spec(name: "base", price: 40_000),
                                                Spec(name: "top", price: 45_000),
                                                Spec(name: "premium", price: 50_000)])
            
            //
            let XC40 = Car(name: "XC40", specs: [Spec(name: "top", price: 35_000),
                                                 Spec(name: "premium", price: 40_000)])
            let XC60 = Car(name: "XC60", specs: [Spec(name: "top", price: 35_000),
                                                 Spec(name: "premium", price: 40_000)])
            let XC90 = Car(name: "XC90", specs: [Spec(name: "top", price: 35_000),
                                                 Spec(name: "premium", price: 40_000)])
            
            //
            let CRV = Car(name: "CRV", specs: [Spec(name: "top", price: 28_000),
                                               Spec(name: "premium", price: 32_000)])
            let Civic = Car(name: "Civic", specs: [Spec(name: "top", price: 33_000),
                                                   Spec(name: "premium", price: 47_000)])
            
            return [Brand(name: "BMW", cars: [bmvX4, bmvX5]),
                    Brand(name: "Volvo", cars: [XC40, XC60, XC90]),
                    Brand(name: "Honda", cars: [CRV,Civic])]
        }
}
