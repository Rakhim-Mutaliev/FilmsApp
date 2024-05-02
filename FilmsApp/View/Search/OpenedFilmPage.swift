//
//  OpenedFilmPage.swift
//  FilmsApp
//
//  Created by Rakhim  on 02.05.2024.
//

import SwiftUI

struct OpenedFilmPage: View {
    
    let filmName: String
    let filmImage: String
    
    let categoriesItems = CategoriesItem()
    
    var body: some View {
        ScrollView {
            ZStack {
                Image(filmImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 600)
                    .background(Color.purple)
                VStack {
                    Spacer()
                    Text(filmName)
                        .font(.system(size: 19, weight: .bold))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    Button {
                        return
                    } label: {
                        Text("Смотреть")
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                    }
                    .frame(width: 300, height: 50)
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .cornerRadius(25)
                    
                    Text("Описание")
                        .font(.system(size: 17, weight: .regular))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                }
                .padding(20)
            }
            
            // Это не законченный код
            VStack {
                LazyHGrid(rows: [GridItem(.flexible())], content: {
                    ForEach(categoriesItems.items) { film in
                        Image(filmImage)
                        .resizable()
                        .frame(width: 200, height: 120)
                        .scaledToFit()
                        .cornerRadius(20)
                    }
                })
            }
            
            HStack {
                
            }
        }
        .navigationBarItems(trailing: Button(action: {
            return
        }, label: {
            Image(systemName: "arrow.down.circle.fill")
                .font(.title3)
        }))
        
    }
}
