//
//  MapView.swift
//  Swift_Tutorial_1
//
//  Created by Roman Matveev on 18.10.2020.
//  Copyright © 2020 BeornStudio. All rights reserved.
//

import SwiftUI
import MapKit

// MARK: - MapView

struct MapView: UIViewRepresentable {

	func makeUIView(context: Context) -> MKMapView {
		MKMapView(frame: .zero)
	}
	
	func updateUIView(_ uiView: MKMapView, context: Context) {
		let coordinate = CLLocationCoordinate2D(latitude: 34.011286,
												longitude: -116.166868)
		let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
		let region = MKCoordinateRegion(center: coordinate, span: span)
		uiView.setRegion(region, animated: true)
	}
}

// MARK: - PreviewProvider

struct MapView_Previews: PreviewProvider {

	static var previews: some View {
		MapView()
	}
}
