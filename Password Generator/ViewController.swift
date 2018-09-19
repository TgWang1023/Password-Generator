//
//  ViewController.swift
//  Password Generator
//
//  Created by Tiange Wang on 9/19/18.
//  Copyright © 2018 Tiange Wang. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var passwordLabel: NSTextField!

    @IBAction func generateButtonPressed(_ sender: NSButton) {
        passwordLabel.stringValue = randomString(length: 10)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    func randomString(length: Int) -> String {
        let letters : NSString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        let len = UInt32(letters.length)
        var randomString = ""
        for _ in 0 ..< length {
            let rand = arc4random_uniform(len)
            var nextChar = letters.character(at: Int(rand))
            randomString += NSString(characters: &nextChar, length: 1) as String
        }
        return randomString
    }

}

