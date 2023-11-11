//
//  Tela_M2.swift
//  Desafio2
//
//  Created by Student17 on 11/10/23.
//

import SwiftUI

struct Tela_M2: View {
    @State var name: String = ""
    var body: some View {
        NavigationStack{
            VStack{
                Text("Informe seu nome: ")
                TextField("Nome", text: $name)
            }
            NavigationLink(destination: Tela2_M2(nome: name)){
                Text("Next")
            }
        }
    }
}

struct Tela_M2_Previews: PreviewProvider {
    static var previews: some View {
        Tela_M2()
    }
}
