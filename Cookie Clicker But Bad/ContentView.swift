//
//  ContentView.swift
//  Cookie Clicker But Bad
//
//  Created by Daksh Nakra on 4/11/23.
//

// JJ was here

import SwiftUI

struct ContentView: View {
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
    @ObservedObject var gameData = GameData()
    /*
     @State var numberOfItems =
     [
     0, // Number of Cursors
     0, // Number of Grandmas
     0, // Number of Farms
     0, // Number of Mines
     0, // Number of Factories
     0, // Number of Banks
     0, // Number of Temples
     0, // Number of Wizard Towers
     0, // Number of Shipments
     0, // Number of Alchemy Labs
     0, // Number of Portals
     0, // Number of Time Machines
     0, // Number of Antimatter Condensers
     0, // Number of Prisms
     0, // Number of Chancemakers
     0, // Number of Fractal Engines
     0, // Number of Javascript Consoles
     0, // Number of Idleverses
     0, // Number of Cortex Bakers
     ]
     @State private var showingShopView = false
     */
    var body: some View {
        VStack {
            TitleText(text: "Cook E Clicker")
            BodyText(text: "Cook E's Summoned: \(format(num: gameData.cookies))")
            BodyText(text: "Base CPS: \(format(num: gameData.cps))")
            Image("Cook E").resizable().frame(width: 400, height: 400)
                .onTapGesture {
                    gameData.cookies += 1
                }
                .sheet(isPresented: $gameData.showingShopView, content: {
                    ShopView(gameData: gameData)
                })
                .onAppear {
                    Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
                        startTimer()
                    }
                }
            Button(action: {gameData.showingShopView = true}) {
                Text("Shop")
            }
            .buttonStyle(CustomButtonStyleGreen())
            Button(action: {reset()}) {
                Text("Reset")
            }
            .buttonStyle(CustomButtonStyleRed())
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
    func reset() {
        gameData.cookies = 0.0
        gameData.cps = 0.0
        gameData.numberOfItems = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    }
    func startTimer() {
            gameData.cookies += gameData.cps
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
        Text(text).font(Font.custom("Cochin", size: 40))
    }
}

struct BodyText: View {
    let text: String
    var body: some View {
        Text(text).font(Font.custom("Cochin", size: 20))
    }
}

struct CustomButtonStyleGreen: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 75)
            .frame(height: 1)
            .font(Font.custom("Cochin", size: 24))
            .padding()
            .background(.green).opacity(configuration.isPressed ? 0.0 : 1.0)
            .foregroundColor(.black)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

struct CustomButtonStyleRed: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 75)
            .frame(height: 1)
            .font(Font.custom("Cochin", size: 24))
            .padding()
            .background(.red).opacity(configuration.isPressed ? 0.0 : 1.0)
            .foregroundColor(.black)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
