//
//  VideoFileView.swift
//  Africa
//
//  Created by Nickelfox on 17/01/24.
//

import SwiftUI
import AVKit

struct VideoFileView: View {
    var fileSelected:String
    var fileTitle:String
    var body: some View {
        VStack {
            VideoPlayer(player: videoPlayer(filename: fileSelected, fileExtension: "mp4")){
                //Text(fileTitle)
            }
            .overlay(
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 32,height: 32)
                .padding(.top,6)
                .padding(.horizontal,8),
            alignment: .topLeading)
        }
    }
}

#Preview {
    VideoFileView(fileSelected: "lion", fileTitle: "Lion")
}
