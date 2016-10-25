//
//  PresentationViewController+Slide1.swift
//  RustSideStory
//
//  Created by Christopher Luu on 10/8/16.
//  Copyright © 2016 nuudles. All rights reserved.
//

import UIKit
import RazzleDazzle

// MARK: - Slide 1
extension PresentationViewController {
	func setupSlide1(page: inout CGFloat) {
		NSLog("\(#function): \(page)")

		let imageView = UIImageView(image: #imageLiteral(resourceName: "logo"))
		imageView.contentMode = .scaleAspectFit
		contentView.addSubview(imageView)

		imageView.snp.makeConstraints { (make) in
			make.width.height.equalTo(view).offset(-100)
			make.centerY.equalTo(contentView)
		}

		let alphaAnimation = AlphaAnimation(view: imageView)
		alphaAnimation[page] = 1.0
		alphaAnimation[page + 1] = 0.0
		animator.addAnimation(alphaAnimation)

		keepView(imageView, onPage: page)

		let backgroundColorAnimation = BackgroundColorAnimation(view: view)
		backgroundColorAnimation[page] = UIColor(intRed: 146, intGreen: 47, intBlue: 41)
		backgroundColorAnimation[page + 1] = .black
		animator.addAnimation(backgroundColorAnimation)

		page += 1
	}
}
