/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view that clips an image to a circle and adds a stroke and shadow.
*/

import SwiftUI

// MARK: - CircleImage

struct CircleImage: View {

	var image: Image

	var body: some View {
		image
			.clipShape(Circle())
			.overlay(Circle().stroke(Color.white, lineWidth: 4))
			.shadow(radius: 10)
			.aspectRatio(contentMode: .fill)
	}
}

// MARK: - PreviewProvider

struct CircleImage_Previews: PreviewProvider {

	static var previews: some View {
		CircleImage(image: landmarkData[0].image)
	}
}
