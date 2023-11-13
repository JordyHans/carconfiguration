//
//  stockrepository.swift
//  carconfiguration
//
//  Created by NTCHORERE on 10/11/2023.
//

import Foundation

class StockRepository {
    
    static let shared = StockRepository()
    
    private(set) var productsType = [
        Product(name: "Car  ", credits: 0),
        Product(name: "MotorBike  ", credits: 0),
        Product(name: "Hovercraft", credits: 50)
    ]
    
    private(set) var productsTires = [
        Product(name: "Hard tires  ", credits: 0),
        Product(name: "Soft tires", credits: 30)
        
    ]
    
    private(set) var productsExtra = [
        Product(name: "Nitro (10 units)", credits: 100),
        Product(name: "Spoiler", credits: 200)
    ]
    
}
