//
//  ContentView.swift
//  Aula02
//
//  Created by Student17 on 10/10/23.
//

import SwiftUI

struct ContentView: View {
    @State var peso: Double = 0.0
    @State var altura: Double = 0.0
    @State var imc: Double = 0.0
    @State var info: String = ""
    @State var color: Color = .white
    var body: some View {
        ZStack{
            VStack{
                Text("Calculadora de IMC")
                    .padding(.bottom, 10.0)
                    .font(.title)
                
                Text("Informe sua Altura: \(altura)")
                TextField("Altura", value: $altura, format:.number)
                    .multilineTextAlignment(.center)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.decimalPad)
                    .padding()
                    //.background(Color.gray.opacity(0.2))
                    //.cornerRadius(10)
                    
                    
                
                Text("Informe o seu Peso: \(peso)")
                TextField("Peso", value: $peso, format:.number)
                    .multilineTextAlignment(.center)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.decimalPad)
                    .padding()
                    //.background(Color.gray.opacity(0.2))
                    //.cornerRadius(10)
            }
            .padding(.top, -375.0)
            VStack{
                Button("Calcule"){
                    
                    imc = peso / (altura * altura)
                    if imc <= 18.5{
                        info = "Baixo peso"
                        color = Color("Bp")
                    } else if imc <= 24.99 {
                        info = "Normal"
                        color = Color("No")
                    } else if imc <= 29.99 {
                        info = "Sobrepeso"
                        color = Color("So")
                    }
                    if imc >= 30 {
                        info = "Obesidade"
                        color = Color("Ob")
                    }
                }
                .padding(.top, -100)
                .buttonStyle(BorderedProminentButtonStyle())
            }
            VStack{
                Text("\(info)")
            }
            VStack{
                Image("tabela-IMC")
                    .resizable()
                    .scaledToFill()
                
            }
            .frame(height: 200)
            .padding(.top, 600)
        }
        .background(color)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
