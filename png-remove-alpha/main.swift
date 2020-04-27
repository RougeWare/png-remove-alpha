//
//  main.swift
//  png-remove-alpha
//
//  Created by Ben Leggiero on 2020-04-25.
//  Copyright © 2020 Ben Leggiero BH-1-PS.
//

import PNG



for path in CommandLine.arguments.dropFirst() {
    var png = try PNG.rgba(path: path, of: UInt8.self)
    
    for pixelIndex in png.pixels.indices {
        png.pixels[pixelIndex].a = .max
    }
    
    try PNG.encode(rgba: png.pixels, size: png.size, as: .rgba8, path: path + " (alpha removed).png")
}
