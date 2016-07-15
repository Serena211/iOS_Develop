//
//  ViewController.swift
//  Filterer
//
//  Created by Xuanyu Liu on 7/13/16.
//  Copyright © 2016 Serena. All rights reserved.
//

// https://www.raywenderlich.com/113388/storyboards-tutorial-in-ios-9-part-1
import UIKit

// backbone of all your app, interface 
class ViewController: UIViewController {
    // save filtered image
    var filteredImage: UIImage?
    
    // if UIImageView = nil, the image is "reset" to the default that was set in the Interface Builder or removed if there was no default("Nil resetting")
    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var imageToggle: UIButton!
    
    // "sender" is the button that was tapped
    @IBAction func onImageToggle(sender: UIButton) {
        if imageToggle.selected {
            let image = UIImage(named: "sample")!
            imageView.image = image
            imageToggle.selected = false
        } else {
            imageView.image = filteredImage
            imageToggle.selected = true;
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageToggle.setTitle("Before", forState: .Selected)
        let image = UIImage(named: "sample")!
        
        // Process the image!
        var myRGBA = RGBAImage(image: image)!
//        let avgRed = 118
//        let avgGreen = 98
//        let avgBlue = 83
        
        for y in 0..<myRGBA.height {
            for x in 0..<myRGBA.width {
                let index = y * myRGBA.width + x
                var pixel = myRGBA.pixels[index]
                let diffAlpha = Double(pixel.alpha) * 0.93
                pixel.alpha = UInt8(max(0, min(255, diffAlpha)))
                //        var diffRed = Int(pixel.red) - avgRed
                //        if (diffRed > 0) {
                //            pixel.red = UInt8( max(0, min(255, avgRed + diffRed*2)))
                //        }
                //        var diffGreen = Int(pixel.green) - avgGreen
                //        if (diffGreen > 0) {
                //            pixel.green = UInt8( max(0, min(255, avgGreen + diffGreen*2)))
                //        }
                myRGBA.pixels[index] = pixel
            }
        }
        filteredImage = myRGBA.toUIImage()
//        print("This code has executed! ")
//        imageView.image = result
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

