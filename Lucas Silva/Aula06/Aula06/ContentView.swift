//
//  ContentView.swift
//  Aula06
//
//  Created by Student17 on 19/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var  viewModel = ViewModel() // atualiza a tela que a variável recebe um valor
    var body: some View {
        NavigationStack{
            VStack{
                AsyncImage(url: URL(string: "https://logos-world.net/wp-content/uploads/2023/05/Magic-The-Gathering-Logo.png"), content: {image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 200, height: 200)
                    },
                           placeholder: {
                        ProgressView()
                })
                    .ignoresSafeArea()
                   
            }
            ScrollView{
                ForEach(viewModel.chars){ p in
                    NavigationLink(destination: CharView())
                }
            }
        }.onAppear(){
            viewModel.read()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
