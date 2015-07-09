//
//  PlaylistDetailViewController.swift
//  ALgorhythm
//
//  Created by Dana Kock on 7/8/15.
//  Copyright (c) 2015 Tarman. All rights reserved.
//

import UIKit

class PlaylistDetailViewController: UIViewController {

   
    @IBOutlet weak var buttonPressLabel: UILabel!
    var playlist: Playlist?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        if playlist != nil {
            buttonPressLabel.text = playlist?.title
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
