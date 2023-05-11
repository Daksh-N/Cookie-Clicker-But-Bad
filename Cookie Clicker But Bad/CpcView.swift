//
//  CpcView.swift
//  Cookie Clicker But Bad
//
//  Created by Daksh Nakra on 5/11/23.
//

import SwiftUI

struct CpcView: View {
    @ObservedObject var gameData: GameData
    var body: some View {
        VStack {
            if (gameData.cpcTier >= gameData.cpcUpgrades.count - 1)
            {
                TitleText(text: "Damn, guess you're already at your max upgrade")
            }
            else {
                TitleText(text: "Cpc stands for \"Cookies Per Click\" \n - Devs")
                Image(gameData.cpcUpgrades[gameData.cpcTier + 1].name).resizable().frame(width: 400, height: 400)
                BodyText(text: "Price: \(ContentView().format(num: gameData.cpcUpgrades[gameData.cpcTier].price))")
                if(gameData.cookies >= gameData.cpcUpgrades[gameData.cpcTier].price) {
                    Button(action: {
                        gameData.cpcTier += 1
                        gameData.cookies -= gameData.cpcUpgrades[gameData.cpcTier - 1].price
                        gameData.cpc = gameData.cpcUpgrades[gameData.cpcTier].cps
                    }) {
                        Text("^Cpc^")
                    }
                    .buttonStyle(CustomButtonStyleGreen())
                }
                else {
                    Button(action: {}) {
                        Text("^Cpc^")
                    }
                    .buttonStyle(CustomButtonStyleRed())
                }
                Button(action: {
                    gameData.showingCpcView = false
                })
                {
                    Text("Back")
                }
                .buttonStyle(CustomButtonStyleRed())
            }
        }
    }
}

struct CpcView_Previews: PreviewProvider {
    static var previews: some View {
        CpcView(gameData: GameData())
    }
}
