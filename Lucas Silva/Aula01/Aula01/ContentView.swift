//
//  ContentView.swift
//  Aula01
//
//  Created by Student17 on 09/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("rtruck")
                .resizable()
                .scaledToFit()
            Text("HackaTruck")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(Color.blue)
            HStack{
                Text("Maker")
                    .fontWeight(.semibold)
                    .foregroundColor(Color.yellow)
                Text("Space")
                    .fontWeight(.semibold)
                    .foregroundColor(Color.red)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
