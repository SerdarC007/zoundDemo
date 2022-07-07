//
//  CoinModel.swift
//  CryptoApp
//
//  Created by Serdar Celiker on 2022-07-02.
//

import Foundation
struct CoinModel: Codable, Hashable {
    let symbol, baseAsset: String
    let quoteAsset: QuoteAsset
    let openPrice, lowPrice, highPrice, lastPrice: String
    let volume, bidPrice, askPrice: String
    let at: Int
   
    
    enum QuoteAsset: String, Codable {
        case btc = "btc"
        case inr = "inr"
        case usdt = "usdt"
        case wrx = "wrx"
    }
    func updateHoldings(amount: Double) -> CoinModel {
        return CoinModel(symbol: symbol, baseAsset: baseAsset, quoteAsset: quoteAsset, openPrice: openPrice, lowPrice: lowPrice, highPrice: highPrice, lastPrice: lastPrice, volume: volume, bidPrice: bidPrice, askPrice: askPrice, at: at)
    }
    var rank: Int {
        return at
    }
 
    var askPriceConverted: String {
        ((Float(askPrice) ?? 10.0) * 10).description
    }
    var openPriceConverted: String {
        ((Float(openPrice) ??  10.0) * 10).description
    }
    var lowPriceConverted: String {
        ((Float(lowPrice) ??  10.0) * 10).description
    }
    var highPriceConverted: String {
        ((Float(highPrice) ??  10.0) * 10).description
    }
    var bidPriceConverted: String {
        ((Float(bidPrice) ?? 10.0) * 10).description
    }
    var lastPriceConverted: String {
        ((Float(lastPrice) ?? 10.0) * 10).description
    }
    var volumePriceConverted: String {
            ((Float(volume) ?? 10.0) * 10).description
    }
    var atPriceConverted: String {
        (Double(at) * 10).description
    }
}



//typealias Welcome = [CoinModel]
