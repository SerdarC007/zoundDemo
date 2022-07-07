//
//  SwedishCoinRowView.swift
//  CryptoApp
//
//  Created by Serdar Celiker on 2022-07-04.
//

import SwiftUI

struct SwedishCoinRowView: View {
    let coin: CoinModel

    var body: some View {
        HStack(spacing: 0) {
            
            Circle()
                .frame(width: 30, height: 30)
            
            Text(coin.symbol.uppercased())
                .font(.headline)
                .padding(.leading, 6)
            
            Spacer()
            
            VStack(alignment: .trailing) {
                
                Text("Öppna Pris: \(coin.openPriceConverted) SEK")
                    .bold()
                    .foregroundColor(Color.theme.accent)
                    
                    
                Text("Bud: \(coin.bidPriceConverted) SEK")
                    .foregroundColor(Color.theme.green)
                
                Text("Pris: \(coin.askPriceConverted) SEK")
                    .foregroundColor(Color.purple)
                
              
            
                    


                
            }
            
        }
    }
}

struct SwedishCoinRowView_Previews: PreviewProvider {
    static var previews: some View {
        SwedishCoinRowView(coin: dev.coin)
    }
}
