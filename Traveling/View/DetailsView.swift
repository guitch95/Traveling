//
//  DetailsView.swift
//  Traveling
//
//  Created by Guillaume Richard on 09/06/2026.
//

import SwiftUI

struct DetailsView: View {
    var recommendation: Recommendation
    @Environment(ViewModel.self) private var vm
    private var isFavorite: Bool {
        vm.favorites.contains { $0.id == recommendation.id }
    }
    
    var body: some View {
        VStack {
            Image(recommendation.image!)
                .resizable()
                .frame(height: 450)
            VStack(alignment: .leading, spacing: 10) {
                Text(recommendation.name)
                    .font(.title)
                    .bold()
                HStack(spacing: 10) {
                    Image(systemName: "mappin.circle.fill")
                        .foregroundStyle(.saumon)
                    Text(recommendation.localization)
                }
                .font(.title2)
                
                HStack(alignment: .top, spacing: 1) {
                    Text("\(recommendation.rating!.formatted())")
                        .font(.title3)
                        .bold()
                        .padding(.trailing, 10)
                    ForEach(1...5, id: \.self) { _ in
                        Image(systemName: "star.fill")
                            .foregroundStyle(.saumon)
                    }
                    
                }
                .foregroundStyle(.black.opacity(0.8))
                
                Rectangle()
                    .frame(height: 0.5)
                    .foregroundStyle(.gray)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Description")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Text(
                        recommendation.description!
                    )
                    .font(.callout)
                    Spacer()
                }
                .frame(height: 175)
                
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .ignoresSafeArea()
            
            Spacer()
        }
        .ignoresSafeArea()
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    if isFavorite {
                        vm.favorites.removeAll {
                            $0.id == recommendation.id
                        }
                    } else {
                        vm.favorites.append(recommendation)
                    }
                    
                } label: {
                    Image(
                        systemName: isFavorite
                        ? "heart.fill" : "heart"
                    )
                }
            }
        }
    }
}
#Preview {
    DetailsView(
        recommendation: Recommendation(
            name: "Tulum Beach",
            localization: "Quintana Roo, Mexique",
            description: "Plage de sable doré dominée par d'anciennes ruines mayas face à la mer des Caraïbes, mêlant histoire fascinante, eaux chaudes et ambiance bohème décontractée toute l'année.",
            rating: 4.6,
            image: "beach",
            isFavorite: false
        ),
        
    )
    .environment(ViewModel())
}
