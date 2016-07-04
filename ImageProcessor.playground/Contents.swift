//: Playground - noun: a place where people can play

import UIKit

let image = UIImage(named: "sample")!

// Process the image!
var myRGBA = RGBAImage(image: image)!
//myRGBA.pixels[500].alpha

//var totalRed = 0
//var totalGreen = 0
//var totalBlue = 0
//
//
//myRGBA.width
//for y in 0..<myRGBA.height {
//    for x in 0..<myRGBA.width {
//        let index = y * myRGBA.width + x
//        var pixel = myRGBA.pixels[index]
//        totalRed += Int(pixel.red)
//        totalGreen += Int(pixel.green)
//        totalBlue += Int(pixel.blue)
//    }
//}
//
//let count = myRGBA.height * myRGBA.width
//let avgRed = totalRed / count
//let avgGreen = totalGreen / count
//let avgBlue = totalBlue / count

let avgRed = 118
let avgGreen = 98
let avgBlue = 83

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

let newImg = myRGBA.toUIImage()

image

let sharpnessMask = [[-1,-1,-1,-1,-1],[-1,2,2,2,-1],[-1,2,8,2,-1],[-1,2,2,2,-1],[-1,-1,-1,-1,-1]]

func sharp(inout myRGBA: RGBAImage, mask:[[Int]]) {
    let width = mask.count
    let height = mask[0].count
//    width + height
}
