//
//  ItemView.swift
//  FilmsApp
//
//  Created by Rakhim  on 26.04.2024.
//

import SwiftUI

struct ItemView: View {
    
    let item: Categories
    
    var body: some View {
        GeometryReader { reader in
            
            let fontSize = min(reader.size.width * 0.2, 20)
            let imageWidth: CGFloat = min(50, reader.size.width * 0.8)
            
            VStack {
                ZStack {
                    Image(item.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: imageWidth)
                        .background(Color.purple)
                    
                    Text(item.title)
                        .font(.system(size: fontSize))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                }
                .frame(width: reader.size.width, height: reader.size.height)
            }
        }
        .frame(height: 120)
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}
