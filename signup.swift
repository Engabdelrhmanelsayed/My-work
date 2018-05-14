//
//  signup.swift
//  task
//
//  Created by Other user on 5/2/18.
//  Copyright © 2018 Other user. All rights reserved.
//

import UIKit
import CoreData
class signup: UIViewController {

    @IBOutlet weak var nlable: UILabel!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var plable: UILabel!
    @IBOutlet weak var lable: UILabel!
    @IBOutlet weak var clable: UILabel!
    @IBOutlet weak var confirm: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBAction func signup(_ sender: Any) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "User", in: context)
        let newuser = NSManagedObject(entity: entity!, insertInto: context)
        if name.text == ""{
        nlable.alpha = 1
            nlable.text = "please insert name"
        }
        if password.text == "" {
            plable.alpha = 1
            plable.text = "please inset password"
        }
        if confirm.text == "" {
            clable.alpha = 1
            clable.text = "please inser confirm password"
        }
        if name.text != "" && password.text != "" && confirm.text != ""   {
            if password.text == confirm.text {
            newuser.setValue(name.text, forKey: "name")
        newuser.setValue(password.text, forKey: "password")
            newuser.setValue(confirm.text, forKey: "confirm")
            do { try context.save()}
            catch{print("failed saving")}
        nlable.alpha = 0
        plable.alpha = 0
            clable.alpha = 0
            lable.alpha = 0
                self.performSegue(withIdentifier: "asd3", sender: nil)
                
            }
        
        else {
            lable.alpha = 1
            lable.text = "password and confirm arenot the same"        }
        }
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
