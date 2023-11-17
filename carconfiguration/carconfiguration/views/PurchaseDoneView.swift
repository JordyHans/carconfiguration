//
//  PurchaseDoneView.swift
//  carconfiguration
//
//  Created by NTCHORERE on 06/11/2023.
//

import Foundation
import SwiftUI

struct PurchaseDoneView: View {
    
    var total : Int
    var creditsAvailable : Int
    var calcCreditsAvailable: Int
    var selectedOptionType : Int
    var selectedOptionTires: Int
    var isCheckedNitro : Bool
    var isCheckedSpoiler: Bool
    
    var repository = StockRepository.shared
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Total amount: \(total) credits - Purchased: \(whichType())\(whichType() == "" ? "" : ",") \(whichTires())\(whichTires() == "" ? "" : ",") \(whichNitro())\(whichNitro() == "" ? "" : ",") \(whichSpoiler())  - Credits left: \(creditsAvailable)")
            Button("Copy to clipboard") {
                copyToClipboard()
            }   .frame(width: 350, height: 40)
                .foregroundColor(.white)
                .background(Color.indigo)
                .cornerRadius(15)
            Image("helmet")
                .resizable()
                .frame(width: 200, height: 160)
                .padding(60)
                
        }.toolbar {
            ToolbarItem(placement: .principal) {
                Text("Purchase done")
                    .font(.largeTitle.bold())
                    .accessibilityAddTraits(/*@START_MENU_TOKEN@*/.isHeader/*@END_MENU_TOKEN@*/)
            }
        }
        
    }
    
    func whichType() -> String {
        var chaine = ""
        if(selectedOptionType == 1) {
            chaine = repository.productsType[0].name
        } else if(selectedOptionType == 2) {
            chaine = repository.productsType[1].name
        } else if(selectedOptionType == 3) {
            chaine = repository.productsType[2].name
        } else {
            chaine = ""
        }
        return chaine
    }
    
    func whichTires() -> String {
        var chaine = ""
        if(selectedOptionType == 3) {
            chaine = ""
            return chaine
        }
        if(selectedOptionTires == 1) {
            chaine = repository.productsTires[0].name
        } else if(selectedOptionTires == 2) {
            chaine = repository.productsTires[1].name
        } else {
            chaine = ""
        }
        return chaine
    }
    
    func whichNitro() -> String {
        var chaine = ""
        if(isCheckedNitro) {
            chaine = repository.productsExtra[0].name
        } else {
            chaine = ""
        }
        return chaine
    }
    
    func whichSpoiler() -> String {
        var chaine = ""
        if(isCheckedSpoiler) {
            chaine = repository.productsExtra[1].name
        } else {
            chaine = ""
        }
        return chaine
    }
    
    func copyToClipboard(){
        @State var text: String = "Total amount: \(total) credits - Purchased: \(whichType())\(whichType() == "" ? "" : ",") \(whichTires())\(whichTires() == "" ? "" : ",") \(whichNitro())\(whichNitro() == "" ? "" : ",") \(whichSpoiler())  - Credits left: \(creditsAvailable)"
        UIPasteboard.general.string = text
        
    }
    
}
