//
//  SettingsView.swift
//  Dementia-App
//
//  Created by Ellie Sara Huang on 7/10/20.
//  Copyright © 2020 Neuroscience Amador Valley. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        
        GeometryReader { geometry in
                
            VStack() {
                
                Text("Settings")
                    .fontWeight(.bold).font(.largeTitle)
                
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
