//
//  TravelingApp.swift
//  Traveling
//
//  Created by Guillaume Richard on 09/06/2026.
//

import SwiftUI

@main
struct TravelingApp: App {
    @State private var vm = ViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(vm)
        }
    }
}
