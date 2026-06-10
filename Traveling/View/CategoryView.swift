//
//  CategoryView.swift
//  Traveling
//
//  Created by Guillaume Richard on 09/06/2026.
//

import SwiftUI

struct CategoryView: View {
    let category: Category
    @Environment(ViewModel.self) private var vm
    
    var body: some View {
        Button {
            withAnimation {
                vm.categorySelected = category.name
            }
        } label: {
            VStack {
                Image(category.image)
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 80)
                Spacer()
                Text("\(category.name)")
                    .foregroundStyle(.black)
                    .font(.callout)
                    .fontWeight(.medium)
            }
            
        }
        .frame(height: 120)
    }
}

#Preview {
    CategoryView(category: Category(image: "cascade", name: "Plage"))
        .environment(ViewModel())
    
}


#Preview {
    HomeView()
        .environment(ViewModel())
}
