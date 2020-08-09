//
//  MSymptoms.swift
//  Dementia-App
//
//  Created by Ellie Sara Huang on 7/23/20.
//  Copyright © 2020 Neuroscience Amador Valley. All rights reserved.
//

import Foundation
import CoreData

public class MSymptoms: NSManagedObject, Identifiable {
    @NSManaged public var mSymptomName: String
}

extension MSymptoms {
    static func getSymptomTrackers() -> NSFetchRequest<MSymptoms> {
        let request: NSFetchRequest<MSymptoms> = MSymptoms.fetchRequest() as! NSFetchRequest<MSymptoms>
        
        let sortDescriptor  = NSSortDescriptor(key: "mSymptomName", ascending: true)
        
        request.sortDescriptors = [sortDescriptor]
        
        return request
    }
}
