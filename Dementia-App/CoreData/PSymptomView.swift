//
//  ToDoItemView.swift
//  CoreDataToDo
//
//  Created by Ellie Huang on 6/20/20.
//  Copyright © 2020 Ellie Huang. All rights reserved.
//

import SwiftUI

struct PSymptomView: View {
    @Environment(\.managedObjectContext) var managedObjectContext
    
    var pSymptomName: String = ""
    var pCreatedAt: String = ""
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(pSymptomName).font(.headline)
                Text(pCreatedAt).font(.caption)
                Button("Save PSymptoms") {
                    let pSymptom = PSymptomEntity(context: self.managedObjectContext)
                    pSymptom.pSymptomName = self.pSymptomName
                    pSymptom.pCreatedAt = Date()
                    pSymptom.pCheckedState = false
                    CoreDataManager.shared.saveContext()
                    
                    CoreDataManager.shared.whereIsMySQLite()
                }
            }
        }
    }
}

struct PSymptomView_Previews: PreviewProvider {
    static var previews: some View {
        PSymptomView(pSymptomName: "My great todo", pCreatedAt: "Today")
    }
}
