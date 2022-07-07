//
//  HomeView.swift
//  CryptoApp
//
//  Created by Serdar Celiker on 2022-07-01.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var vm: HomeViewModel
    @State private var showSwedishList = false
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            //Content
            VStack {
                homeHeader
                SearchBarView(searchText: $vm.searchText)
                    
                if !showSwedishList {
                    allCoinList
                        .transition(.move(edge: .leading))

                }
                if showSwedishList {
                    allCoinSwedishList
                        .transition(.move(edge: .leading))


                }
                
                Spacer(minLength: 0)

            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        HomeView()
            .navigationBarHidden(true)
        }
        .environmentObject(dev.homeVM)
    }
}
extension HomeView {
    private var homeHeader: some View {
        HStack {
            CircleButtonView(iconName: "info")
            Spacer()
            Text(showSwedishList ? "SEK" : "Dollar")
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(Color.theme.accent)
                .animation(.none)
            
                Spacer()
                
            CircleButtonView(iconName: "chevron.right")
                .rotationEffect(Angle(degrees: showSwedishList ? 180 : 0))
                .onTapGesture {
                    withAnimation(.spring()){
                        showSwedishList.toggle()

                    }
                }
        }
        .padding(.horizontal)

    }
    private var allCoinList: some View {
        List {
            ForEach(vm.allCoin, id: \.self) { coin in
                NavigationLink {
                    CoinDetailView(coin: coin)
                } label: {
                    
                    CoinRowView(coin: coin)
                        .listRowInsets(.init(top: 10, leading: 0, bottom: 10, trailing: 10))
                }

                
            }

        }
        .listStyle(.grouped)

    }
    private var allCoinSwedishList: some View {
        List {
            ForEach(vm.allCoinInSwedishMode, id: \.self) { coin in
                NavigationLink{
                    SwedishCoinDetailView(coin: coin)
                }label: {
                    SwedishCoinRowView(coin: coin)
                        .listRowInsets(.init(top: 10, leading: 0, bottom: 10, trailing: 10))
                }
                }
 
                
            }
        .listStyle(.grouped)

        }

    }


