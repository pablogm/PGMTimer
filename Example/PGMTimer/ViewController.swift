/*
Copyright (c) 2015 Pablo GM <invanzert@gmail.com>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
*/

import UIKit
import PGMTimer

class ViewController: UIViewController {
    
    
    // MARK: Properties
    private var timer:PGMTimer!
    
    
    // MARK: - Outlets
    
    @IBOutlet weak var timerLabel: UILabel!
    
    
    // MARK: - Actions
    
    @IBAction func startTimer(sender: UIButton) {
        
        if timer.state == .TimerStateUnkown || timer.state == .TimerStateStopped || timer.state == .TimerStateEnded {
            
            timer.start()
        }
        else {
            print("Can not start")
        }
    }
    
    @IBAction func pauseTimer(sender: UIButton) {
        
        if timer.state == .TimerStateRunning {
            
            timer.pause()
        }
        else {
            print("Can not pause")
        }
    }
    
    @IBAction func resumeTimer(sender: UIButton) {
        
        if timer.state == .TimerStatePaused {
            
            timer.resume()
        }
        else {
            print("Can not resume")
        }
    }
    
    @IBAction func stopTimer(sender: UIButton) {
        
        if timer.state == .TimerStateRunning {
            
            timer.stop()
        }
        else {
            print("Can not stop")
        }
    }
    
    
    // MARK: View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timer = PGMTimer(timerEnd: 10.0, timerWillStart: {
            
            print("Timer started.")
            
            }, timerDidFire: { [weak self] time in
                
                self?.timerLabel.text = time
                
            }, timerDidPause: {
                
                print("Timer paused")
                
            }, timerWillResume: {
                
                print("Timer resumed")
                
            }, timerDidStop: {
                
                print("Timer stopped")
                
            }, timerDidEnd: { [weak self] time in
                
                self?.timerLabel.text = time
                
                print("Timer End")
            })
    }
    
    
    // MARK: Memory Management
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}