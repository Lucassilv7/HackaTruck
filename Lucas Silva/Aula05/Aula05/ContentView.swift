//
//  ContentView.swift
//  Aula05
//
//  Created by Student17 on 18/10/23.
//

import SwiftUI
import MapKit


struct ContentView: View {
    @State var bot = false
    @State var nome: String = ""
    @State private var region = MKCoordinateRegion(
    center: CLLocationCoordinate2D(latitude: -14.2350, longitude: -51.9253),
    span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40)
    )
    
    @State var lugar = [Location(name: "Brasil", coordinate: CLLocationCoordinate2D(latitude: -15.699227, longitude:  -47.936003), flag: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQHdT3mxtBPX8BRdTNUrjap5oFpAJKWoH1oWDQXz4AJngLrnYZw", description: "asdasd"),
    Location(name: "Estados Unidos", coordinate: CLLocationCoordinate2D(latitude: 38.894994, longitude: -77.035683), flag: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQB0_FKgauM3h5wkHna7JjIXInv4my0VIlPDbnQv9nwQ7rRsH7P", description: "dasasda"), Location(name: "Franca", coordinate: CLLocationCoordinate2D(latitude: 48.858527, longitude: 2.294188), flag: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRSOqmntO1SMeMlfDP1EIfHIeQfuVxBIWTyb5bc0nAgA00bv68f", description: "ädasdas")]
    var body: some View {
        
        ZStack{
            Map(coordinateRegion: $region, annotationItems: lugar){ location in
                MapAnnotation(coordinate: location.coordinate){
                    Circle()
                        .onTapGesture(count: 1){
                            
                        }
                }
            }
                .frame(maxWidth: .infinity)
            
            VStack{
                Text("World Map")
                    .font(.title)
                    .fontWeight(.semibold)
                Text(nome)
                
            }
            .padding(.bottom, 640)
            
            ScrollView(.horizontal){
                HStack{
                    ForEach(lugar) { location in
                        Button(location.name){
                            region.center = location.coordinate
                            nome = location.name
                            
                    
                        }
                        .buttonStyle(BorderedProminentButtonStyle())
                        Spacer()
                    }
                }
            }
            .padding(.top, 600)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//Map(coordinateRegion: $region)
    //.frame(width:400, height: 300)
