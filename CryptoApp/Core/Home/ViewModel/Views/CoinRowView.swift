//
//  CoinRowView.swift
//  CryptoApp
//
//  Created by Serdar Celiker on 2022-07-02.
//

import SwiftUI

struct CoinRowView: View {
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
                Text("Open Price: \(coin.openPrice.currencyFormatting())")
                    .bold()
                    .foregroundColor(Color.theme.accent)
                    
                    
                Text("Bid: \(coin.bidPrice.currencyFormatting())")
                    .foregroundColor(Color.theme.green)
                
                Text("Ask Price: \(coin.askPrice.currencyFormatting())")
                    .foregroundColor(Color.purple)
                    


                
            }
            
        }
    }
}

struct CoinRowView_Previews: PreviewProvider {
    static var previews: some View {
        CoinRowView(coin: dev.coin)
    }
}
