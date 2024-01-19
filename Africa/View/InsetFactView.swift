//
//  InsetFactView.swift
//  Africa
//
//  Created by Nickelfox on 17/01/24.
//

import SwiftUI

struct InsetFactView: View {
    var animal:Animal
    var body: some View {
        GroupBox{
            TabView{
                ForEach(animal.fact,id:\.self){ fact in
                    Text(fact)
                }
            }//:Tab
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148,idealHeight: 168,maxHeight: 180)
        }//:Box
        
    }
}

struct InsetFactView_Previews: PreviewProvider {
    static var previews: some View {
        // Create an array of animals from a JSON file
        let animals: [Animal] = Bundle.main.decode("animals.json")
        
        // Use one of the animals in the preview
        InsetFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
    }
}
