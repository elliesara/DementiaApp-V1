//
//  Defaults.swift
//  Dementia-App
//
//  Created by Ellie Sara Huang on 7/23/20.
//  Copyright © 2020 Neuroscience Amador Valley. All rights reserved.
//

import SwiftUI

/// use a func instead; call this func from AppDelegate

struct Defaults: View {
    
    @Environment(\.managedObjectContext) var managedObjectContext
    
    var body: some View {
        let pSubCategory1 = PSubCategories(context: self.managedObjectContext)
        pSubCategory1.pCategoryName = "Self-Care Deficit"
        let pSubCategory2 = PSubCategories(context: self.managedObjectContext)
        pSubCategory1.pCategoryName = "Distrubed Sleep Pattern"
        let pSubCategory3 = PSubCategories(context: self.managedObjectContext)
        pSubCategory1.pCategoryName = "Impaired Physical Mobility"
        let pSubCategory4 = PSubCategories(context: self.managedObjectContext)
        pSubCategory1.pCategoryName = "Risk For Injury"
        let pSubCategory5 = PSubCategories(context: self.managedObjectContext)
        pSubCategory1.pCategoryName = "Disturbed Sensory Perception"
        
        return Text("")
    }
}

struct Defaults_Previews: PreviewProvider {
    static var previews: some View {
        Defaults()
    }
}
