//
//  CoinImageView.swift
//  CryptoApp
//
//  Created by Serdar Celiker on 2022-07-07.
//

import SwiftUI

struct CoinImageView: View {
    var body: some View {
        AsyncImage(url: URL(string: "https://unsplash.com/s/photos/bitcoin")) { phase in
            if let image = phase.image {
                image
                    .resizable()
                    .scaledToFit()
            } else if phase.error != nil {
                Text("There was an error loading the image.")
            } else {
                ProgressView()
            }
        }
        .frame(width: 200, height: 200)

    }
}

struct CoinImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoinImageView()
    }
}
