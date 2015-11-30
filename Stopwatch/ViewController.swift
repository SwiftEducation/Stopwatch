/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var elapsedTimeLabel: UILabel!
    let stopwatch = Stopwatch()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func startButtonTapped(sender: UIButton) {
        print("Starting stopwatch")
        stopwatch.start()
        while stopwatch.isRunning {
            print("Updating...")
            elapsedTimeLabel.text = "\(stopwatch.elapsedTime)"
        }
    }
    
    @IBAction func stopButtonTapped(sender: UIButton) {
        print(stopwatch.elapsedTime)
        stopwatch.stop()
    }
    
}

