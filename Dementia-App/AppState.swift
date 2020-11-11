//
//  AppState.swift
//  Dementia-App
//
//  Created by Ellie Sara Huang on 9/19/20.
//  Copyright © 2020 Neuroscience Amador Valley. All rights reserved.
//

import Foundation
import SwiftUI

class AppState: ObservableObject {
    
    @Published var reset: ResetType = .reset ///always rest data in app each time simulator opens
    
    enum ResetType {
        case reset, noReset
    }
    
}
