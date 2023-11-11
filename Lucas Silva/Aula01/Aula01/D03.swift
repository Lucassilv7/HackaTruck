//
//  D03.swift
//  Aula01
//
//  Created by Student17 on 09/10/23.
//

import SwiftUI

struct D03: View {
    @State var nome: String = ""
    @State var entre = false
    var body: some View {
        ZStack{
            VStack{
                Image("rtruck")
                    .padding(.leading, 500.0)
                    .opacity(0.3)
            }
            VStack{
                Text("Bem Vindo, \(nome)")
                    .padding(.top, -200.0)
                TextField("Fulano", text: $nome)
                    .padding(.top, -175.0)
                    .padding(.leading, 75.0)
                
                Spacer()
                Image("logo")
                    .resizable()
                Image("truck")
                    .resizable()
                
                Spacer()
            }
            .frame(width: 200, height: 200)
            VStack{
                Button("Entre"){
                    entre = true
                }
                .padding(.top, 600.0)
                .alert("Alerta", isPresented: $entre){
                    
                    Button("Vamos lá", role: .cancel) {}
                } message: {
                    Text("Você irá inicar a aula 01")
                }
            }
        }
    }
}

struct D03_Previews: PreviewProvider {
    static var previews: some View {
        D03()
    }
}
