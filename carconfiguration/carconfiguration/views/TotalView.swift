//
//  TotalView.swift
//  carconfiguration
//
//  Created by NTCHORERE on 13/11/2023.
//

import Foundation

import SwiftUI

struct TotalView:  View {
        
    let total: Int
    let creditsAvailable : Int
    
    let creditTotal = 215
    
    
       
    var body: some View {
        HStack(spacing: 16) {
            Text("Total")
                .font(.title)
                .frame(maxWidth: .infinity,
                       alignment: .leading
                )
            VStack(spacing: 0) {
                Text("\(total) credits")
                if(creditsAvailable >= 0 && creditsAvailable <= creditTotal) {
                    Text("\(creditTotal) credits available")
                } else {
                    Text("215 credits available")
                        .foregroundStyle(.red)
                }
            }
        }
    }
    
}


