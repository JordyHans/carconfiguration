//
//  stockrepository.swift
//  carconfiguration
//
//  Created by NTCHORERE on 10/11/2023.
//

import Foundation

class StockRepository {
    
    static let shared = StockRepository()
    
    private(set) var products = [
        Product(name: "Car", credits: 0, isChosen: false),
        Product(name: "MotorBike", credits: 0, isChosen: false),
        Product(name: "Hovercraft", credits: 50, isChosen: false),
        Product(name: "Hard tires", credits: 0, isChosen: false),
        Product(name: "Soft tires", credits: 30, isChosen: false),
        Product(name: "Nitro (10 units)", credits: 100, isChosen: false),
        Product(name: "Spoiler", credits: 200, isChosen: false),
    ]
    
}
