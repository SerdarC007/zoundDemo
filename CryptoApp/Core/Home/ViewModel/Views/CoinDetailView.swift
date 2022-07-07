//
//  CoinDetailView.swift
//  CryptoApp
//
//  Created by Serdar Celiker on 2022-07-05.
//

import SwiftUI

struct CoinDetailView: View {
    let coin: CoinModel

    
    var body: some View {
        ScrollView {
            VStack {
                Text("Price Information")
                    .foregroundColor(Color.theme.accent)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                Text("Highprice: \(coin.highPrice.currencyFormatting())")
                    .foregroundColor(Color.theme.red)
                Text("Lowprice: \(coin.lowPrice.currencyFormatting())")
                    .foregroundColor(Color.theme.green)
                Text("Openprice: \(coin.openPrice.currencyFormatting())")
                    .foregroundColor(Color.theme.accent)
                Text("Lastprice: \(coin.lastPrice.currencyFormatting())")
                    .foregroundColor(Color.theme.red)
                Text("Askprice: \(coin.askPrice.currencyFormatting())")
                    .foregroundColor(.cyan)
                Text("Askprice: \(coin.at.description.currencyFormatting())")
                    .foregroundColor(.yellow)
                
                Spacer()
                
                Text("Krypto?")
                    .foregroundColor(Color.theme.accent)
                    .font(.title2)
                    .padding()
                VStack{
                    Image("coin")
                        .resizable()
                        .frame(width: 152.0, height: 152.0)

                    
                    VStack {
                        Text("What is cryptocurrency? A cryptocurrency is a digital currency, which is an alternative form of payment created using encryption algorithms. The use of encryption technologies means that cryptocurrencies function both as a currency and as a virtual accounting system. To use cryptocurrencies, you need a cryptocurrency wallet. These wallets can be software that is a cloud-based service or is stored on your computer or on your mobile device. The wallets are the tool through which you store your encryption keys that confirm your identity and link to your cryptocurrency.")
                                
                                .foregroundColor(Color.theme.accent)
                                .font(.body)
                                .lineLimit(nil)
                                .fixedSize(horizontal: false, vertical: true)
                                .padding()
                                
                    }

                    
                    
                }
       

                
            }

            .navigationTitle(coin.symbol)
            .navigationBarTitleDisplayMode(.inline)

    }


           
        
   
    }

}



struct CoinDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CoinDetailView(coin: dev.coin)
        
    }
    
}
