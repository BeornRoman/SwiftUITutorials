//
//  CircleImage.swift
//  Swift_Tutorial_1
//
//  Created by Roman Matveev on 18.10.2020.
//  Copyright © 2020 BeornStudio. All rights reserved.
//

import SwiftUI

// MARK: - CircleImage

struct CircleImage: View {

	var body: some View {
		Image("turtlerock")
			.clipShape(Circle())
			.overlay(Circle().stroke(Color.white, lineWidth: 4))
			.shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
	}
}

// MARK: PreviewProvider

struct CircleImage_Previews: PreviewProvider {

	static var previews: some View {
		CircleImage()
	}
}
