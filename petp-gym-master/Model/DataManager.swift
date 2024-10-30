//
//  DataManager.swift
//  petp-gym-master
//
//  Created by Maksim Rafalchuk on 24/10/2024.
//
import CoreData
import UIKit
import Foundation

class DataManager {
    static let shared = DataManager()
    var dataContext: NSManagedObjectContext?
    
    func getData() -> [Training]
    {
        guard let context = dataContext else {
            return []
        }
        
        let fetchRequest = Training.fetchRequest()
               
        do {
           let trainings = try context.fetch(fetchRequest)
           return trainings
        } catch {
           print("Failed to fetch ToDo \(error)")
           return []
        }
    }
    
    func saveData() {
        guard let context = dataContext else {
            return
        }

        do {
            try context.save()
        } catch {
            print("Error while saving data")
        }
    }
    
    func removeObj(_ obj: Training) {
        guard let context = dataContext else {
            debugPrint("Error while deleting object. Context is not initialized")
            return
        }
        
        do {
            context.delete(obj)
            try context.save()
            debugPrint("Object removed from DATA")
        } catch {
            debugPrint("Error while savig afte remove")
        }
    }
    
    func getNewEmptyObj() -> Training {
        guard let context = dataContext else { return Training() }
        
        let new = Training(context: context)
        return new
    }
}
