//
//  SSymptoms.swift
//  Dementia-App
//
//  Created by Ellie Sara Huang on 7/23/20.
//  Copyright © 2020 Neuroscience Amador Valley. All rights reserved.
//

import Foundation
import CoreData

public class SSymptoms: NSManagedObject, Identifiable {
    @NSManaged public var sSymptomName: String
}

extension SSymptoms {
    static func getSymptomTrackers() -> NSFetchRequest<SSymptoms> {
        let request: NSFetchRequest<SSymptoms> = SSymptoms.fetchRequest() as! NSFetchRequest<SSymptoms>
        
        let sortDescriptor  = NSSortDescriptor(key: "sSymptomName", ascending: true)
        
        request.sortDescriptors = [sortDescriptor]
        
        return request
    }
}
