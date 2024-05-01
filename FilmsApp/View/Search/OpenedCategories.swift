//
//  OpenedCategories.swift
//  FilmsApp
//
//  Created by Rakhim  on 27.04.2024.
//

import SwiftUI

struct OpenedCategories: View {
    
    let title: String
    let imageName: String
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ZStack {
                        Image(imageName)
                            .resizable()
                            .frame(height: 200)
                            .scaledToFit()
                            //.background(Color.purple)
                            //.foregroundColor(.purple)
                        
                        Text(title)
                            .font(.system(size: 19))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                    }
                }
            }
            
        }
    }
}

