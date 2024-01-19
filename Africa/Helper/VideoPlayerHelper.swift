//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by Nickelfox on 17/01/24.
//

import Foundation
import AVKit

var videoPlayer : AVPlayer?
func videoPlayer(filename:String, fileExtension:String)-> AVPlayer{
    if(Bundle.main.url(forResource: filename, withExtension: fileExtension) != nil){
        videoPlayer = AVPlayer(url: Bundle.main.url(forResource: filename, withExtension: fileExtension)!)
        videoPlayer?.play()
    }
    return videoPlayer!
}
