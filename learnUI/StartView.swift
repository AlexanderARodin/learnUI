//
//  StartView.swift
//  learnUI
//
//  Created by the Dragon on 27.06.2020.
//  Copyright © 2020 theRAA. All rights reserved.
//

import SwiftUI

struct StartView: View {
	var body: some View {
		VStack {
			NavigationView{
				List(0..<20){ row in
					NavigationLink(destination: Text("\(row)-dest")) {
						Text("\(row)-lbl")
						}
					NavigationLink(destination: Text("\(row)-dest")) {
						Text("\(row)-lbl")
					}
					Text("22")
					Text("33")
					Text("44")
					Text("55")
					Text("66")
					Text("77")
					Text("88")
					Text("99")
				}
			}
			NavigationView{
				//NavigationLink(destination: Text("rrr")) {
				//	Text("yoo")
				//}
				List{
					Text("111")
						.background(Color.blue)
					Text("333")
				}
				.navigationBarTitle("ggMenu")
			}
			
			Text("+-+")
		}
	}
}


struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
