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
    
    var isCheckNitro : Bool // pour savoir si on a appuyé sur le nitro dans le cas de boutons tires bien-sûr
    
    var body: some View {
        Button(action: {
            // pour désactiver les boutons tires si on a appuyé sur le nitro dans le cas de boutons tires bien-sûr
            selectedIndex = typeOrtires == 1 ? index : isCheckNitro ? 0 : index
        }) {
            HStack {
                Image(systemName: self.selectedIndex == self.index ? "largecircle.fill.circle" : "circle")
                    .foregroundColor(typeOrtires == 1 ? .indigo : isCheckNitro ? .gray : .indigo)
            }
        }
    }
}
