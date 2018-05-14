//
//  final.swift
//  task
//
//  Created by Other user on 5/1/18.
//  Copyright © 2018 Other user. All rights reserved.
//

import UIKit

class final: UIViewController {

 
    @IBOutlet weak var tex4: UITextField!
    @IBOutlet weak var tex3: UITextField!
    @IBOutlet weak var tex2: UITextField!
    @IBOutlet weak var tex: UITextField!
    @IBOutlet weak var slider4: UISlider!
    @IBOutlet weak var slider3: UISlider!
    @IBOutlet weak var slider2: UISlider!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var slider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        let x = UIImage(named : "Untitled-18")
        slider.setThumbImage(x, for: .normal)
        slider.setThumbImage(x, for:.highlighted )
        slider2.setThumbImage(x, for: .normal)
        slider2.setThumbImage(x, for:.highlighted )
        slider3.setThumbImage(x, for: .normal)
        slider3.setThumbImage(x, for:.highlighted )
        slider4.setThumbImage(x, for: .normal)
        let m1 = UIImage(named : "Bar-1")
        slider4.setThumbImage(x, for:.highlighted )
        let n = UIImage(named : "Bar-1")
        slider.setMaximumTrackImage(n, for: .normal)
        slider.setMinimumTrackImage(n, for: .normal)
        slider2.setMinimumTrackImage(n, for: .normal)
        slider2.setMaximumTrackImage(n, for: .normal)
        slider3.setMinimumTrackImage(n, for: .normal)
        slider3.setMaximumTrackImage(n, for: .normal)
        slider4.setMinimumTrackImage(n, for: .normal)
        slider4.setMaximumTrackImage(n, for: .normal)
        if let w = tex.text {
       let w1 = Float(w)
        if let q = w1  {
            slider.value = q }
        // Do any additional setup after loading the view.
    }
    }
    
    @IBAction func tex1(_ sender: Any) {
        let z = tex.text
        if let x = z {
            if let y = Float( x ) {
                slider.value = y
            }}        }
    
    @IBAction func tex2(_ sender: Any) {
        let z = tex2.text
        if let x = z {
            if let y = Float( x ) {
                slider2.value = y
            }}     }
    
    @IBAction func tex3(_ sender: Any) {
        let z = tex3.text
        if let x = z {
            if let y = Float( x ) {
                slider3.value = y
            }}     }
    
    @IBAction func tex4(_ sender: Any) {
        let z = tex4.text
        if let x = z {
            if let y = Float( x ) {
                slider4.value = y
            }}     }
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
