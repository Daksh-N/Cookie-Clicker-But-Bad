//
//  GameData.swift
//  Cookie Clicker But Bad
//
//  Created by Daksh Nakra on 5/5/23.
//

import Foundation

class GameData: ObservableObject {
    @Published var numberOfItems =
        [
            0.0, // Number of Cursors
            0.0, // Number of Grandmas
            0.0, // Number of Farms
            0.0, // Number of Mines
            0.0, // Number of Factories
            0.0, // Number of Banks
            0.0, // Number of Temples
            0.0, // Number of Wizard Towers
            0.0, // Number of Shipments
            0.0, // Number of Alchemy Labs
            0.0, // Number of Portals
            0.0, // Number of Time Machines
            0.0, // Number of Antimatter Condensers
            0.0, // Number of Prisms
            0.0, // Number of Chancemakers
            0.0, // Number of Fractal Engines
            0.0, // Number of Javascript Consoles
            0.0, // Number of Idleverses
            0.0, // Number of Cortex Bakers
        ]
    @Published var items =
    [
        Item(name: "Cursor", price: 15.0, cps: 1.0),
        Item(name: "Grandma", price: 100.0, cps: 5.0),
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
    @Published var cookies = 0.0
    @Published var cps = 0.0
    @Published var showingShopView = false
}
