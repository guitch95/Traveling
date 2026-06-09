//
//  FavoriteView.swift
//  Traveling
//
//  Created by Guillaume Richard on 09/06/2026.
//

import SwiftUI

struct FavoriteView: View {
    @Environment(ViewModel.self) private var vm
    @State private var isPresented = false
    @State private var search = ""
    @State private var filter: Filter = .all
    var filteredCountries: [Recommendation] {
        let byFilterVisited: [Recommendation] = switch filter {
        case .all: vm.favorites
        case .visited: vm.favorites.filter { $0.isVisited }
        case .notVisited: vm.favorites.filter { !$0.isVisited }
        }
        
        if search.isEmpty {
            return byFilterVisited
        } else {
            return byFilterVisited.filter {
                $0.name.localizedCaseInsensitiveContains(search)
                || $0.localization.localizedCaseInsensitiveContains(search)
            }
        }
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(filteredCountries) { favorite in
                        HStack {
                            VStack(alignment: .leading) {
                                Text("\(favorite.name)").font(.title2.bold())
                                Text("\(favorite.localization)").font(.title3)
                            }
                            Spacer()
                            if favorite.isVisited {
                                Label("Visité", systemImage: "checkmark")
                                    .foregroundStyle(.white)
                                    .font(.caption)
                                    .bold()
                                    .padding(8)
                                    .frame(width: 100)
                                    .background(.green, in: .capsule)
                            }
                            Spacer()
                            if let image = favorite.image {
                                Image(image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 75)
                                    .clipShape(.circle)
                            } else {
                                Image(systemName: "photo.artframe")
                                    .font(.title)
                                    .padding()
                                    .clipShape(.circle)
                            }
                        }
                        .frame(height: 80)
                        .swipeActions(edge: .leading) {
                            if favorite.isVisited {
                                Button("Non visité", systemImage: "xmark") {
                                    toogleVisited(for: favorite.id)
                                }
                                .tint(.red)
                            } else {
                                Button("Visité", systemImage: "checkmark") {
                                    toogleVisited(for: favorite.id)
                                }
                                .tint(.green)
                                
                            }
                            
                        }
                    }
                    .onMove(perform: moveRows)
                    .onDelete(perform: delete)
                    
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Menu {
                            Button("Visité") {
                                filter = .visited
                            }
                            Button("Non Visité") {
                                filter = .notVisited
                            }
                            
                            Button("Tout voir") {
                                filter = .all
                            }
                            
                        } label: {
                            Image(systemName: "arrow.up.arrow.down")
                        }
                    }
                    ToolbarItem(placement: .topBarLeading) {
                        EditButton()
                    }
                    
                    ToolbarItem {
                        Button {
                            isPresented.toggle()
                        } label: {
                            Image(systemName: "plus")
                        }
                    }
                }
                .searchable(text: $search, prompt: "Rechercher")
                .overlay {
                    if filteredCountries.isEmpty {
                        ContentUnavailableView.search(text: search)
                    }
                }
            }
            
            .sheet(isPresented: $isPresented) {
                AddView()
            }
        }
        
    }
    
    func delete(at offsets: IndexSet) {
        vm.favorites.remove(atOffsets: offsets)
    }
    
    func moveRows(source: IndexSet, destination: Int) {
        vm.favorites.move(fromOffsets: source, toOffset: destination)
    }
    
    func toogleVisited(for id: UUID) {
        guard let index = vm.favorites.firstIndex(where: { $0.id == id }) else {
            return
        }
        vm.favorites[index].isVisited.toggle()
    }
    
}

#Preview {
    FavoriteView()
        .environment(ViewModel())
}
