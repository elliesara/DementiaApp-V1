//
//  PSymptoms.swift
//  Dementia-App
//
//  Created by Ellie Sara Huang on 7/23/20.
//  Copyright © 2020 Neuroscience Amador Valley. All rights reserved.
//

import Foundation
import CoreData

public class PSymptoms: NSManagedObject, Identifiable {
    @NSManaged public var pCheckState: Bool
    @NSManaged public var pCreatedAt: Date
    @NSManaged public var pSymptomName: String
}

extension PSymptoms {
    static func getSymptomTrackers() -> NSFetchRequest<PSymptoms> {
        let request: NSFetchRequest<PSymptoms> = PSymptoms.fetchRequest() as! NSFetchRequest<PSymptoms>
        
        let sortDescriptor  = NSSortDescriptor(key: "pSymptomName", ascending: true)
        
        request.sortDescriptors = [sortDescriptor]
        
        return request
    }
}
