//
//  ContentView.swift
//  CoinApp
//
//  Created by Student17 on 20/10/23.
//

import SwiftUI

struct ContentView: View {
    
    var menus = ["Assets","Rates","Exchanges","Makets","Candles"]
    var body: some View {
        NavigationStack{
            VStack{
                NavigationLink(destination: AssetsView()){
                    Text("Assets")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
