//
//  ReportsView.swift
//  Dementia-App
//
//  Created by Ellie Sara Huang on 7/10/20.
//  Copyright © 2020 Neuroscience Amador Valley. All rights reserved.
//

import SwiftUI

struct ReportsView: View {
    
    @FetchRequest(fetchRequest: PSymptomEntity.getPSymptoms()) var physicalSymptoms: FetchedResults<PSymptomEntity>
    
    var body: some View {
        VStack {
            Text("Reports")
            Button("Reset data") {
                CoreDataManager.shared.deleteAllObjects(PSymptomEntity.self)
            }
        }.onAppear() {
            CoreDataManager.shared.whereIsMySQLite()
        }
    }
}

struct ReportsView_Previews: PreviewProvider {
    static var previews: some View {
        ReportsView()
    }
}
