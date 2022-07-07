//
//  ContentView.swift
//  CryptoApp
//
//  Created by Serdar Celiker on 2022-07-01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            //All the colors adapts to Darkmode
            Color.theme.background
                .ignoresSafeArea()
        }
           
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
