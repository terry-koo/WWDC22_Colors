import AVFoundation

var audioPlayer: AVAudioPlayer?

class Sounds {
    static var audioPlayer: AVAudioPlayer!

    static func play(sound: String, type: String) {
        if let path = Bundle.main.path(forResource: sound, ofType: type) {
           do {
               _ = try? AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback, mode: .default, options: .mixWithOthers)
               audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
               audioPlayer?.numberOfLoops = -1
               audioPlayer?.volume = 0.04
               audioPlayer?.play()
           } catch {
               print("Error playing sound")
           }
        }
    }
}
