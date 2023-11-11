//
//  Photos.swift
//  Aula03
//
//  Created by Student17 on 11/10/23.
//

import SwiftUI

struct Photos: View {
    var body: some View {
        ScrollView{
            Image(systemName:"moonphase.new.moon")
            Spacer()
            Image(systemName: "moonphase.waxing.crescent")
            Spacer()
            Image(systemName: "moonphase.first.quarter")
            Spacer()
            Image(systemName: "moonphase.waxing.gibbous")
        }
    }
}

struct Photos_Previews: PreviewProvider {
    static var previews: some View {
        Photos()
    }
}
