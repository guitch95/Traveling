//
//  ContentView.swift
//  Traveling
//
//  Created by Guillaume Richard on 09/06/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Accueil", systemImage: "person.fill") {
                HomeView()
            }
            Tab("Favoris", systemImage: "heart.fill") {
                FavoriteView()
            }
        }
    }
}

#Preview {
    ContentView()
}
