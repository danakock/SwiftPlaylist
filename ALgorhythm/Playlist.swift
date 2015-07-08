//
//  Playlist.swift
//  ALgorhythm
//
//  Created by Dana Kock on 7/8/15.
//  Copyright (c) 2015 Tarman. All rights reserved.
//

import Foundation
import UIKit

struct Playlist {
    var title: String?
    var desciption: String?
    var icon: UIImage?
    var largeIcon: UIImage?
    var artists: [String] = []
    var backgoundColor: UIColor = UIColor.clearColor()
    
    init(index: Int) {
        let musicLibrary = MusicLibrary().library
        let playlistDictionary = musicLibrary[index]
        
        title = playlistDictionary["title"] as? String
        desciption = playlistDictionary["description"]as? String
        
        let iconName = playlistDictionary["icon"] as! String!
        icon = UIImage(named: iconName)
        
        let largeIconName = playlistDictionary["largeIcon"] as! String
        largeIcon = UIImage(named: largeIconName)
        
        artists += playlistDictionary["artists"] as! [String]
        
        let colorsDictionary = playlistDictionary["backgroundColor"] as! [String: CGFloat]
        backgoundColor = rgbColorFromDictionary(colorsDictionary)
        
    }
    
    func rgbColorFromDictionary(colorDictionary: [String: CGFloat]) -> UIColor {
        
        let red = colorDictionary["red"]!
        let green = colorDictionary["green"]!
        let blue = colorDictionary["blue"]!
        let alpha = colorDictionary["alpha"]!
        
        return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
        
    }
}
