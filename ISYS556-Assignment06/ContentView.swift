/*
    Patrick Mims
    Date: October 14, 2022
    Assignment: Assigning Grades with if-else-if
    09/04 - 09/10
    ISYS556
 */

import SwiftUI

struct ResultView: View {
    var choice: String
    
    var body: some View {
        Text("You chose \(choice)")
    }
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                NavigationLink(destination: ResultView(choice: "Heads")) {
                    Text("ISYS-556")
                        .padding()
                        .background(.gray)
                }
                .navigationBarTitle("San Francisco State", displayMode: .inline)
            }
        }
        .background(Color.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
