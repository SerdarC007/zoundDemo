//
//  HomeViewModel.swift
//  CryptoApp
//
//  Created by Serdar Celiker on 2022-07-03.
//

import Foundation
import Combine
class HomeViewModel: ObservableObject {
  
    @Published var allCoin: [CoinModel] = []
    @Published var allCoinInSwedishMode: [CoinModel] = []
    @Published var searchText: String = ""
    private var dataService = CoinDataService()
    private var cancellables = Set<AnyCancellable>()
    
    init(){
        addSubcribers()


        }
    func addSubcribers()  {
        dataService.$allCoins
            .sink { [weak self] returnedCoin in
                self?.allCoin = returnedCoin
                self?.allCoinInSwedishMode = returnedCoin
            }
            .store(in: &cancellables)
        
            //Updates allCoins
            $searchText
            .combineLatest(dataService.$allCoins)
            .map { (text, startCoin) -> [CoinModel] in
                guard !text.isEmpty else {
                    return startCoin
                }
                let lowerCasedText = text.lowercased()
                let filterCoin = startCoin.filter { (coin) -> Bool in
                    return coin.symbol.lowercased().contains(lowerCasedText)
                }
                return filterCoin
            }
            .sink { [weak self](returnedCoin) in
                self?.allCoin = returnedCoin
                self?.allCoinInSwedishMode = returnedCoin

            }
            .store(in: &cancellables)
    }
    }
    
    

