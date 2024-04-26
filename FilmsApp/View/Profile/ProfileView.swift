//
//  ProfileView.swift
//  FilmsApp
//
//  Created by Rakhim  on 26.04.2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        Button {
            return
        } label: {
            Text("Войти")
        }
        .frame(width: 250, height: 60)
        .background(Color.purple)
        .foregroundColor(.white)
        .font(.system(.title3))
        .cornerRadius(60)

    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
