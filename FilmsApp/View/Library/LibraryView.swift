//
//  LibraryView.swift
//  FilmsApp
//
//  Created by Rakhim  on 26.04.2024.
//

import SwiftUI

struct LibraryView: View {
    
    var body: some View {
        NavigationView {
            Text("Тут будут трейлеры скачанные вами")
                .foregroundColor(.purple)
                .opacity(1.0)
            
                .navigationTitle("Медиатека")
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
