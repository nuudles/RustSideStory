//
//  PresentationViewController+Slide2.swift
//  RustSideStory
//
//  Created by Christopher Luu on 10/8/16.
//  Copyright © 2016 nuudles. All rights reserved.
//

import UIKit
import RazzleDazzle

// MARK: - Slide 2
extension PresentationViewController {
	func setupSlide2(page: inout CGFloat) {
		let introLabel = titleLabel(text: "OVERTURE")
		contentView.addSubview(introLabel)

		let meLabel = UILabel()
		meLabel.font = .systemFont(ofSize: 60)
		meLabel.numberOfLines = 0
		meLabel.textColor = .white
		meLabel.textAlignment = .center
		meLabel.text = "Christopher Luu\ngithub.com/nuudles\n@nuudles"
		contentView.addSubview(meLabel)

		let rustCodeLabel = UILabel()
		rustCodeLabel.font = Font.courierNew.withSize(size: 28)
		rustCodeLabel.numberOfLines = 0
		contentView.addSubview(rustCodeLabel)
		
		let rustCode = try! String(contentsOf: Bundle.main.url(forResource: "fizzbuzz", withExtension: "rs", subdirectory: "SampleSource")!)
		rustCodeLabel.attributedText = rustParser.attributedString(for: rustCode)
		
		let swiftCodeLabel = UILabel()
		swiftCodeLabel.font = Font.courierNew.withSize(size: 28)
		swiftCodeLabel.numberOfLines = 0
		contentView.addSubview(swiftCodeLabel)
		
		let swiftCode = try! String(contentsOf: Bundle.main.url(forResource: "fizzbuzz", withExtension: "swift", subdirectory: "SampleSource")!)
		swiftCodeLabel.attributedText = swiftParser.attributedString(for: swiftCode)

		introLabel.snp.makeConstraints { (make) in
			make.top.equalTo(contentView).offset(30)
		}
		meLabel.snp.makeConstraints { (make) in
			make.centerY.equalTo(view)
		}
		rustCodeLabel.snp.makeConstraints { (make) in
			make.top.equalTo(introLabel.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-80)
		}
		swiftCodeLabel.snp.makeConstraints { (make) in
			make.top.equalTo(introLabel.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-80)
		}

		keepView(introLabel, onPages: [page, page + 1, page + 2])
		keepView(meLabel, onPage: page)
		keepView(rustCodeLabel, onPages: [page + 1, page + 2])
		keepView(swiftCodeLabel, onPages: [page + 1, page + 2])
		
		let rustAlphaAnimation = AlphaAnimation(view: rustCodeLabel)
		rustAlphaAnimation[page + 1] = 1.0
		rustAlphaAnimation[page + 2] = 0.0
		animator.addAnimation(rustAlphaAnimation)
		
		let swiftAlphaAnimation = AlphaAnimation(view: swiftCodeLabel)
		swiftAlphaAnimation[page + 1] = 0.0
		swiftAlphaAnimation[page + 2] = 1.0
		animator.addAnimation(swiftAlphaAnimation)

		page += 3
	}
}
