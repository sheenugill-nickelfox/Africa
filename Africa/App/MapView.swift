//
//  MapView.swift
//  Africa
//
//  Created by Nickelfox on 17/01/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region:MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(
            latitude: 6.600286,
            longitude: 16.4377599)
        
        var mapZoomLevel = MKCoordinateSpan(
            latitudeDelta: 70.0,
            longitudeDelta: 70.0)
        
        var mapRegion = MKCoordinateRegion(
            center: mapCoordinates,
            span: mapZoomLevel)
        
        return mapRegion
    }()
    let locations : [NationalParkLocation] = Bundle.main.decode("locations.json")
    var body: some View {
       Map(
       coordinateRegion: $region,
       annotationItems: locations,
       annotationContent: { item in
//           MapPin(coordinate: item.location, tint: .accentColor) // older type
           
//           MapMarker(coordinate: item.location, tint: .accentColor) // new one
           
           // CustomAnnotation
//           MapAnnotation(coordinate: item.location, content: {
//               Image("logo")
//                   .resizable()
//                   .scaledToFit()
//                   .frame(width: 32,height: 32,alignment: .center)
//           })
           
           MapAnnotation(coordinate: item.location, content: {
               MapAnnotationView(locations: item)
           })
       })
       .overlay(
        HStack(alignment: .center,spacing: 12) {
            Image("compass")
                .resizable()
                .scaledToFit()
            .frame(width: 48,height: 48,alignment: .center)
            VStack(alignment: .leading,spacing: 3 ){
                HStack{
                    Text("Latitude:")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(.accentColor)
                    Spacer()
                    Text("\(region.center.latitude)")
                        .font(.footnote)
                        .foregroundColor(.white)
                }
                Divider()
                HStack{
                    Text("Longitude:")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(.accentColor)
                    Spacer()
                    Text("\(region.center.longitude)")
                        .font(.footnote)
                        .foregroundColor(.white)
                }
            }
        }
            .padding(.vertical,12)
            .padding(.horizontal,16)
            .background(
                Color.black
                    .cornerRadius(8)
                    .opacity(0.6))
            .padding()
        ,alignment: .top
       )
    }
}

#Preview {
    MapView()
}
