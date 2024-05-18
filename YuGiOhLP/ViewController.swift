//
//  ViewController.swift
//  YuGiOhLP
//
//  Created by Yair Torres on 5/17/24.
//

import UIKit

class ViewController: UIViewController {

    var enemyLP: Int = 8000
    var myLP: Int = 8000
    
    @IBOutlet weak var enemyLPLabel: UILabel!
    
    @IBOutlet weak var enemyDialog: UILabel!
    
    @IBOutlet weak var myLPLabel: UILabel!
    
    @IBOutlet weak var myDialog: UILabel!
    
    func updateEnemyLP(diff: Int) {
        enemyLP += diff
        enemyLPLabel.text = String(enemyLP)
        if enemyLP <= 0 {
            enemyDialog.text = "You Lose! Try Again!"
            myDialog.text = "You Win!"
        }
        else {
            enemyDialog.text = ""
            myDialog.text = ""
        }
    }
    
    func updateMyLP(diff: Int) {
        myLP += diff
        myLPLabel.text = String(myLP)
        if myLP <= 0 {
            myDialog.text = "You Lose! Try Again!"
            enemyDialog.text = "You Win!"
        }
        else {
            myDialog.text = ""
            enemyDialog.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func redPlus10Tapped(_ sender: Any) {
        updateEnemyLP(diff: 10)
    }
    
    @IBAction func redPlus50Tapped(_ sender: Any) {
        updateEnemyLP(diff: 50)
    }
    
    @IBAction func redPlus100Tapped(_ sender: Any) {
        updateEnemyLP(diff: 100)
    }
    
    @IBAction func redPlus1000Tapped(_ sender: Any) {
        updateEnemyLP(diff: 1000)
    }
    
    @IBAction func redMinus10Tapped(_ sender: Any) {
        updateEnemyLP(diff: -10)
    }
    
    @IBAction func redMinus50Tapped(_ sender: Any) {
        updateEnemyLP(diff: -50)
    }
    
    @IBAction func redMinus100Tapped(_ sender: Any) {
        updateEnemyLP(diff: -100)
    }
    
    @IBAction func redMinus1000Tapped(_ sender: Any) {
        updateEnemyLP(diff: -1000)
    }
    
    @IBAction func bluePlus10Tapped(_ sender: Any) {
        updateMyLP(diff: 10)
    }
    
    @IBAction func bluePlus50Tapped(_ sender: Any) {
        updateMyLP(diff: 50)
    }
    
    @IBAction func bluePlus100Tapped(_ sender: Any) {
        updateMyLP(diff: 100)
    }
    
    @IBAction func bluePlus1000Tapped(_ sender: Any) {
        updateMyLP(diff: 1000)
    }
    
    @IBAction func blueMinus10Tapped(_ sender: Any) {
        updateMyLP(diff: -10)
    }
    
    @IBAction func blueMinus50Tapped(_ sender: Any) {
        updateMyLP(diff: -50)
    }
    
    @IBAction func blueMinus100Tapped(_ sender: Any) {
        updateMyLP(diff: -100)
    }
    
    @IBAction func blueMinus1000Tapped(_ sender: Any) {
        updateMyLP(diff: -1000)
    }
    

}

