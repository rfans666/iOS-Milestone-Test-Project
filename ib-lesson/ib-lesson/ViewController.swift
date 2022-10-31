//
//  ViewController.swift
//  ib-lesson
//
//  Created by Jiayu Han on 10/31/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    
    
    @IBAction func btn(_ sender: UIButton) {
        let randomNum = Int.random(in: 1...5)
        if randomNum == 1 {
            lbl.text = "大野智"
        }
        else if randomNum == 2 {
            lbl.text = "櫻井翔"
        }
        else if randomNum == 3 {
            lbl.text = "相葉雅紀"
        }
        else if randomNum == 4 {
            lbl.text = "二宮和也"
        }
        else if randomNum == 5 {
            lbl.text = "松本潤"
        }
        else{
            print("Error: Out of Bound Random Variable")
        }
    
        let randomNum2 = Int.random(in: 1...3)
        if randomNum2 == 1 {
            btn.setTitle("Click Here", for: .normal)
        }
        else if randomNum2 == 2 {
            btn.setTitle("Who's Next", for: .normal)
        }
        else if randomNum2 == 3 {
            btn.setTitle("Please Click", for: .normal)
        }
        else {
            print("Error: Button Var Out of Range")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidDisappear(_ animated: Bool) {
        <#code#>
    }

}

