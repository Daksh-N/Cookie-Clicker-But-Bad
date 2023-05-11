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
    @Published var cpcUpgrades =
    [
        Item(name: "Cook E", price: pow(10, 6), cps: 1),
        Item(name: "Black Cook E", price: pow(10, 9), cps: 2),
        Item(name: "Gray Cook E", price: pow(10, 12), cps: 4),
        Item(name: "Red Cook E", price: pow(10, 15), cps: 8),
        Item(name: "Orange Cook E", price: pow(10, 18), cps: 16),
        Item(name: "Yellow Cook E", price: pow(10, 21), cps: 32),
        Item(name: "Green Cook E", price: pow(10, 24), cps: 64),
        Item(name: "Blue Cook E", price: pow(10, 27), cps: 128),
        Item(name: "Purple Cook E", price: pow(10, 30), cps: 256),
        Item(name: "Pink Cook E", price: pow(10, 33), cps: 512),
        Item(name: "Chocolate Chip Cook E", price: pow(10, 36), cps: 1024),
        Item(name: "Red Velvet Cook E", price: pow(10, 39), cps: 2048)
    ]
    @Published var cpcTier = 0 // This number represents what index of the above array we are on
    @Published var cookies = 0.0 // Amount of cookies you have
    @Published var cps = 0.0 // Your cookies per second rate
    @Published var cpc = 1.0 // Your cookies per click rate
    @Published var showingShopView = false // A boolean that dictates if the ShopView is being shown
    @Published var showingCpcView = false // A boolean that dictates if the CpcView (Cookies per click View) is being shown
}
