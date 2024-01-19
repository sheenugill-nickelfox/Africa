//
//  ContentView.swift
//  Africa
//
//  Created by Nickelfox on 17/01/24.
//

import SwiftUI

struct ContentView: View {
    let animals:[Animal] = Bundle.main.decode("animals.json")
    
    @State private var isGridViewActive:Bool = false
    
    let gridLayout:[GridItem] = Array(repeating: GridItem(.flexible()), count: 2)
    var body: some View {
        NavigationView{
            Group{
                if !isGridViewActive {
                    List{
                    CoverImageView()
                        .frame(height:300)
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    ForEach(animals){ animal in
                        NavigationLink(destination: AnimalDetailView(animal: animal)){
                            AnimalListItemView(animal: animal)
                        }//Link
                        
                    }//Loop
                }//: List
                    .listStyle(.plain)
                } else {
                    ScrollView(.vertical, showsIndicators: false){
                        LazyVGrid(columns: gridLayout, alignment:.center, spacing: 10) {
                            ForEach(animals) { item in
                                NavigationLink(
                                    destination: AnimalDetailView(animal: item)){
                                        AnimalGridItemView(animal: item)
                                    }//Link
                            }//:Loop
                        
                        }//lazyGrid
                        .padding(10)
                        .animation(.easeIn)
                    }//ScrollView
                }//:condition
        }//:Group
            .navigationBarTitle("Africa", displayMode: .large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing, content: {
                    HStack(spacing:16){
                        Button(
                            action: {
                                isGridViewActive = false
                            },
                            label: {
                            Image(systemName: "square.fill.text.grid.1x2")
                                    .font(.title2)
                                    .foregroundColor(isGridViewActive ? .primary :  .accentColor)
                        })
                        
                        Button(
                            action: {
                                isGridViewActive = true
                            },
                            label: {
                            Image(systemName: "square.grid.2x2")
                                    .font(.title2)
                                    .foregroundColor(isGridViewActive ? .accentColor : .primary)
                        })
                        
                    }//:HStack
                })//:Content
                
            }//:toolbar
                            
        }//: Navigation view
    }
}

#Preview {
    ContentView()
}
