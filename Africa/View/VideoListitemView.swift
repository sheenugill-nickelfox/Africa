//
//  VideoListitemView.swift
//  Africa
//
//  Created by Nickelfox on 17/01/24.
//

import SwiftUI

struct VideoListitemView: View {
    let video:Video
    var body: some View {
        HStack(spacing: 10){
            ZStack{
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                    .cornerRadius(9)
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            }//:Ztack
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,spacing: 10){
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
            }//:Vstack
        }//:HStack
    }
}


struct VideoListitemView_Previews: PreviewProvider {
    static var previews: some View {
        // Create an array of animals from a JSON file
        let videos: [Video] = Bundle.main.decode("videos.json")
        
        // Use one of the animals in the preview
        NavigationView{
            VideoListitemView(video: videos[0])
        }
    }
}
