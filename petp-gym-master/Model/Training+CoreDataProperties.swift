//
//  Training+CoreDataProperties.swift
//  petp-gym-master
//
//  Created by Maksim Rafalchuk on 24/10/2024.
//
//

import Foundation
import CoreData


extension Training {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Training> {
        return NSFetchRequest<Training>(entityName: "Training")
    }

    @NSManaged public var name: String?
    @NSManaged public var date: Date?

}

extension Training : Identifiable {

}
