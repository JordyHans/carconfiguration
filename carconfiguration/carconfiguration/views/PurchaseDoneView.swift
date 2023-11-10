//
//  PurchaseDoneView.swift
//  carconfiguration
//
//  Created by NTCHORERE on 06/11/2023.
//

import Foundation
import SwiftUI

struct PurchaseDoneView: View {
    var body: some View {
        Button("Copy to clipboard") {
            // on click
        }
        .frame(width: 350, height: 40)
        .foregroundColor(.white)
        .background(Color.indigo)
        .cornerRadius(15)

        
        Image("helmet")
            .resizable()
            .frame(width: 200, height: 160)
            .padding(60)
            
    }
}


#Preview {
    PurchaseDoneView()
}
