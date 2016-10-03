//
//  UIColor+Convenience.swift
//  RustSideStory
//
//  Created by Christopher Luu on 10/2/16.
//  Copyright © 2016 nuudles. All rights reserved.
//

import UIKit

extension UIColor {
	convenience init(intRed: Int, intGreen: Int, intBlue: Int, alpha: Float = 1.0) {
		self.init(red: CGFloat(intRed) / 255.0, green: CGFloat(intGreen) / 255.0, blue: CGFloat(intBlue) / 255.0, alpha: CGFloat(alpha))
	}
}
