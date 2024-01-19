//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by Nickelfox on 18/01/24.
//

import SwiftUI

struct AnimalGridItemView: View {
    let animal: Animal
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct AnimalGridItemView_Previews: PreviewProvider {
    static var previews: some View {
        // Create an array of animals from a JSON file
        let animals: [Animal] = Bundle.main.decode("animals.json")
        
        // Use one of the animals in the preview
            AnimalGridItemView(animal: animals[0] )
    
    }
}
