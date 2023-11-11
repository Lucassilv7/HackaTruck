//
//  ContentView.swift
//  Aula04
//
//  Created by Student17 on 17/10/23.
//

import SwiftUI

struct ContentView: View {
    @State var music = [msc(id: 1, name: "Please Me", artist: "Cardi B, Bruno Mars", capa: "https://upload.wikimedia.org/wikipedia/pt/c/c7/Please_Me_Cardi_Bruno.png"), msc(id: 2, name: "Hotline Bling", artist: "Drake", capa: "https://s2.glbimg.com/tCNVEfTQs0uScWAzKlWwwDoRjq0=/smart/e.glbimg.com/og/ed/f/original/2016/04/29/views.jpg"), msc(id: 3, name: "Locked out of Heaven", artist: "Bruno Mars", capa: "https://akamai.sscdn.co/uploadfile/letras/albuns/e/a/4/a/28057.jpg"), msc(id: 4, name: "It Will Rain", artist: "Bruno Mars", capa: "https://upload.wikimedia.org/wikipedia/pt/e/e7/It_Will_Rain.jpg"), msc(id: 5, name: "When I Was Your Man", artist: "Bruno Mars", capa: "https://akamai.sscdn.co/uploadfile/letras/albuns/e/a/4/a/28057.jpg"), msc(id: 6, name: "All of Me", artist: "John Legend", capa: "https://i.pinimg.com/originals/3b/9e/63/3b9e633a8d81171193ef1939144b0dc5.jpg"), msc(id: 7, name: "Too Good At Goodbyes", artist: "Sam Smith", capa: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7QnlvLX2OnwHxtAMMzew950w00kkBZqRAcXqVLmvlZxJVcI_bhBW8DEXjFIXOKxSX2bQ&usqp=CAU"), msc(id: 8, name: "I'm Not The Only One", artist: "Sam Smith", capa: "https://cdns-images.dzcdn.net/images/cover/44e0fbe81ca549290348d3544375e29a/350x350.jpg")]
    var body: some View {
        ZStack{
            ScrollView{
            VStack{
                Image("ht")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 260, height: 200)
                    .padding(.all)
            }
            .frame(width: 1000, height: 250,alignment: .top)
            VStack{
                Text("HackaFM")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
            }
            .padding(.trailing, 250)
                ForEach(music) { music in HStack{
                    AsyncImage(url: URL(string: music.capa), content: { image in image.resizable()
                            .scaledToFit()
                    }, placeholder: {
                        ProgressView()
                    })
                    .frame(width: 50, height: 50)
                    
                    VStack{
                    Text(music.name)
                        .foregroundColor(.white)
                    
                        Text(music.artist)
                            .foregroundColor(.white)
                    }
                    .padding(.trailing, 150)
                }
                }
            }
        }
        .background(LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
