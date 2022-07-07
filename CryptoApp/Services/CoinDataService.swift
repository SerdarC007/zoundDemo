//
//  CoinDataService.swift
//  CryptoApp
//
//  Created by Serdar Celiker on 2022-07-03.
//

import Foundation
import Combine
class CoinDataService {
    @Published var allCoins: [CoinModel] = []
    var cancellables: AnyCancellable?
    
    init() {
        getCoin()
    }
    private func getCoin() {
        guard let url = URL(string: "https://api.wazirx.com/sapi/v1/tickers/24hr") else {
            return
        }
       cancellables = URLSession.shared.dataTaskPublisher(for: url)
            .subscribe(on: DispatchQueue.global(qos: .default))
            .tryMap { (output) ->  Data in
                guard let response = output.response as? HTTPURLResponse,
                      response.statusCode >= 200 && response.statusCode < 300 else {
                    throw URLError(.badServerResponse)
                }
                return output.data
            }
            .receive(on: DispatchQueue.main)
            .decode(type: [CoinModel].self, decoder: JSONDecoder())
            .sink { (completion) in
                switch completion {
                case .finished:
                    break
                case .failure(let error):
                    print("wrong in here: \(error)")
                    
                }
            } receiveValue: { [weak self] (returnedCoin) in
                self?.allCoins = returnedCoin
                self?.cancellables?.cancel()
            }
    }
}
