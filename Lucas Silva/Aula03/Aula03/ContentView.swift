//
//  ContentView.swift
//  Aula03
//
//  Created by Student17 on 11/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Home()
                .badge(2)
                .tabItem(){
                    Label("Home", systemImage: "homekit")
                }
            Search()
                .tabItem(){
                    Label("", systemImage: "magnifyingglass")
                }
            Photos()
                .tabItem(){
                    Label("Photos", systemImage: "photo.artframe")
                }
            
            Messages()
                .badge("!")
                .tabItem(){
                    Label("Messages", systemImage: "")
                }
            
            Profile()
                .tabItem(){
                    Label("Profile", systemImage: "person.crop.circle")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
