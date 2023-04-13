//
//  ContentView.swift
//  Cookie Clicker But Bad
//
//  Created by Daksh Nakra on 4/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TitleText(text: "Cook E Clicker")
            Image("Cook E").resizable().frame(width: 400, height: 400)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TitleText: View {
    let text: String
    var body: some View {
        Text(text).font(Font.custom("Cochin", size: 48))
    }
}
