//
//  AssetsView.swift
//  CoinApp
//
//  Created by Student17 on 20/10/23.
//

import SwiftUI

struct AssetsView: View {
    
    @StateObject var vm = APIviewModel()
    
    var body: some View {
        
        VStack{
            ForEach(vm.coins){ coin in
                NavigationLink(destination: DetalhesAssets(coinId: coin.id!)){
                    HStack{
                        Text(coin.symbol!)
                        Spacer()
                        Text(coin.id!)
                    }.padding(30)
                        .background(.gray)
                        .foregroundColor(.white)
                }
            }
        }.onAppear(){
            vm.fetch()
        }
    }
}

struct AssetsView_Previews: PreviewProvider {
    static var previews: some View {
        AssetsView()
    }
}
