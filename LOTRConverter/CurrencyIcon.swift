//
//  CurrencyIcon.swift
//  LOTRConverter
//
//  Created by alex on 6/13/23.
//

import SwiftUI

struct CurrencyIcon: View {
    @State var currencyImage: String
    @State var currencyText: String
    
    var body: some View {
        ZStack{
            // currency image
            Image(currencyImage)
                .resizable()
                .scaledToFit()
            
            //currency text
            VStack {
                Spacer()
                
                Text(currencyText)
                    .padding(3)
                    .font(.caption)
                    .background(.brown.opacity(0.75))
            }
        }
        .padding(3)
        .frame(width: 100, height: 100)
        .background(.brown)
        .cornerRadius(25)
    }
}

struct CurrencyIcon_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyIcon(currencyImage: "copperpenny", currencyText: "Copper Penny")
            .previewLayout(.sizeThatFits)
    }
}
