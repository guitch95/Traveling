//
//  HomeView.swift
//  Traveling
//
//  Created by Guillaume Richard on 09/06/2026.
//

import SwiftUI

struct HomeView: View {
    @Environment(ViewModel.self) private var vm
    @State private var showingAddPlace = false
    var selected : [Recommendation] {
        switch vm.categorySelected {
        case "Montagne" :
            vm.mountainRecommendations
        case "Cascade":
            vm.waterfallRecommendations
        default:
            vm.beachRecommendations
        }
    }
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(colors: [.ciel, .powder, .lilas], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                VStack(spacing: 30) {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Catégories")
                            .font(.title.bold())
                            .padding(.horizontal)
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack(alignment: .top, spacing: 20) {
                                ForEach(vm.categories) { category in
                                    CategoryView(category: category)
                                }
                            }
                        }
                        .padding(.horizontal)
                        .frame(
                            height: 150
                        )
                        .frame(maxWidth: .infinity)
                    }
                    VStack(alignment: .leading) {
                        Text("Recommendations")
                            .font(.title.bold())
                            .padding(.horizontal)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack(alignment: .top, spacing: 20) {
                                ForEach(selected) {
                                    recommendation in
                                    NavigationLink(value: recommendation) {
                                        RecommendationView(
                                            recommendation: recommendation
                                        )
                                        
                                    }
                                    
                                }
                                
                            }
                            .padding(.horizontal)
                            .navigationDestination(
                                for: Recommendation.self
                            ) { recommendation in
                                DetailsView(recommendation: recommendation)
                            }
                        }
                    }
                    .padding(.bottom, 20)
                    .frame(height: 350)
                    
                    Button {
                        showingAddPlace.toggle()
                    } label: {
                        Text("Ajouter un lieu")
                            .foregroundStyle(.black.opacity(0.8))
                            .bold()
                            .padding()
                            .frame(width: 300, height: 50)
                        //                            .glassEffect(in: .rect(cornerRadius: 16.0))
                            .overlay(
                                .white,
                                in: .rect(cornerRadius: 16).stroke(lineWidth: 3)
                            )
                            .background(
                                .white.opacity(0.2),
                                in: .rect(cornerRadius: 16)
                            )
                        
                    }
                    Spacer()
                }
                .sheet(isPresented: $showingAddPlace) {
                    AddView()
                        .presentationDetents([.medium])
                }
            }
        }
    }
}

#Preview {
    HomeView()
        .environment(ViewModel())
}
