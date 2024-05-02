//
//  OpenedCategories.swift
//  FilmsApp
//
//  Created by Rakhim  on 27.04.2024.
//

import SwiftUI

struct OpenedCategories: View {
    
    @State private var searchBar = ""
    @State private var numberOfRows = 2
    
    let title: String
    let imageName: String
    
    let spacingRows: CGFloat = 10
    let categoriesItems = CategoriesItem()
    
    var body: some View {
        let columns = Array(repeating: GridItem(.flexible(), spacing: spacingRows), count: numberOfRows)
        
        ScrollView {
            VStack {
                ZStack {
                    Image(imageName)
                        .resizable()
                        .frame(height: 200)
                        .scaledToFit()
                    
                    Text(title)
                        .font(.system(size: 19))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                }
            }
            LazyVGrid(columns: columns, spacing: spacingRows) {
                ForEach(categoriesItems.items) { category in
                    NavigationLink(destination: OpenedFilmPage(filmName: category.title, filmImage: category.image)) {
                        ZStack {
                            Image(category.image)
                                .resizable()
                                .frame(height: 120)
                                .scaledToFit()
                                .cornerRadius(20)
                            Text(category.title)
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                        }
                    }
                }
            }
            .padding(10)
        }
        .navigationTitle(title)
        .navigationBarTitleDisplayMode(.inline)
    }
}
