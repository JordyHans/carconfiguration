//
//  product.swift
//  carconfiguration
//
//  Created by NTCHORERE on 10/11/2023.
//

import Foundation

import SwiftUI

struct Product : Identifiable {
    let id = UUID()
    
    var name: String
    var credits: Int
}
