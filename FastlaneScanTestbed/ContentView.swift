//
//  ContentView.swift
//  FastlaneScanTestbed
//
//  Created by Wojciech Chojnacki on 15/01/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    NavigationLink(destination: Screen01View()) {
                        Text("A spy")
                    }
                    NavigationLink(destination: Screen02View()) {
                        Text("A fanatic")
                    }
                }
            }.navigationTitle("Allo, allo!")
        }
    }
}

struct Screen01View: View {
    var body: some View {
        Text("It is I, Lecrerc")
            .padding()
            .navigationTitle("Lecrerc")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct Screen02View: View {
    var body: some View {
        Text("Zat vas very amuzink")
            .border(.gray, width: 1)
            .padding()
            .navigationTitle("Herr Otto Flick")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
