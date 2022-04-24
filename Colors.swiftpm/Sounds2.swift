//
//  File.swift
//  Colors
//
//  Created by Terry Koo on 2022/04/20.
//

import AVFoundation

var audioPlayer2: AVAudioPlayer?

class Sounds2 {
    static var audioPlayer2: AVAudioPlayer!

    static func play(sound: String, type: String) {
        if let path = Bundle.main.path(forResource: sound, ofType: type) {
           do {
               //Doesn't stop background music
               _ = try? AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback, mode: .default, options: .mixWithOthers)
               //Load & play sound
               audioPlayer2 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
               audioPlayer2?.volume = 0.2
               audioPlayer2?.play()
           } catch {
               print("Error playing sound")
           }
        }
    }
}
