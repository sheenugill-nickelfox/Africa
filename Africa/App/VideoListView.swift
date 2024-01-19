//
//  VideoListView.swift
//  Africa
//
//  Created by Nickelfox on 17/01/24.
//

import SwiftUI

struct VideoListView: View {
    @State var videos: [Video] = Bundle.main.decode("videos.json")
    var body: some View {
        NavigationView{
            List{
                ForEach(videos){ video in
                    NavigationLink(destination: VideoFileView(fileSelected: video.id, fileTitle: video.name)) {
                        VideoListitemView(video: video)
                            .padding(.vertical,8)
                    }
                }
            }//:List
            .listStyle(.insetGrouped)
            .navigationBarTitle("Videos", displayMode: .inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing, content:{ Button(
                    action: {
                        videos.shuffle()
                    }){
                        Image(systemName: "arrow.2.squarepath")
                    }})
            }
        }//:NavigationView
    }
}

#Preview {
 VideoListView()

}
