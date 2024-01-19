//
//  ExternalWebLinkView.swift
//  Africa
//
//  Created by Nickelfox on 17/01/24.
//

import SwiftUI

struct ExternalWebLinkView: View {
    
    let animal:Animal
    
    var body: some View {
        GroupBox{
            HStack{
                Image(systemName: "globe")
             Text("Wikipedia")
                Spacer()
                Group{
                    Link(animal.name,destination: (URL(string: animal.link) ?? URL(string:"https://wikipedia.org"))!)
                   Image(systemName: "arrow.up.right.square")
                }//:Group
                .foregroundColor(.accentColor)
            }//:HSTACk
        }//:BOX
    }
}


struct ExternalWebLinkView_Previews: PreviewProvider {
    static var previews: some View {
        // Create an array of animals from a JSON file
        let animals: [Animal] = Bundle.main.decode("animals.json")
        
        // Use one of the animals in the preview
       ExternalWebLinkView(animal: animals[0] )
    }
}
