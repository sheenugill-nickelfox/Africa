//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Nickelfox on 17/01/24.
//

import SwiftUI

struct AnimalDetailView: View {
    let animal:Animal
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20){
               //Hero Image
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                //Title
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical,8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y:24))
                   
                // headline
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                //Gallery
                Group{
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)
                
                //Facts
                Group{
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did yoy know?")
                    InsetFactView(animal: animal)
                }
                .padding(.horizontal)
                
                //Description
                Group{
                    HeadingView(headingImage: "info.circle", headingText: "All about \(animal.name)")
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                
                //Map
                Group{
                    HeadingView(headingImage: "map", headingText: "National Parks")
                 InsetMapView()
                }
                .padding(.horizontal)
                //Link
                Group{
                    HeadingView(headingImage: "books.vertical", headingText: "learn More")
                    ExternalWebLinkView(animal: animal)
                }.padding(.horizontal)
            }//: Vstack
            .navigationBarTitle("Learn about \(animal.name)",displayMode: .inline)
        }//:Scoll
    }
}

struct AnimalDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        // Create an array of animals from a JSON file
        let animals: [Animal] = Bundle.main.decode("animals.json")
        
        // Use one of the animals in the preview
        NavigationView{
            AnimalDetailView(animal: animals[0] )
        }
    }
}
