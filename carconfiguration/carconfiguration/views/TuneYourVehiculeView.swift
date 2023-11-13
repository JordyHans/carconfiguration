//
//  TuneYourvehiculeView.swift
//  carconfiguration
//
//  Created by NTCHORERE on 06/11/2023.
//

import Foundation
import SwiftUI

struct TuneYourVehiculeView: View {
    
    @State var total : Int
    @State var creditsAvailable : Int
    
   @State var selectedOptionType: Int
   @State var selectedOptionTires: Int
    
    var repository : StockRepository
    let productsType : [Product]
    let productsTires : [Product]
    let productsExtra : [Product]
    
    
    init() {
        
        self.total = 0
        self.creditsAvailable = 215
        
        self.repository = StockRepository.shared
        
        selectedOptionType = 1
        selectedOptionTires = 1
        
        self.productsType = repository.productsType
        self.productsTires = repository.productsTires
        self.productsExtra = repository.productsExtra
    }
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 70) {
                VStack(spacing: 20) {
                    Text("Type")
                    HStack(spacing: 16) {
                         VStack(spacing: 16) {
                             RadioButtonView(index: 1, selectedIndex: $selectedOptionType)
                             RadioButtonView(index: 2, selectedIndex: $selectedOptionType)
                             RadioButtonView(index: 3, selectedIndex: $selectedOptionType)
                         }
                        VStack(spacing: 10) {
                            ProductView(product: productsType[0])
                            ProductView(product: productsType[1])
                            ProductView(product: productsType[2])

                        }
                    }
                }
                VStack(spacing:20) {
                    Text("Tires")
                    HStack(spacing: 16) {
                         VStack(spacing: 16) {
                             RadioButtonView(index: 1, selectedIndex: $selectedOptionTires)
                             RadioButtonView(index: 2, selectedIndex: $selectedOptionTires)
                         }
                        VStack(spacing: 10) {
                            ProductView(product: productsTires[0])
                            ProductView(product: productsTires[1])
                        }
                    }
                }
            }
           NavigationLink(destination: PurchaseDoneView()) {
                 Button("Purchase") {}
                       .frame(width: 350, height: 40)
                       .foregroundColor(.white)
                       .background(Color.indigo)
                       .cornerRadius(15)
           }
        }
    }
    
}

#Preview {
    TuneYourVehiculeView()
}
