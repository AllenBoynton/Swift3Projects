//
//  ChangedObjectExtVC.swift
//  DreamLister
//
//  Created by Allen Boynton on 6/27/17.
//  Copyright © 2017 ABtech Applications. All rights reserved.
//

import UIKit
import CoreData

extension MainVC {

    func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>, didChange anObject: Any, at indexPath: IndexPath?, for type: NSFetchedResultsChangeType, newIndexPath: IndexPath?) {
        
        switch (type) {
        case.insert:
            if let indexPath = newIndexPath {
                tableView.insertRows(at: [indexPath], with: .fade)
            }
            break
        case.delete:
            if let indexPath = newIndexPath {
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
            break
        case.update:
            if let indexPath = newIndexPath {
                let cell = tableView.cellForRow(at: indexPath) as! ListViewCell
                
                // Update the cell data
                configureCell(cell: cell, indexPath: indexPath as NSIndexPath)
                
                return
            }
            break
        case.move:
            if let indexPath = newIndexPath {
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
            if let indexPath = newIndexPath {
                tableView.insertRows(at: [indexPath], with: .fade)
            }
        }
    }
}
