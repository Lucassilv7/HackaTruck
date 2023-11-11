//
//  ContentView.swift
//  Desafio2
//
//  Created by Student17 on 11/10/23.
//

import SwiftUI

struct ContentView: View {
    @State var bot = false
    var body: some View {
        NavigationStack{
            VStack{
                NavigationLink("Modo 1"){
                    Tela_M1()
                }
                NavigationLink("Modo 2"){
                    Tela_M2()
                }
                Button("Modo 3"){
                    bot.toggle()
                }
                .sheet(isPresented: $bot){
                    Tela_M3()
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
