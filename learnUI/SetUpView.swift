//
//  SetUpView.swift
//  learnUI
//
//  Created by the Dragon on 28.06.2020.
//  Copyright © 2020 theRAA. All rights reserved.
//

import SwiftUI

let setUpText = "SetUps"


struct SetUpRaw: View {
	var body: some View {
		HStack{
			Text(setUpText)
			Spacer()
		}
	}
}


struct SetUpView: View {
	@State var firstPlayerName = "player A"
	@State var secondPlayerName = "player B"

	var body: some View {
		VStack{
			Text(setUpText)
			PlayerNameRaw(playerNumber: 1, playerName: $firstPlayerName)
			Divider()
			PlayerNameRaw(playerNumber: 2, playerName: $secondPlayerName)
		}
	}
}

struct PlayerNameRaw: View {
	let playerNumber: Int
	@Binding var playerName: String
	
	var body: some View {
		HStack{
			Text("Player \(playerNumber): ")
				.fontWeight(.bold)
			TextField("player tag", text: $playerName)
		}
		.padding(.vertical, 6.0)
	}
}




struct SetUpView_Previews: PreviewProvider {
	static var previews: some View {
		Group{
			SetUpRaw().previewLayout(.fixed( width: 300, height: 50))
			SetUpView()
		}
	}
}
