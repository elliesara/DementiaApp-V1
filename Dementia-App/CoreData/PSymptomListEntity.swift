//
//  PSymptomListEntity.swift
//  Dementia-App
//
//  Created by Ellie Sara Huang on 9/18/20.
//  Copyright © 2020 Neuroscience Amador Valley. All rights reserved.
//

import Foundation
import CoreData

public class PSymptomListEntity: NSManagedObject, Identifiable {
    @NSManaged public var pName: String
    @NSManaged public var pState: Bool
}

extension PSymptomListEntity {
    static func getPSymptomList() -> NSFetchRequest<PSymptomListEntity> {
        let request: NSFetchRequest<PSymptomListEntity> = PSymptomListEntity.fetchRequest() as! NSFetchRequest<PSymptomListEntity>
        let sortDescriptor  = NSSortDescriptor(key: "pName", ascending: true)
        request.sortDescriptors = [sortDescriptor]
        return request
    }
}
