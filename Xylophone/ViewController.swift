//
//  ViewController.swift
//  Xylophone
//
//  Created by Jeevan Chandra Joshi on 08/01/23.
//

import AVFoundation
import UIKit

class ViewController: UIViewController {
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        guard let url = Bundle.main.url(forResource: sender.currentTitle, withExtension: "wav") else {
            return
        }
        do {
            player = try AVAudioPlayer(contentsOf: url)
        } catch {}
        player?.play()
    }
}
