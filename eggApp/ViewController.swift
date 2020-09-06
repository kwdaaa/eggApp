//
//  ViewController.swift
//  eggApp
//
//  Created by 川田 文香 on 2020/09/05.
//  Copyright © 2020 kwdaaa.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        countLabel.text = String(count)
        
        dispImage()
        
    }
    
    @IBOutlet var countLabel: UILabel!
    
    @IBOutlet var textLabel: UILabel!
    
    var count : Int = 100
    
    
    
    @IBOutlet var imageView: UIImageView!
    
    var dispImageNum = 0
    
    func dispImage() {
        let imageArray = ["egg01","egg02","egg03"]
        
        let name = imageArray[dispImageNum]
        // name = egg01
        
        let image = UIImage(named: name)
        
        //イメージ表示したいときは「.image」
        //テキスト表示したいときは「.text」
        imageView.image = image
    }

    
    @IBAction func button(_ sender: Any) {
        
        count = count - 1
        // count -= 1　でもOK！
        countLabel.text = String(count)
        
//      カウント数に応じたテキストの変更
        if (count == 99){
            textLabel.text = "頑張れ！"
        } else if (count == 75) {
            textLabel.text = "まだまだ！"
        } else if (count == 50) {
            textLabel.text = "やっと半分！"
            dispImageNum += 1
            
        } else if (count == 25) {
            textLabel.text = "あと少し！"
            
        } else if count == 0 {
            textLabel.text = "やったね！"
            dispImageNum += 1
        }
        
        dispImage()
        
    }
}
