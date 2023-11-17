//
//  PurchaseDoneView.swift
//  carconfiguration
//
//  Created by NTCHORERE on 06/11/2023.
//

import Foundation
import SwiftUI

struct PurchaseDoneView: View {
    
    /*var total : Int
    var calcCreditsAvailable: Int
    var selectedOptionType : Bool
    var selectedOptionTires: Bool
    var isCheckedNitro : Bool
    var isCheckedSpoiler: Bool*/
    
    var repository = StockRepository.shared
    
    var body: some View {
        VStack(spacing: 10) {
            Button("Copy to clipboard") {
                // on click
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
}


#Preview {
    PurchaseDoneView()
}
