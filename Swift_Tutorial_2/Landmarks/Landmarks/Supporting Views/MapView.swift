/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view that hosts an `MKMapView`.
*/

import SwiftUI
import MapKit

// MARK: - MapView

struct MapView: UIViewRepresentable {

	var coordinates: CLLocationCoordinate2D

	func makeUIView(context: Context) -> MKMapView {
		MKMapView(frame: .zero)
	}

	func updateUIView(_ uiView: MKMapView, context: Context) {
		let coordinate = CLLocationCoordinate2D(
			latitude: coordinates.latitude, longitude: coordinates.longitude)
		let span = MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
		let region = MKCoordinateRegion(center: coordinate, span: span)
		uiView.setRegion(region, animated: true)
	}
}

// MARK: - PreviewProvider

struct MapView_Previews: PreviewProvider {

	static var previews: some View {
		MapView(coordinates: landmarkData[0].locationCoordinate)
	}
}
