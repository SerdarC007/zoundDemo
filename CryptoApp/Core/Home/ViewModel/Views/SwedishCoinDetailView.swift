//
//  SwedishCoinDetailView.swift
//  CryptoApp
//
//  Created by Serdar Celiker on 2022-07-07.
//

import SwiftUI

struct SwedishCoinDetailView: View {
    let coin: CoinModel

    var body: some View {
        ScrollView {
            VStack {
                Text("Pris Information")
                    .foregroundColor(Color.theme.accent)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                Text("Högsta pris: \(coin.highPriceConverted.currencyFormatting()) SEK")
                    .foregroundColor(Color.theme.red)
                Text("Lägsta pris: \(coin.lowPriceConverted.currencyFormatting()) SEK")
                    .foregroundColor(Color.theme.green)
                Text("Öppen pris: \(coin.openPriceConverted.currencyFormatting()) SEK")
                    .foregroundColor(Color.theme.accent)
                Text("Sista pris: \(coin.lastPriceConverted.currencyFormatting()) SEK")
                    .foregroundColor(Color.theme.red)
                Text("Fråga pris: \(coin.askPriceConverted.currencyFormatting()) SEK")
                    .foregroundColor(.cyan)
                Text("Ligger på: \(coin.atPriceConverted.currencyFormatting()) SEK")
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
                        Text("Vad är kryptovaluta? En kryptovaluta är en digital valuta, som är en alternativ betalningsform skapad med hjälp av krypteringsalgoritmer. Användningen av krypteringsteknik gör att kryptovalutor fungerar både som en valuta och som ett virtuellt redovisningssystem. För att använda kryptovalutor behöver du en kryptovalutaplånbok. Dessa plånböcker kan vara programvara som är en molnbaserad tjänst eller som lagras på din dator eller på din mobila enhet. Plånböckerna är verktyget genom vilket du lagrar dina krypteringsnycklar som bekräftar din identitet och länkar till din kryptovaluta.")
                                
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

struct SwedishCoinDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SwedishCoinDetailView(coin: dev.coin)
    }
}
