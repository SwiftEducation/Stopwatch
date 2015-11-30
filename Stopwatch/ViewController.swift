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
        print("Starting stopwatch...")
        NSTimer.scheduledTimerWithTimeInterval(0.1, target: self,
            selector: "updateElapsedTimeLabel:", userInfo: nil, repeats: true)
        stopwatch.start()
    }
    
    @IBAction func stopButtonTapped(sender: UIButton) {
        print(stopwatch.elapsedTime)
        stopwatch.stop()
    }
    
    func updateElapsedTimeLabel(timer: NSTimer) {
        print("Updating...")
        if stopwatch.isRunning {
            let minutes = Int(stopwatch.elapsedTime / 60)
            let seconds = Int(stopwatch.elapsedTime % 60)
            let tenthsOfSecond = Int(stopwatch.elapsedTime * 10 % 10)
            elapsedTimeLabel.text = String(format: "%02d:%02d.%d",
                minutes, seconds, tenthsOfSecond)
        } else {
            timer.invalidate()
        }
    }
    
}

