//
//  Tela2_M2.swift
//  Desafio2
//
//  Created by Student17 on 11/10/23.
//

import SwiftUI

struct Tela2_M2: View {
    @State var nome: String = ""
    var body: some View {
        Text(nome)
    }
}

struct Tela2_M2_Previews: PreviewProvider {
    static var previews: some View {
        Tela2_M2()
    }
}
