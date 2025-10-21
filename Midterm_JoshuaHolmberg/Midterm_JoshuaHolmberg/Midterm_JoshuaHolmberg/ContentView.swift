//
//  ContentView.swift
//  MilitaryAircraftApp
//
//  Created by Holmberg, Joshua on 10/21/25.
//

import SwiftUI

struct Aircraft: Identifiable {
    let id: String
    let name: String
    let description: String
    let imageName: String
}

struct ContentView: View {
    let aircraftList: [Aircraft] = [
        Aircraft(id: "F/A-18", name: "F/A-18 Super Hornet", description: "A twin-engine, carrier-capable multirole fighter used by the U.S. Navy and Marine Corps.", imageName: "f18"),
        Aircraft(id: "F-22", name: "F-22 Raptor", description: "A stealth air superiority fighter with unmatched agility and speed.", imageName: "f22"),
        Aircraft(id: "F-16", name: "F-16 Fighting Falcon", description: "A highly maneuverable multirole fighter, widely used around the world.", imageName: "f16"),
        Aircraft(id: "F-14", name: "F-14 Tomcat", description: "A variable-sweep wing fighter, iconic for its role in the U.S. Navy.", imageName: "f14"),
        Aircraft(id: "F-117 Nighthawk", name: "F-117 Nighthawk", description: "The first operational stealth aircraft, used for precision strikes and radar evasion.", imageName: "f117"),
        Aircraft(id: "C-130", name: "C-130 Hercules", description: "A tactical airlifter used for troop, medevac, and cargo transport.", imageName: "c130"),
        Aircraft(id: "C-17 Globemaster III", name: "C-17 Globemaster III", description: "A large military transport aircraft capable of rapid global airlift.", imageName: "c17"),
        Aircraft(id: "C-5 Galaxy", name: "C-5 Galaxy", description: "One of the largest military aircraft, built for intercontinental heavy transport.", imageName: "c5"),
        Aircraft(id: "B-2", name: "B-2 Spirit", description: "A stealth bomber capable of delivering nuclear and conventional payloads.", imageName: "b2")
    ]

    var body: some View {
        NavigationView {
            List(aircraftList) { aircraft in
                NavigationLink(destination: AircraftDetailView(aircraft: aircraft)) {
                    HStack {
                        Image(aircraft.imageName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 60, height: 60)
                            .clipShape(RoundedRectangle(cornerRadius: 5))

                        Text(aircraft.name)
                            .foregroundColor(.blue)
                            .padding(.leading, 10)
                    }
                    .padding(.vertical, 5)
                }
            }
            .navigationTitle("Military Aircraft List")
        }
    }
}
