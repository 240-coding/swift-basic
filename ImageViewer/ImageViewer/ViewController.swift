//
//  ViewController.swift
//  ImageViewer
//
//  Created by 이서영 on 2021/02/25.
//

import UIKit

class ViewController: UIViewController {
    var numImage = 1
    var maxImage = 5
    
    @IBOutlet var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgView.image = UIImage(named: "dog1.jpg")
    }

    @IBAction func prevBtn(_ sender: UIButton) {
        numImage -= 1
        if (numImage < 1) {
            numImage = maxImage
        }
        let imageName = "dog" + String(numImage) + ".jpg"
        imgView.image = UIImage(named: imageName)
    }
    @IBAction func nextBtn(_ sender: UIButton) {
        numImage += 1
        if (numImage > maxImage) {
            numImage = 1
        }
        let imageName = "dog" + String(numImage) + ".jpg"
        imgView.image = UIImage(named: imageName)
    }
    
}

