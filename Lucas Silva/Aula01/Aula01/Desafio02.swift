//
//  Desafio02.swift
//  Aula01
//
//  Created by Student17 on 09/10/23.
//

import SwiftUI

struct Desafio02: View {
    var body: some View {
        VStack{
            Image("rtruck")
                .resizable()
                .scaledToFit()
            
            Image("rtruck")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .overlay(
                    Text("HackaTruck")
                        .font(.title)
                        .foregroundColor(.blue)
                        .fontWeight(.semibold)
                        .padding(.top, 50.0)
                    , alignment: .top
                )
            Spacer()
            HStack{
                Text("Maker")
                    .foregroundColor(Color.yellow)
                    .fontWeight(.semibold)
                Text("Space")
                    .foregroundColor(Color.red)
                    .fontWeight(.semibold)
            }
            .padding(.all, 50.0)
            
            .background(Color.black)
        }
    }
}

struct Desafio02_Previews: PreviewProvider {
    static var previews: some View {
        Desafio02()
    }
}
