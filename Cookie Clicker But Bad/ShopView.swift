//
//  ShopView.swift
//  Cookie Clicker But Bad
//
//  Created by Daksh Nakra on 4/17/23.
//

import SwiftUI

struct ShopView: View {
    @State private var items =
    [
        Item(name: "Cursor", price: 15.0, cps: 0.1),
        Item(name: "Grandma", price: 100.0, cps: 1.0),
        Item(name: "Farm", price: 1100.0, cps: 8.0),
        Item(name: "Mine", price: 12000.0, cps: 47.0),
        Item(name: "Factory", price: 130000.0, cps: 260.0),
        Item(name: "Bank", price: 1400000.0, cps: 1400.0),
        Item(name: "Temple", price: 20000000.0, cps: 7800.0),
        Item(name: "Wizard Tower", price: 330000000.0, cps: 44000.0),
        Item(name: "Shipment", price: 5100000000.0, cps: 260000.0),
        Item(name: "Alchemy Lab", price: 75000000000.0, cps: 1600000.0),
        Item(name: "Portal", price: 1000000000000.0, cps: 10000000.0),
        Item(name: "Time Machine", price: 14000000000000.0, cps: 65000000.0),
        Item(name: "Antimatter Condenser", price: 170000000000000.0, cps: 430000000.0),
        Item(name: "Prism", price: 2100000000000000.0, cps: 2900000000.0),
        Item(name: "Chancemaker", price: 26000000000000000.0, cps: 21000000000.0),
        Item(name: "Fractal Engine", price: 310000000000000000.0, cps: 150000000000.0),
        Item(name: "Javascript Console", price: 71000000000000000000.0, cps: 1100000000000.0),
        Item(name: "Idleverse", price: 12000000000000000000000.0, cps: 8300000000000.0),
        Item(name: "Cortex Baker", price: 1900000000000000000000000.0, cps: 64000000000000.0)
    ]
    @ObservedObject var gameData: GameData
    var body: some View {
        VStack {
            ForEach (0..<19) { i in
                HStack {
                    Button(action: {
                        gameData.numberOfItems[i] += 1
                    }) {
                        Item(name: items[i].name, price: items[i].price, cps: items[i].cps)
                    }
                    .buttonStyle(CustomButtonStyleRed())
                }
            }
            /**
             Group {
             HStack {
             Item(name: "Cursor", price: 15, cps: 0.1)
             Button(action: {}) {
             Text("sup")
             }
             .buttonStyle(CustomButtonStyleRed())
             }
             HStack {
             Item(name: "Grandma", price: 100, cps: 1)
             }
             HStack {
             Item(name: "Farm", price: 1100, cps: 8)
             }
             HStack {
             Item(name: "Mine", price: 12000, cps: 47)
             }
             HStack {
             Item(name: "Factory", price: 130000, cps: 260)
             }
             HStack {
             Item(name: "Bank", price: 1400000, cps: 1400)
             }
             HStack {
             Item(name: "Temple", price: 20000000, cps: 7800)
             }
             HStack {
             Item(name: "Wizard Tower", price: 330000000, cps: 44000)
             }
             HStack {
             Item(name: "Shipment", price: 5100000000, cps: 260000)
             }
             HStack {
             Item(name: "Alchemy Lab", price: 75000000000, cps: 1600000)
             }
             }
             Group {
             HStack {
             Item(name: "Portal", price: 1000000000000, cps: 10000000)
             }
             HStack {
             Item(name: "Time Machine", price: 14000000000000, cps: 65000000)
             }
             HStack {
             Item(name: "Antimatter Condenser", price: 170000000000000, cps: 430000000)
             }
             HStack {
             Item(name: "Prism", price: 2100000000000000, cps: 2900000000)
             }
             HStack {
             Item(name: "Chancemaker", price: 26000000000000000, cps: 21000000000)
             }
             HStack {
             Item(name: "Fractal Engine", price: 310000000000000000, cps: 150000000000)
             }
             HStack {
             Item(name: "Javascript Console", price: 71000000000000000000, cps: 1100000000000)
             }
             HStack {
             Item(name: "Idleverse", price: 12000000000000000000000, cps: 8300000000000)
             }
             HStack {
             Item(name: "Cortex Baker", price: 1900000000000000000000000.0, cps: 64000000000000)
             }
             }
             */
        }
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView(gameData: GameData())
    }
}

struct Item: View {
    let name: String
    let price: Double
    let cps: Double
    var body: some View {
        BodyText(text: "\(name) | Price: \(ContentView().format(num: price)) cookies")
    }
}
