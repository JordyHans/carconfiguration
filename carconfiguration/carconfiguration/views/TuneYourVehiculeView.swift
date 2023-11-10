//
//  TuneYourvehiculeView.swift
//  carconfiguration
//
//  Created by NTCHORERE on 06/11/2023.
//

import Foundation
import SwiftUI

struct TuneYourVehiculeView: View {
    
    var body: some View {
        NavigationView {
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

#Preview {
    TuneYourVehiculeView()
}
