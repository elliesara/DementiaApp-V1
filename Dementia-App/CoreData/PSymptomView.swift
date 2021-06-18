//
//  PSymptomView.swift
//  CoreDataToDo
//
//  Created by Ellie Huang on 9/2/20.
//  Copyright © 2020 Neuroscience Amador Valley. All rights reserved.
//

import SwiftUI

struct PSymptomView: View {
    @Environment(\.managedObjectContext) var managedObjectContext
    
    var pSymptomName: String = ""
    var pCreatedAt: String = ""
    
    var body: some View {
        HStack {
            Text(pSymptomName).font(.headline).padding(.bottom)
            Text(pCreatedAt).font(.caption).padding(.bottom)
        }
    }
}

struct PSymptomView_Previews: PreviewProvider {
    static var previews: some View {
        PSymptomView(pSymptomName: "My great todo", pCreatedAt: "Today")
    }
}
