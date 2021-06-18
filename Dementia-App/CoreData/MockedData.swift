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
        
        if appState.reset == .reset {
            
            CoreDataManager.shared.deleteAllObjects(PSymptomEntity.self)
            CoreDataManager.shared.deleteAllObjects(PSymptomListEntity.self)
            
            let newSymptom1 = PSymptomListEntity(context: self.managedObjectContext)
            newSymptom1.pName = "Having an unkempt appearance"
            newSymptom1.pState = false
            
            let newSymptom2 = PSymptomListEntity(context: self.managedObjectContext)
            newSymptom2.pName = "Inability to wash body"
            newSymptom2.pState = false
            
            let newSymptom3 = PSymptomListEntity(context: self.managedObjectContext)
            newSymptom3.pName = "Difficulty choosing clothing"
            newSymptom3.pState = false
            
            let newSymptom4 = PSymptomListEntity(context: self.managedObjectContext)
            newSymptom4.pName = "Difficulty brushing teeth"
            newSymptom4.pState = false
            
            let newSymptom5 = PSymptomListEntity(context: self.managedObjectContext)
            newSymptom5.pName = "Trouble wearing clothes"
            newSymptom5.pState = false
            
            let newSymptom6 = PSymptomListEntity(context: self.managedObjectContext)
            newSymptom6.pName = "Inability to sit on toilet"
            newSymptom6.pState = false
            
            let newSymptom7 = PSymptomListEntity(context: self.managedObjectContext)
            newSymptom7.pName = "Difficulty washing hands"
            newSymptom7.pState = false
            
            let newSymptom8 = PSymptomListEntity(context: self.managedObjectContext)
            newSymptom8.pName = "Inability to shave/comb hair"
            newSymptom8.pState = false
            
            let newSymptom9 = PSymptomListEntity(context: self.managedObjectContext)
            newSymptom9.pName = "Convulsions"
            newSymptom9.pState = false
            
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
