//
//  ViewController.swift
//  NSTableViewCocoaBindings
//
//  Created by Christopher Davison on 12/29/16.
//  Copyright © 2016 Christopher Davison. All rights reserved.
//

import Cocoa

// Class for our data records
class Person: NSObject {
    
    // First name value
    public var firstName: String?
    
    // Last name value
    public var lastName: String?
    
    // Set the initial values
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
}

class ViewController: NSViewController {
    
    // Array of people to use as our data source
    public var peopleArray: NSArray = [
        Person.init(firstName: "Joe", lastName: "Bob"),
        Person.init(firstName: "Joey", lastName: "Mack")
    ]
    
    // Reference to the NSTable from the storyboard
    @IBOutlet weak var table: NSTableView!

    override func viewDidLoad() {
        // Get references to the table column headers
        let firstNameColumn: NSTableColumn = table.tableColumns[0] // 1st column
        let lastNameColumn: NSTableColumn = table.tableColumns[1]  // 2nd column
        // Set the table column header values
        firstNameColumn.headerCell.title = "First Name"
        lastNameColumn.headerCell.title = "Last Name"
        
        // Call the super's method
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

