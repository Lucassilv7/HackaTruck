//
//  ViewModel.swift
//  Aula06
//
//  Created by Student17 on 19/10/23.
//

import Foundation

struct Magic: Decodable, Identifiable{
    var id = UUID()
    let name: String?
    let manaCost: String?
    let cmc: Int?
    let text: String?
    let power: Int?
    let toughness: Int?
    let imageUrl: String?
}

struct Cards: Decodable {
    
    let cards : [Magic]
}



class ViewModel: ObservableObject{ // permite criar objetos que podem ser observados por views.
    
    @Published var chars : [Magic] = [] // qualquer view que esteja observando a propriedade "chars"será notificada quando ela mudar
    
    func read(){
        guard let url = URL(string: "https://api.magicthegathering.io/v1/cards") else{ //teste se a Url funciano
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in // task coloca na fila de afazeres do app o processamento dos dados da API
            guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode(Cards.self, from: data) // decodificar o JSON através da struct "Magic"
                
                DispatchQueue.main.async {
                    self?.chars.append(contentsOf: parsed.cards)
                }
            } catch{
                print(error) // Se o "try" falhar, a validacão cai no "catch" e imprime o erro.
            }
        }
        task.resume() // a tarefa é executada.
    }
}
