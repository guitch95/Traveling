//
//  AddView.swift
//  Traveling
//
//  Created by Guillaume Richard on 09/06/2026.
//

import SwiftUI

struct AddView: View {
    @Environment(ViewModel.self) private var vm
    @Environment(\.dismiss) private var dismiss
    @State private var country = ""
    @State private var localization = ""
    @State private var showAlert = false
    var body: some View {
        NavigationStack {
            VStack(spacing: 30) {
                TextField("Entrer un pays", text: $country)
                    .padding()
                    .frame(width: 350, height: 50)
                    .overlay(
                        .black,
                        in: .rect(cornerRadius: 20).stroke(lineWidth: 1)
                    )
                
                TextField("Entrer une localisation", text: $localization)
                    .padding()
                    .frame(width: 350, height: 50)
                    .overlay(
                        .black,
                        in: .rect(cornerRadius: 20).stroke(lineWidth: 1)
                    )
            }
            .padding()
            .toolbar {
                ToolbarItem {
                    Button("Save") {
                        if country.count > 3 && localization.count > 3 {
                            vm.favorites
                                .append(Recommendation(name: country,localization: localization))
                            
                            country = ""
                            localization = ""
                            dismiss()
                        }
                        else {
                            showAlert = true
                        }
                        
                    }
                }
                
            }
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Impossible d'ajouter votre lieu."),
                    message: Text("Veuillez entrer un pays et/ou une localisation de plus de 3 caractères.")
                )
            }
            .navigationTitle("Nouveau lieu 🌴✈️☀️")
            
        }
    }
}


#Preview {
    AddView()
        .environment(ViewModel())
}
