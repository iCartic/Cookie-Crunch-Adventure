/// Copyright (c) 2019 Razeware LLC
/// 
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
/// 
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
/// 
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
/// 
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.

import Foundation
import UIKit
import Skillz

class GameManager : NSObject, SkillzDelegate {
  
  var window: UIWindow?
  
  /**
   Then tournamentWillBegin method is called when a player selects a tournament.
   
   -Parameter: gameParameters The array of game parameters which can be used to customize the tournament.
   -Parameter: matchInfo The SKZMatchInfo instance that provides match meta data such as match id and a list of players.
   
   Here we present the GameViewCOntroller that implements the main game interface.
   */
  func tournamentWillBegin(_ gameParameters: [AnyHashable : Any]!, with matchInfo: SKZMatchInfo!) {
    // present game screen here
    UIApplication.shared.isIdleTimerDisabled = true
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let gvc = storyboard.instantiateViewController(withIdentifier: "GameViewController") as? GameViewController
    self.window!.rootViewController?.present(gvc!, animated: true, completion: nil)
  }
  
  func setMainWindow(window: UIWindow) {
    self.window = window
  }
  
  /**
   * This method will be called when the Skillz SDK will exit.
   */
  func skillzWillExit() {
    print("skillzWillExit")
  }
  
  /**
   * This method will be called before the Skillz UI launches. Use this to clean up any state needed before you launch Skillz.
   */
  func skillzWillLaunch() {
    print("skillzWillLaunch")
  }
  
  /**
   * This method will be called once the Skillz UI has finished displaying. Use this to clean up your view hierarchy.
   */
  func skillzHasFinishedLaunching() {
    print("skillzHasFinishedLaunching")
  }
  
  
}
