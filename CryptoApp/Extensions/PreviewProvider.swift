//
//  CoinRowView.swift
//  CryptoApp
//
//  Created by Serdar Celiker on 2022-07-02.
//

import Foundation
import SwiftUI

extension PreviewProvider {
    
    static var dev: DeveloperPreview {
        return DeveloperPreview.instance
    }
    
}

class DeveloperPreview {
    
    static let instance = DeveloperPreview()
    let homeVM = HomeViewModel()
    private init() { }
    
 
    //Just for preview
    let coin = CoinModel(symbol: "btcinr", baseAsset: "btc", quoteAsset: CoinModel.QuoteAsset.inr, openPrice: "1614756", lowPrice: "1560000.0", highPrice: "1614781.0", lastPrice: "1591572.0", volume: "24.23312", bidPrice: "1588997.0", askPrice: "1591572.0", at: 1656794327000)

    
}

