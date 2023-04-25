//
//  ContentView.swift
//  Cookie Clicker But Bad
//
//  Created by Daksh Nakra on 4/11/23.
//

// JJ was here

import SwiftUI

struct ContentView: View {
    @State private var test = 0.0
    @State private var placeNames =
    [
        "V",
        "nd",
        "od",
        "Sd",
        "sd",
        "Qd",
        "qd",
        "td",
        "dd",
        "ud",
        "d",
        "n",
        "o",
        "S",
        "s",
        "Q",
        "q",
        "t",
        "b",
        "m",
        "k"
    ]
    @State private var cookies = 0
    var body: some View {
        VStack {
            TitleText(text: "Cook E Clicker")
            BodyText(text: "Cook E's Summoned: \(cookies)")
            Image("Cook E").resizable().frame(width: 400, height: 400)
                .onTapGesture {
                    cookies += 1
                }
            Text(format(num: test))
        }
    }
    // This function formats the given number according to the digits place, ex: 10000000 -> "10m"
    func format(num: Double) -> String {
        if (num >= pow(10, 66))
        {
            return "Infinity"
        }
        if (num < 1000)
        {
            return "\(num)"
        }
        else
        {
            var exponent = 63.0
            var v = pow(10.0, exponent)
            var i = 0
            while (v >= 1000)
            {
                if (num >= v)
                {
                    let value = num / v
                    let roundedValue = round(value * 10) / 10.0
                    return "\(roundedValue)\(placeNames[i])"
                }
                i += 1
                exponent -= 3.0
                v = pow(10.0, exponent)
            }
            return "failure"
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

struct BodyText: View {
    let text: String
    var body: some View {
        Text(text).font(Font.custom("Cochin", size: 24))
    }
}
