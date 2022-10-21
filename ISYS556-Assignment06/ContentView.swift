/*
 Patrick Mims
 Date: October 14, 2022
 Assignment: Assigning Grades with if-else-if
 09/04 - 09/10
 ISYS556
 */

import SwiftUI

struct BookView: View {
    let company = "Library"
    var body: some View {
        ZStack {
            Color.brown
            VStack {
                Text(company)
            }
        }
    }
}

struct ResultView: View {
    var choice: String
    let message = "Events On Campus"
    
    var body: some View {
            ZStack {
                Color.cyan
                VStack {
                    Text(message + " chose \(choice)")
                    NavigationLink(destination: BookView()) {
                        Text("Events @ SFSU")
                    }
                }
            }
            .accentColor(Color.black)
    }
}

struct ContentView: View {
    let comment = try! AttributedString(markdown: "San Francisco State University")
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.purple
                VStack(spacing: 20) {
                    NavigationLink(destination: ResultView(choice: "Heads")) {
                        Text(comment)
                            .font(.system(size: 30, weight: .heavy, design: .monospaced))
                    }
                    .navigationBarTitle("Connect App", displayMode: .inline)
                }
            }
            .accentColor(Color.yellow)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
