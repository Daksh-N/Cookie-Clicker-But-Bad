//
//  ShopView.swift
//  Cookie Clicker But Bad
//
//  Created by Daksh Nakra on 4/17/23.
//

import SwiftUI

struct ShopView: View {
    var body: some View {
        VStack {
            Group {
                Item(name: "Cursor", price: 15, cps: 0.1)
                Item(name: "Grandma", price: 100, cps: 1)
                Item(name: "Farm", price: 1100, cps: 8)
                Item(name: "Mine", price: 12000, cps: 47)
                Item(name: "Factory", price: 130000, cps: 260)
                Item(name: "Bank", price: 1400000, cps: 1400)
                Item(name: "Temple", price: 20000000, cps: 7800)
                Item(name: "Wizard Tower", price: 330000000, cps: 44000)
                Item(name: "Shipment", price: 5100000000, cps: 260000)
                Item(name: "Alchemy Lab", price: 75000000000, cps: 1600000)
            }
            Group {
                Item(name: "Portal", price: 1000000000000, cps: 10000000)
                Item(name: "Time Machine", price: 14000000000000, cps: 65000000)
                Item(name: "Antimatter Condenser", price: 170000000000000, cps: 430000000)
                Item(name: "Prism", price: 2100000000000000, cps: 2900000000)
                Item(name: "Chancemaker", price: 26000000000000000, cps: 21000000000)
                Item(name: "Fractal Engine", price: 310000000000000000, cps: 150000000000)
                Item(name: "Javascript Console", price: 71000000000000000000, cps: 1100000000000)
                Item(name: "Idleverse", price: 12000000000000000000000, cps: 8300000000000)
                Item(name: "Cortex Baker", price: 1900000000000000000000000.0, cps: 64000000000000)
            }
        }
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()
    }
}

struct Item: View {
    // let icon: Don't know how to store an image variable
    let name: String
    let price: Double
    let cps: Double
    var body: some View {
        BodyText(text: "\(name) | Price: \(price) cookies")
    }
}
