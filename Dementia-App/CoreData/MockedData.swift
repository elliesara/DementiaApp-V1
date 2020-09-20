//
//  MockedData.swift
//  Dementia-App
//
//  Created by Ellie Sara Huang on 9/18/20.
//  Copyright © 2020 Neuroscience Amador Valley. All rights reserved.
//

import SwiftUI

struct MockedData: View {
    
    @Environment(\.managedObjectContext) var managedObjectContext
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        
        if appState.reset != .noReset {
            
            CoreDataManager.shared.deleteAllObjects(PSymptomListEntity.self)
            
            let newSymptom1 = PSymptomListEntity(context: self.managedObjectContext)
            newSymptom1.pNameList = "Having an unkempt appearance"
            newSymptom1.pStateList = false
            
            let newSymptom2 = PSymptomListEntity(context: self.managedObjectContext)
            newSymptom2.pNameList = "Inability to wash body"
            newSymptom2.pStateList = false
            
            let newSymptom3 = PSymptomListEntity(context: self.managedObjectContext)
            newSymptom3.pNameList = "Difficulty choosing clothing"
            newSymptom3.pStateList = false
            
            let newSymptom4 = PSymptomListEntity(context: self.managedObjectContext)
            newSymptom4.pNameList = "Difficulty brushing teeth"
            newSymptom4.pStateList = false
            
            let newSymptom5 = PSymptomListEntity(context: self.managedObjectContext)
            newSymptom5.pNameList = "Trouble wearing clothes"
            newSymptom5.pStateList = false
            
            let newSymptom6 = PSymptomListEntity(context: self.managedObjectContext)
            newSymptom6.pNameList = "Inability to sit on toilet"
            newSymptom6.pStateList = false
            
            let newSymptom7 = PSymptomListEntity(context: self.managedObjectContext)
            newSymptom7.pNameList = "Difficulty washing hands"
            newSymptom7.pStateList = false
            
            let newSymptom8 = PSymptomListEntity(context: self.managedObjectContext)
            newSymptom8.pNameList = "Inability to shave/comb hair"
            newSymptom8.pStateList = false
            
            let newSymptom9 = PSymptomListEntity(context: self.managedObjectContext)
            newSymptom9.pNameList = "Convulsions"
            newSymptom9.pStateList = false
            
            CoreDataManager.shared.saveContext()
        }
        
        return(Text(""))
        
    }
}

struct MockedData_Previews: PreviewProvider {
    static var previews: some View {
        MockedData()
    }
}
