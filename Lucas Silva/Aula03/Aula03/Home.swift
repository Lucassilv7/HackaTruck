//
//  Home.swift
//  Aula03
//
//  Created by Student17 on 11/10/23.
//

import SwiftUI

struct Home: View {
    var body: some View {
        List(1..<16){
            Text("Item \($0)")
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
