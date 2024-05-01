//
//  SearchView.swift
//  FilmsApp
//
//  Created by Rakhim  on 26.04.2024.
//

import SwiftUI

//struct SearchView: View {
//
//    @State private var searchBar = ""
//    @State private var numberOfRows = 2
//
//    let spacingRows: CGFloat = 10
//    let itemInCategories = CategoriesItem()
//    let openCategory = OpenedCategories()
//
//    var body: some View {
//        let columns = Array(repeating: GridItem(.flexible(),
//                                                spacing: spacingRows),
//                            count: numberOfRows)
//
//        NavigationView {
//            ScrollView {
//                LazyVGrid(columns: columns, spacing: spacingRows) {
//                    ForEach(itemInCategories.items) { item in
//                        NavigationLink(destination: openCategory) {
//                            Text(item.title)
//                            Image(item.image)
//                        }
//                    }
//                }
//                .padding(10)
//
//            }
//            .navigationTitle("Search")
//            .searchable(text: $searchBar, prompt: "Поиск фильмов")
//        }
//
//    }
//}

struct SearchView: View {
    
    @State private var searchBar = ""
    @State private var numberOfRows = 2
    
    let spacingRows: CGFloat = 10
    let categoriesItems = CategoriesItem() // Переименовал переменную для ясности
    
    var body: some View {
        let columns = Array(repeating: GridItem(.flexible(), spacing: spacingRows), count: numberOfRows)
        
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: spacingRows) {
                    ForEach(categoriesItems.items) { category in
                        NavigationLink(
                            destination: OpenedCategories(title: category.title, imageName: category.image),
                            label: {
                                ZStack {
                                    Image(category.image)
                                        .resizable()
                                        .frame(height: 120)
                                        .scaledToFit()
                                        .cornerRadius(20)
                                    Text(category.title)
                                        //.font(.system(size: fontSize))
                                        .foregroundColor(.white)
                                        .multilineTextAlignment(.center)
                                }
                            }
                        )
                    }
                }
                .padding(10)
            }
            .navigationTitle("Search")
            .searchable(text: $searchBar, prompt: "Поиск фильмов")
        }
    }
}
//
//ForEach(shopping.list) { item in
//                    NavigationLink.init(destination: EditView(currentItem: item)) {
//                        HStack {
//                            Text(item.name)
//                            Spacer()
//                            Text(String(item.quantity))
//                            Spacer().frame(width: 10)
//                        }
//                    }

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
