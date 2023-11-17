//
//  TuneYourvehiculeView.swift
//  carconfiguration
//
//  Created by NTCHORERE on 06/11/2023.
//

import Foundation
import SwiftUI

struct TuneYourVehiculeView: View {
    
    var index : Int
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
        
        self.index = 1
        self.selectedOptionType = 0
        self.selectedOptionTires = 0
        
        self.isCheckedNitro = false
        self.isCheckedSpoiler = false
        
        
        self.productsType = repository.productsType
        self.productsTires = repository.productsTires
        self.productsExtra = repository.productsExtra
    
    }
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 50) {
                VStack(spacing: 20) {
                    Text("Type")
                        .font(.custom("MyFont", size: 25))
                        .frame(maxWidth: .infinity,
                               alignment: .leading
                        )
                    HStack(spacing: 16) {
                        VStack(spacing: 16) {
                            RadioButtonView(typeOrtires: 1, index: index, selectedIndex: $selectedOptionType, isCheckNitro: isCheckedNitro)
                            RadioButtonView(typeOrtires: 1, index: index+1, selectedIndex: $selectedOptionType, isCheckNitro: isCheckedNitro)
                            RadioButtonView(typeOrtires: 1, index: index+2, selectedIndex: $selectedOptionType, isCheckNitro: isCheckedNitro)
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
                        .font(.custom("MyFont", size: 25))
                        .frame(maxWidth: .infinity,
                               alignment: .leading
                        )
                    HStack(spacing: 16) {
                         VStack(spacing: 16) {
                             RadioButtonView(typeOrtires: 2, index: index, selectedIndex: $selectedOptionTires, isCheckNitro: isCheckedNitro)
                             RadioButtonView(typeOrtires: 2, index: index+1, selectedIndex: $selectedOptionTires, isCheckNitro: isCheckedNitro)
                         }.foregroundColor(isCheckedNitro ? .gray : .black)
                        VStack(spacing: 10) {
                            ProductView(product: productsTires[0])
                            ProductView(product: productsTires[1])
                        }
                    }
                }.foregroundColor(isCheckedNitro ? .gray : .black)
                VStack(spacing:20) {
                    Text("Extras")
                        .font(.custom("MyFont", size: 25))
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
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("Tune your vehicule")
                            .font(.largeTitle.bold())
                            .accessibilityAddTraits(/*@START_MENU_TOKEN@*/.isHeader/*@END_MENU_TOKEN@*/)
                    }
                }
            NavigationLink(destination: PurchaseDoneView()
            ) {
                  Button("Purchase") {}
                        .frame(width: 350, height: 40)
                        .foregroundColor(calcCreditsAvailable() >= 0 ? .white : .black.opacity(0.6))
                        .background(calcCreditsAvailable() >= 0 ? Color.indigo : Color.gray.opacity(0.6))
                        .cornerRadius(15)
            }.disabled(calcCreditsAvailable() < 0)
        }
        .padding(20)
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
            if(selectedOptionTires == 2) {
                total -= 30
            }
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
            if(selectedOptionTires == 2) {
                credit += 30
            }
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
