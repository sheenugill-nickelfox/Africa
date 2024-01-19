//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Nickelfox on 17/01/24.
//

import SwiftUI

struct AnimalListItemView: View {
    var animal: Animal
    var body: some View {
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 16){
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90,height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack(alignment: .leading, spacing: 8) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    .padding(.trailing,8)
            }//:VStack
        }//: Hstack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        // Create an array of animals from a JSON file
        let animals: [Animal] = Bundle.main.decode("animals.json")

        // Use one of the animals in the preview
        AnimalListItemView(animal: animals[1] )
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

