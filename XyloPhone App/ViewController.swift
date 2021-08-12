//
//  ViewController.swift
//  XyloPhone App
//
//  Created by Pooja's MacBook Pro on 30/07/21.
//

import UIKit
import AVFoundation
//The AVFoundation framework combines six major technology areas that together encompass a wide range of tasks for capturing, processing, synthesizing, controlling, importing and exporting audiovisual media on Apple platforms.

class ViewController: UIViewController {
    
    var player : AVAudioPlayer!
    //An AVPlayer is a controller object used to manage the playback and timing of a media asset. You can use an AVPlayer to play local and remote file-based media, such as QuickTime movies and MP3 audio files, as well as audiovisual media served using HTTP Live Streaming.
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func keyPressed(_ sender: UIButton) {
       // print(sender.backgroundColor)
       // print(sender.currentTitle)
        playSound(soundName: sender.currentTitle!)
        //Reduces the sender's (the button that got pressed) opacity to half.
                sender.alpha = 0.5
                
                //Code should execute after 0.2 second delay.
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    //Bring's sender's opacity back up to fully opaque.
                    sender.alpha = 5.0
                }
    }
    
    func playSound(soundName: String) {
        
        
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
        
        //2
//        let url = Bundle.main.url(forResource: "C", withExtension: "wav")
//        player = try! AVAudioPlayer(contentsOf: url!)
//        player.play()
//
        //1
        /*guard let url = Bundle.main.url(forResource: "C", withExtension: "wav") else { return }

        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)

            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)

              guard let player = player else { return }

            player.play()

        } catch let error {
            print(error.localizedDescription)
        }*/
    }
}

