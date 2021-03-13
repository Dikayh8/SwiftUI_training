//
//  StopWatchManager.swift
//  ChronoApp
//
//  Created by Joe on 31/01/2021.
//

import Foundation
import SwiftUI

class StopWatchManager: ObservableObject {
    
    enum stopWatchMode {
        case running
        case stopped
        case paused
    }
    
    @Published var mode: stopWatchMode = .stopped
    
    @Published var secondsElapse = 0.0
    var timer = Timer()
    
    func start() {
        mode = .running
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
            self.secondsElapse += 0.1
        }
    }
    
    func pause() {
        timer.invalidate()
        mode = .paused
    }
    
    func stop() {
        timer.invalidate()
        secondsElapse = 0
        mode = .stopped
    }
}
