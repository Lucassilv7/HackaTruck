//
//  maps.swift
//  Aula05
//
//  Created by Student17 on 18/10/23.
//

import Foundation
import MapKit

struct Location: Identifiable{
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let flag: String
    let description: String
}
