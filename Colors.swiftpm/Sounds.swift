//
//  File.swift
//  Colors
//
//  Created by Terry Koo on 2022/04/20.
//

import AVFoundation

var audioPlayer: AVAudioPlayer?

class Sounds {
    static var audioPlayer: AVAudioPlayer!

    static func play(sound: String, type: String) {
        if let path = Bundle.main.path(forResource: sound, ofType: type) {
           do {
               //Doesn't stop background music
               _ = try? AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback, mode: .default, options: .mixWithOthers)
               //Load & play sound
               
               audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
               audioPlayer?.numberOfLoops = -1
               audioPlayer?.volume = 0.05
               audioPlayer?.play()
           } catch {
               print("Error playing sound")
           }
        }
    }
}
