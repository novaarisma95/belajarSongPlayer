//
//  ViewController.swift
//  learnSongPlayer
//
//  Created by Nova Arisma on 10/15/19.
//  Copyright © 2019 Nova Arisma. All rights reserved.
//

import UIKit
//import MediaPlayer
import AVFoundation


class ViewController: UIViewController {
    
    @IBOutlet weak var Lyrics: UILabel!
    
    @IBOutlet weak var photoAlbum: UIImageView!
    @IBOutlet weak var playedTime: UILabel!
    // eror kemarin karna di ios 13 ada yang berubah var audioPlayer = AudioPlayer() to var audioPlayer: AVAudioPlayer!
    var audioPlayer: AVAudioPlayer!
    var timer:Timer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.5738074183, green: 0.5655357838, blue: 0, alpha: 1)
        
        //Catch
        guard let sound = Bundle.main.path(forResource: "song", ofType: "mp3") else {
            print("song not found")
            return
        }
        let url = URL(fileURLWithPath: sound)
        print(url.absoluteString)
        do
        {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
        }
        catch{
            print(error)
        }
    }


    @IBAction func playButton(_ sender: Any) {
        audioPlayer.play()        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTime),
        userInfo: nil, repeats: true)
        
        
    }
    
    @objc func updateTime()
    {
        let currentTime = Int(audioPlayer!.currentTime)
        let minutes = currentTime/60
        let seconds = currentTime - minutes * 60
        playedTime.text = String(format: "%02d:%02d", minutes,seconds) as String
        
        //lyrics
        if seconds >= 0 && seconds <= 9
        {
            Lyrics.text = "Laskar Pelangi - Nidji"
        }
        if seconds >= 10 && seconds <= 15
        {
            Lyrics.text = "Mimpi adalah kunci"
        }
        if seconds >= 16 && seconds <= 20
        {
            Lyrics.text = "untuk kita menaklukkan dunia"
        }
        if seconds >= 21 && seconds <= 25
        {
            Lyrics.text = "berlarilah tanpa lelah"
        }
        if seconds >= 26 && seconds <= 30
        {
            Lyrics.text = "sampai engkau meraihnya"
        }
        if seconds >= 31 && seconds <= 36
        {
            Lyrics.text = "laskar pelangi"
        }
        if seconds >= 37 && seconds <= 42
        {
            Lyrics.text = "takkan terikat waktu"
        }
        if seconds >= 43 && seconds <= 47
        {
            Lyrics.text = "bebaskan mimpimu di angkasa"
        }
        if seconds >= 48 && seconds <= 54
        {
            Lyrics.text = "warnai bintang di jiwa"
        }
        if seconds >= 56 && seconds <= 59
        {
            Lyrics.text = "menarilah dan terus tertawa"
        }
        if minutes >= 1, seconds >= 1 && minutes <= 1, seconds <= 6
        {
            Lyrics.text = "walau dunia tak seindah surga"
        }
        if minutes >= 1, seconds >= 7 && minutes <= 1, seconds <= 11
        {
            Lyrics.text = "bersyukurlah pada Yang Kuasa"
        }
        if minutes >= 1, seconds >= 12 && minutes <= 1, seconds <= 17
        {
            Lyrics.text = "cinta kita di dunia..."
        }
        if minutes >= 1, seconds >= 18 && minutes <= 1, seconds <= 18
        {
            Lyrics.text = ""
        }
        if minutes >= 1, seconds >= 19 && minutes <= 1, seconds <= 23
        {
            Lyrics.text = "selamanya"
        }
        if minutes >= 1, seconds >= 24 && minutes <= 1, seconds <= 30
        {
            Lyrics.text = ""
        }
        if minutes >= 1, seconds >= 31 && minutes <= 1, seconds <= 35
        {
            Lyrics.text = "cinta kepada hidup"
        }
        if minutes >= 1, seconds >= 36 && minutes <= 1, seconds <= 40
        {
            Lyrics.text = "memberikan senyuman abadi"
        }
        if minutes >= 1, seconds >= 41 && minutes <= 1, seconds <= 45
        {
            Lyrics.text = "walau hidup kadang tak adil"
        }
        if minutes >= 1, seconds >= 46 && minutes <= 1, seconds <= 53
        {
            Lyrics.text = "tapi cinta lengkapi kita..."
        }
        if minutes >= 1, seconds >= 54 && minutes <= 1, seconds <= 60
        {
            Lyrics.text = "ooo…"
        }
        if minutes >= 2, seconds >= 0 && minutes <= 2, seconds <= 4
        {
            Lyrics.text = "ooo…"
        }
        if minutes >= 2, seconds >= 5 && minutes <= 2, seconds <= 9
        {
            Lyrics.text = "laskar pelangi"
        }
        if minutes >= 2, seconds >= 10 && minutes <= 2, seconds <= 15
        {
            Lyrics.text = "takkan terikat waktu"
        }
        if minutes >= 2, seconds >= 16 && minutes <= 2, seconds <= 20
        {
            Lyrics.text = "jangan berhenti mewarnai"
        }
        if minutes >= 2, seconds >= 21 && minutes <= 2, seconds <= 29
        {
            Lyrics.text = "jutaan mimpi di bumi..."
        }
        if minutes >= 2, seconds >= 30 && minutes <= 2, seconds <= 34
        {
            Lyrics.text = "o! menarilah dan terus tertawa"
        }
        if minutes >= 2, seconds >= 35 && minutes <= 2, seconds <= 39
        {
            Lyrics.text = "walau dunia tak seindah surga"
        }
        if minutes >= 2, seconds >= 40 && minutes <= 2, seconds <= 45
        {
            Lyrics.text = "bersyukurlah pada Yang Kuasa"
        }
        if minutes >= 2, seconds >= 46 && minutes <= 2, seconds <= 51
        {
            Lyrics.text = "cinta kita di dunia..."
        }
        if minutes >= 2, seconds >= 52 && minutes <= 2, seconds <= 53
        {
            Lyrics.text = ""
        }
        if minutes >= 2, seconds >= 54 && minutes <= 2, seconds <= 58
        {
            Lyrics.text = "menarilah dan terus tertawa"
        }
        if minutes >= 2, seconds >= 59 && minutes <= 3, seconds <= 4
        {
            Lyrics.text = "walau dunia tak seindah surga"
        }
        if minutes >= 3, seconds >= 5 && minutes <= 3, seconds <= 9
        {
            Lyrics.text = "bersyukurlah pada Yang Kuasa"
        }
        if minutes >= 3, seconds >= 10 && minutes <= 3, seconds <= 16
        {
            Lyrics.text = "cinta kita di dunia..."
        }
        if minutes >= 3, seconds >= 17 && minutes <= 3, seconds <= 21
        {
            Lyrics.text = "selamanya"
        }
        if minutes >= 2, seconds >= 22 && minutes <= 3, seconds <= 27
        {
            Lyrics.text = ""
        }
        if minutes >= 3, seconds >= 28 && minutes <= 3, seconds <= 32
        {
            Lyrics.text = "laskar pelangi"
        }
        if minutes >= 3, seconds >= 33 && minutes <= 3, seconds <= 39
        {
            Lyrics.text = "takkan terikat waktu"
        }
        if minutes >= 3, seconds >= 40 && minutes <= 3, seconds <= 45
        {
            Lyrics.text = ""
        }
    }
    
    
    @IBAction func pauseButton(_ sender: Any) {
        audioPlayer.pause()
    }
}
