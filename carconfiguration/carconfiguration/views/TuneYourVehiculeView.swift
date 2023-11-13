//
//  TuneYourvehiculeView.swift
//  carconfiguration
//
//  Created by NTCHORERE on 06/11/2023.
//

import Foundation
import SwiftUI

struct TuneYourVehiculeView: View {
    
    @State var selectedOptionType: Int
    @State var selectedOptionTires: Int
    
    @State var isCheckedNitro : Bool
    @State var isCheckedSpoiler : Bool
    
    var repository : StockRepository
    let productsType : [Product]
    let productsTires : [Product]
    let productsExtra : [Product]
    
    init() {
        
        self.repository = StockRepository.shared
        
        self.selectedOptionType = 1
        self.selectedOptionTires = 1
        
        self.isCheckedNitro = false
        self.isCheckedSpoiler = false
        
        
        self.productsType = repository.productsType
        self.productsTires = repository.productsTires
        self.productsExtra = repository.productsExtra

    }
    
    var body: some View {
        Text("Tune your vehicule")
            .font(.title)
            .frame(maxWidth: .infinity,
                   alignment: .leading
            )
        NavigationStack {
            VStack(spacing: 50) {
                VStack(spacing: 20) {
                    Text("Type")
                        .font(.title)
                        .frame(maxWidth: .infinity,
                               alignment: .leading
                        )
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
                        .font(.title)
                        .frame(maxWidth: .infinity,
                               alignment: .leading
                        )
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
                VStack(spacing:20) {
                    Text("Extra")
                        .font(.title)
                        .frame(maxWidth: .infinity,
                               alignment: .leading
                        )
                    HStack(spacing: 16) {
                         VStack(spacing: 16) {
                             CheckboxView(isChecked: $isCheckedNitro)
                             CheckboxView(isChecked: $isCheckedSpoiler)
                         }
                        VStack(spacing: 10) {
                            ProductView(product: productsExtra[0])
                            ProductView(product: productsExtra[1])
                        }
                    }
                }

                TotalView(total: calcTotal(), creditsAvailable:  calcCreditsAvailable())
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
    
    func calcTotal() -> Int {
        var total = 0
        
        // choix du type de vehicule
        if(selectedOptionType == 3) {
            total += 50
        }
        
        // choix du type de pneu
        if(selectedOptionTires == 2) {
            total += 30
        }
        
        
        // Si on choisit le Nitro
        if(isCheckedNitro) {
            total += 100
        }
        
        // Si on choisit le Spoiler
        if(isCheckedSpoiler) {
            total += 200
        }
        return total
    }
    
    
    
    func calcCreditsAvailable() -> Int {
        var credit = 215
        
        // choix du type de vehicule
        if(selectedOptionType == 3) {
            credit -= 50
        }
        
        // choix du type de pneu
        if(selectedOptionTires == 2) {
            credit -= 30
        }
        
        
        // Si on choisit le Nitro
        if(isCheckedNitro) {
            credit -= 100
        }
        
        // Si on choisit le Spoiler
        if(isCheckedSpoiler) {
            credit -= 200
        }
        
        return credit
    }
    

}



#Preview {
    TuneYourVehiculeView()
}
