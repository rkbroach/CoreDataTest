//
//  Person+CoreDataProperties.swift
//  CoreDataTest
//
//  Created by Rohan Kevin Broach on 6/20/19.
//  Copyright © 2019 rkbroach. All rights reserved.
//
//

import Foundation
import CoreData


extension Person {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Person> {
        return NSFetchRequest<Person>(entityName: "Person")
    }

    @NSManaged public var name: String?
    @NSManaged public var age: Int16

}
