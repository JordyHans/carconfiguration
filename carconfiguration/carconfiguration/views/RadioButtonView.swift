//
//  RadioButtonView.swift
//  carconfiguration
//
//  Created by NTCHORERE on 13/11/2023.
//

import Foundation

import SwiftUI

struct RadioButtonView: View {

    var typeOrtires : Int // pour savoir si le bouton est créé pour un type (1) ou un tires (2)
    var index: Int
    @Binding var selectedIndex: Int
    
    var selectedOptionType : Int // pour savoir si hovercraft est sélectionné
    
    var body: some View {
        Button(action: {
            // pour désactiver les boutons tires si hovercraft est sélectionné
            selectedIndex = typeOrtires == 1 ? index : selectedOptionType == 3 ? 0 : index
        }) {
            HStack {
                Image(systemName: self.selectedIndex == self.index ? "largecircle.fill.circle" : "circle")
                    .foregroundColor(typeOrtires == 1 ? .indigo : selectedOptionType == 3 ? .gray : .indigo)
            }
        }
    }
}
