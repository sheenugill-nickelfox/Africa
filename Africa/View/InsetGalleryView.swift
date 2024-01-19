//
//  InsetGalleryView.swift
//  Africa
//
//  Created by Nickelfox on 17/01/24.
//

import SwiftUI

struct InsetGalleryView: View {
    var animal:Animal
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,spacing:15){
                ForEach(animal.gallery,id:\.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                }
            }//: HStack
        }//: Scroll
    }
}


struct InsetGalleryView_Previews: PreviewProvider {
    static var previews: some View {
        // Create an array of animals from a JSON file
        let animals: [Animal] = Bundle.main.decode("animals.json")
        
        // Use one of the animals in the preview
        InsetGalleryView(animal: animals[0])
            .previewLayout(.sizeThatFits)
    }
}
