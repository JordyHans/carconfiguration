//
//  RadioButtonView.swift
//  carconfiguration
//
//  Created by NTCHORERE on 13/11/2023.
//

import Foundation

import SwiftUI

struct RadioButtonView: View {

    var index: Int
    @Binding var selectedIndex: Int
    
    var body: some View {
        Button(action: {
            selectedIndex = index
        }) {
            HStack {
                Image(systemName: self.selectedIndex == self.index ? "largecircle.fill.circle" : "circle")
                    .foregroundColor(.indigo)
            }
        }
    }
}
