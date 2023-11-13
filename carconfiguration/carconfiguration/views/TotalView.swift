//
//  TotalView.swift
//  carconfiguration
//
//  Created by NTCHORERE on 13/11/2023.
//

import Foundation

import SwiftUI

struct TotalView:  View {
        
    @Binding var total: Int
    @Binding var creditsAvailable : Int
       
    var body: some View {
        HStack(spacing: 16) {
            Text("Total")
                .font(.title)
                .frame(maxWidth: .infinity,
                       alignment: .leading
                )
            VStack(spacing: 16) {
                Text("\(total) credits")
                Text("\(creditsAvailable) credits available")
            }
        }
    }
    
}


