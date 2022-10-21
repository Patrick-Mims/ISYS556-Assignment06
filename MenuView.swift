/*
 Name: Patrick Mims
 Program: MenuView
 Date: 10.20.22
 */

import SwiftUI

struct MenuView: View {
    let message = "Working Full Time"
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "person")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                Text("Profile")
                    .foregroundColor(.gray)
                    .font(.headline)
            }
            .padding(.top, 30)
            HStack {
                Image(systemName: "envelope")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                Text("Messages")
                    .foregroundColor(.gray)
                    .font(.headline)
            }
            .padding(.top, 30)
            HStack {
                Image(systemName: "computer")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                Text("Videos")
                    .foregroundColor(.gray)
                    .font(.headline)
            }
            .padding(.top, 30)
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
