/*
See LICENSE folder for this sample’s licensing information.

Abstract:
The model for an individual landmark.
*/

import SwiftUI
import CoreLocation

// MARK: - Landmark

struct Landmark: Hashable, Codable, Identifiable {

	var id: Int
	var name: String
	fileprivate var imageName: String
	fileprivate var coordinates: Coordinates
	var state: String
	var park: String
	var category: Category

	var locationCoordinate: CLLocationCoordinate2D {
		CLLocationCoordinate2D(
			latitude: coordinates.latitude,
			longitude: coordinates.longitude)
	}

	enum Category: String, CaseIterable, Codable, Hashable {
		case featured = "Featured"
		case lakes = "Lakes"
		case rivers = "Rivers"
	}
}

// MARK: - Landmark Extension

extension Landmark {

	var image: Image {
		ImageStore.shared.image(name: imageName)
	}
}

// MARK: - Coordinates

struct Coordinates: Hashable, Codable {

	var latitude: Double
	var longitude: Double
}
