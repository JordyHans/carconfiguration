//
//  ProductView.swift
//  carconfiguration
//
//  Created by NTCHORERE on 13/11/2023.
//

import Foundation

import SwiftUI

struct ProductView:  View {
        
    let product : Product
       
    var body: some View {
        HStack(spacing: 16) {
            Text(product.name)
                        .lineLimit(1)
                        .truncationMode(.tail)
                        .frame(maxWidth: 250,
                               alignment: .leading)
            Text("\(product.credits) credits")
            
        }
    }
    
}



