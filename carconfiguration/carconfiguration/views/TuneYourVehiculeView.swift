//
//  TuneYourvehiculeView.swift
//  carconfiguration
//
//  Created by NTCHORERE on 06/11/2023.
//

import Foundation
import SwiftUI

struct TuneYourVehiculeView: View {
    
    var total : Int
    var creditsAvailable : Int
    
    @State var selectedOption :  Int
    
    let repository = StockRepository.shared
    let productsType : [Product]
    let productsTires : [Product]
    let productsExtra : [Product]
    
    
    init() {
        
        self.total = 0
        self.creditsAvailable = 215
        
        selectedOption = 1

        
        self.productsType = repository.productsType
        self.productsTires = repository.productsTires
        self.productsExtra = repository.productsExtra
    }
    
    var body: some View {
        NavigationView {
            VStack {
                ProductTypeView(stockRepository: repository)
                NavigationLink(destination: PurchaseDoneView()) {
                    Button("Purchase") {
                            // on click
                    }
                    .frame(width: 350, height: 40)
                    .foregroundColor(.white)
                    .background(Color.indigo)
                    .cornerRadius(15)
                }
            }
            
        }
    }
    
}

#Preview {
    TuneYourVehiculeView()
}
