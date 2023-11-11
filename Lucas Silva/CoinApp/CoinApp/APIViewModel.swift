//
//  APIViewModel.swift
//  CoinApp
//
//  Created by Student17 on 20/10/23.
//

import Foundation

struct API : Decodable{
    var data : [CoinMenu]
}

struct CoinMenu : Decodable, Identifiable{
    var id : String?
    var rank : String?
    var symbol : String?

}

struct API2 : Decodable{
    var data : CoinAll
}

struct CoinAll : Decodable, Identifiable{
    var id : String?
    var rank : String?
    var symbol : String?
    var name : String?
    var supply : String?
    var maxSupply : String?
    var marketCapUsd : String?
    var volumeUsd24Hr : String?
    var priceUsd : String?
    var vwap24Hr : String?
}

class APIviewModel : ObservableObject{
    
    @Published var coins : [CoinMenu] = []
    @Published var coins2 : [CoinAll] = []
    
    func fetch(){
        guard let url = URL(string: "https://api.coincap.io/v2/assets") else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
                
            guard let data = data, error == nil else{
                return
            }
            
            do {
                
                let decodificado = try JSONDecoder().decode(API.self, from: data)
                
                DispatchQueue.main.async {
                    self?.coins = decodificado.data
                }
                
            }catch{
                print(error)
            }
            
        }
        
        task.resume()
    }
    
    func fetch2(coinId : String){
        
        guard let url2 = URL(string: "https://api.coincap.io/v2/assets/\(coinId)") else{
            return
        }
        
        let task1 = URLSession.shared.dataTask(with: url2){ [weak self] data, _, error in
            
            guard let data = data, error == nil else{
                return
            }
            
            do {
                
                let decode = try JSONDecoder().decode(API2.self, from: data)
                
                DispatchQueue.main.async {
                    self?.coins2.append(decode.data)
                }
            }catch{
                print(error)
            }
        }
        
        task1.resume()
    }
}
