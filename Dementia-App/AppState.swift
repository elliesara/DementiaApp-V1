//
//  AppState.swift
//  Dementia-App
//
//  Created by Ellie Sara Huang on 9/19/20.
//  Copyright © 2020 Neuroscience Amador Valley. All rights reserved.
//

import Foundation

class AppState: ObservableObject {
    
    @Published var reset: ResetType = .noReset
    
    enum ResetType {
        case reset, noReset
    }
    
}
