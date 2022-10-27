/*
 Patrick Mims
 Date: October 14, 2022
 Assignment: Assigning Grades with if-else-if
 09/04 - 09/10
 ISYS556
 */

import SwiftUI

struct StudentView: View {
    let title = "Student View"
    
    @State private var students = [
        "Sarah",
        "Michael",
        "Kimberly",
        "Sam",
        "Anne",
        "Patrick"
    ]
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.mint
                VStack {
                    List {
                        ForEach(students, id: \.self) {
                            student in Text(student)
                        }
                    }
                    /*
                     NavigationLink(destination: ContentView()) {
                     Text(title)
                     }
                     .navigationTitle("Students")
                     */
                }
            }
            .accentColor(Color.white)
        }
    }
}

struct EventsView: View {
    let title = "Events View"
    var body: some View {
        ZStack {
            Color.orange
            VStack {
                NavigationLink(destination: StudentView()) {
                    Text(title + " Page")
                }
                .navigationBarTitle("Connect App", displayMode: .inline)
            }
        }
        .accentColor(Color.white)
    }
}

struct BookView: View {
    let title = "Library View"
    var body: some View {
        ZStack {
            Color.brown
            VStack {
                NavigationLink(destination: EventsView()) {
                    Text(title)
                }
                .navigationBarTitle("Connect App", displayMode: .inline)
            }
        }
        .accentColor(Color.white)
    }
}

struct ResultView: View {
    var choice: String
    let title = "J. Paul Leonard Library"
    
    var body: some View {
            ZStack {
                Color.cyan
                VStack {
    //                Text(title + " chose \(choice)")
                    NavigationLink(destination: BookView()) {
                        Text("Results View")
                    }
                    .navigationBarTitle("Connect App", displayMode: .inline)
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
