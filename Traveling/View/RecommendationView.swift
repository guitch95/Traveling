//
//  RecommendationView.swift
//  Traveling
//
//  Created by Guillaume Richard on 09/06/2026.
//

import SwiftUI

struct RecommendationView: View {
    let recommendation: Recommendation
    var body: some View {
        VStack {
            Image(recommendation.image!)
                .resizable()
                .scaledToFill()
                .frame(width: 250, height: 150)
                .clipShape(.rect(cornerRadius: 20))
                .padding(.bottom, 5)
            HStack {
                Text(recommendation.name)
                    .bold()
                Spacer()
                Image(systemName: "star.fill")
                Text("\(recommendation.rating!.formatted())")
            }
            .padding(.bottom, 5)
            HStack(spacing: 5){
                Image(systemName: "mappin.circle.fill")
                Text(recommendation.localization)
                    .font(.callout)
                
                Spacer()
            }
        }
        .foregroundStyle(.black)
        .padding()
        .frame(width: 280, height: 250)
        .background(.white.opacity(0.2))
        .border(.white)
        .clipShape(.rect(cornerRadius: 20))
        
        
    }
}

#Preview {
    RecommendationView(
        recommendation: Recommendation(
            name: "Anse Source d'Argent",
            localization: "La Digue, Seychelles",
            description: "Sable blanc bordé de blocs de granit rose et d'eaux peu profondes cristallines.",
            rating: 4.8,
            image: "beach",
            isFavorite: false
        )
    )
}

