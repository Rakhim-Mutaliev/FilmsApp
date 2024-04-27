//
//  OpenedCategories.swift
//  FilmsApp
//
//  Created by Rakhim  on 27.04.2024.
//

import SwiftUI

struct OpenedCategories: View {
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ZStack {
                        Image(systemName: "circle")
                            .resizable()
                            .frame(height: 200)
                            .scaledToFill()
                            .background(Color.purple)
                            .foregroundColor(.purple)
                        
                        Text("MovieName")
                            .font(.system(size: 19))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                    }
                }
            }
        }
    }
    
}
