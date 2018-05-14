//
//  ViewController.swift
//  task
//
//  Created by Other user on 4/30/18.
//  Copyright © 2018 Other user. All rights reserved.
//

import UIKit
import CoreData
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBOutlet weak var lab2: UILabel!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var lab1: UILabel!
    @IBOutlet weak var password: UITextField!
    @IBAction func sign(_ sender: Any) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
        request.predicate = NSPredicate(format: "name = %@ ", username.text!)
        request.returnsObjectsAsFaults = false
        var z = ""
        var y = ""
        do {
            let result = try context.fetch(request)
            for data in result as! [NSManagedObject]{
                 z = data.value(forKey: "name")as!String
                 y = data.value(forKey: "password")as!String
            }
        }
        catch {print("failed")}
        if username.text != z {
            lab1.alpha = 1
            lab1.text = "Wrong name"
        }else if password.text != y {
            lab2.alpha = 2
            lab2.text = "Wrong password"
        }else {
            self.performSegue(withIdentifier: "asd", sender: nil) }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

