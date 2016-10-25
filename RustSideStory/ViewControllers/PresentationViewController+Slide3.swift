//
//  PresentationViewController+Slide3.swift
//  RustSideStory
//
//  Created by Christopher Luu on 10/8/16.
//  Copyright © 2016 nuudles. All rights reserved.
//

import UIKit
import RazzleDazzle

// MARK: - Slide 3
extension PresentationViewController {
	func setupSlide3(page: inout CGFloat) {
		NSLog("\(#function): \(page)")

		let hisLabel = titleLabel(text: "HIS")
		contentView.addSubview(hisLabel)

		let herLabel = titleLabel(text: "HER")
		contentView.addSubview(herLabel)

		let storyLabel = titleLabel(text: "STORY")
		contentView.addSubview(storyLabel)

		let rustVideoView = VideoView(url: Bundle.main.url(forResource: "WhenYoureInRust", withExtension: "m4v", subdirectory: "Videos"))
		contentView.addSubview(rustVideoView)

		let rustLogoImageView = UIImageView(image: #imageLiteral(resourceName: "rust-logo"))
		rustLogoImageView.contentMode = .scaleAspectFit
		contentView.addSubview(rustLogoImageView)

		let rustDetailsLabel = UILabel()
		rustDetailsLabel.font = .systemFont(ofSize: 40)
		rustDetailsLabel.textColor = .white
		rustDetailsLabel.numberOfLines = 0
		rustDetailsLabel.text =
			"• Backed by Mozilla\n" +
			"• Safe, concurrent, practical language\n" +
			"• Guarantees memory/thread safety\n" +
			"• Uses RFC process to evolve language"
		contentView.addSubview(rustDetailsLabel)

		let rustHistoryLabel = UILabel()
		rustHistoryLabel.font = .systemFont(ofSize: 40)
		rustHistoryLabel.textColor = .white
		rustHistoryLabel.numberOfLines = 0
		rustHistoryLabel.text =
			"• Rust developed in the open since 2010\n" +
			"• Originally developed and led by Graydon Hoare\n" +
			"• First public commit June 16, 2010\n" +
			"• Rust 1.0 released May 15, 2015\n" +
			"• Rust releases every 6 weeks\n" +
			"• Currently 1599 contributors\n" +
			"• The History of Rust (Steve Klabnik):\n   https://youtube.com/watch?v=79PSagCD_AY"
		contentView.addSubview(rustHistoryLabel)

		let swiftVideoView = VideoView(url: Bundle.main.url(forResource: "IFeelSwifty", withExtension: "m4v", subdirectory: "Videos")!)
		contentView.addSubview(swiftVideoView)

		let swiftLogoImageView = UIImageView(image: #imageLiteral(resourceName: "swift-logo"))
		swiftLogoImageView.contentMode = .scaleAspectFit
		contentView.addSubview(swiftLogoImageView)

		let swiftDetailsLabel = UILabel()
		swiftDetailsLabel.font = .systemFont(ofSize: 40)
		swiftDetailsLabel.textColor = .white
		swiftDetailsLabel.numberOfLines = 0
		swiftDetailsLabel.text =
			"• Backed by Apple\n" +
			"• Safe, concurrent, practical language\n" +
			"• Compatible with Obj C frameworks\n" +
			"• Useful from scripting to operating systems\n" +
			"• Inspiration from Objective-C, Rust, Haskell, Ruby, Python, C#, CLU, and far too many others to list"
		contentView.addSubview(swiftDetailsLabel)

		let wwdcImageView = UIImageView(image: #imageLiteral(resourceName: "wwdcSwift"))
		wwdcImageView.contentMode = .scaleAspectFit
		contentView.addSubview(wwdcImageView)

		let swiftHistoryLabel = UILabel()
		swiftHistoryLabel.font = .systemFont(ofSize: 40)
		swiftHistoryLabel.textColor = .white
		swiftHistoryLabel.numberOfLines = 0
		swiftHistoryLabel.text =
			"• Announced to the world at WWDC 2014, June 2, 2014\n" +
			"• Development led by Chris Lattner\n" +
			"• Swift 1.0 - September 9, 2014\n" +
			"• Swift 1.2 - April 8, 2015\n" +
			"• Swift 2.0 - September 21, 2015\n" +
			"• Swift Open Sourced - December 3, 2015\n" +
			"• Swift 3.0 - September 13, 2016\n" +
			"• Currently 409 contributors\n"
		contentView.addSubview(swiftHistoryLabel)

		hisLabel.snp.makeConstraints { (make) in
			make.lastBaseline.equalTo(storyLabel)
		}
		herLabel.snp.makeConstraints { (make) in
			make.lastBaseline.equalTo(storyLabel)
		}
		storyLabel.snp.makeConstraints { (make) in
			make.top.equalTo(view).offset(30)
		}
		rustVideoView.snp.makeConstraints { (make) in
			make.top.equalTo(storyLabel.snp.bottom).offset(50)
			make.bottom.equalTo(view.snp.bottom).offset(-50)
			make.width.equalTo(view).offset(-100)
		}
		rustLogoImageView.snp.makeConstraints { (make) in
			make.top.equalTo(storyLabel.snp.bottom).offset(20)
			make.width.height.equalTo(100)
		}
		rustDetailsLabel.snp.makeConstraints { (make) in
			make.top.equalTo(rustLogoImageView.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-100)
		}
		rustHistoryLabel.snp.makeConstraints { (make) in
			make.top.equalTo(rustLogoImageView.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-100)
		}
		swiftVideoView.snp.makeConstraints { (make) in
			make.top.equalTo(storyLabel.snp.bottom).offset(50)
			make.bottom.equalTo(view.snp.bottom).offset(-50)
			make.width.equalTo(view).offset(-100)
		}
		swiftLogoImageView.snp.makeConstraints { (make) in
			make.top.equalTo(storyLabel.snp.bottom).offset(20)
			make.width.height.equalTo(100)
		}
		swiftDetailsLabel.snp.makeConstraints { (make) in
			make.top.equalTo(swiftLogoImageView.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-100)
		}
		wwdcImageView.snp.makeConstraints { (make) in
			make.top.equalTo(swiftLogoImageView.snp.bottom).offset(20)
			make.height.equalTo(view).offset(-300)
			make.width.equalTo(view).offset(-100)
		}
		swiftHistoryLabel.snp.makeConstraints { (make) in
			make.top.equalTo(rustLogoImageView.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-100)
		}

		keepView(hisLabel, onPages: page...page+3)
		keepView(herLabel, onPages: page+2...page+6)
		keepView(storyLabel, onPages: page...page+6)
		keepView(rustVideoView, onPage: page)
		keepView(rustLogoImageView, onPages: page+1...page+2)
		keepView(rustDetailsLabel, onPage: page + 1)
		keepView(rustHistoryLabel, onPage: page + 2)
		keepView(swiftVideoView, onPage: page + 3)
		keepView(swiftLogoImageView, onPages: page+4...page+6)
		keepView(swiftDetailsLabel, onPage: page + 4)
		keepView(wwdcImageView, onPage: page + 5)
		keepView(swiftHistoryLabel, onPage: page + 6)

		storyLabel.transform = CGAffineTransform(translationX: 50, y: 0)

		let hisTranslationAnimation = TranslationAnimation(view: hisLabel)
		hisTranslationAnimation[page + 1] = CGPoint(x: -89, y: 0)
		hisTranslationAnimation[page + 2] = CGPoint(x: -38, y: 0)
		hisTranslationAnimation[page + 3] = CGPoint(x: -38, y: -150)
		animator.addAnimation(hisTranslationAnimation)

		let hisAlphaAnimation = AlphaAnimation(view: hisLabel)
		hisAlphaAnimation[page + 2] = 1.0
		hisAlphaAnimation[page + 3] = 0.0
		animator.addAnimation(hisAlphaAnimation)

		let herTranslationAnimation = TranslationAnimation(view: herLabel)
		herTranslationAnimation[page + 2] = CGPoint(x: -89, y: -150)
		herTranslationAnimation[page + 3] = CGPoint(x: -89, y: 0)
		herTranslationAnimation[page + 4] = CGPoint(x: -89, y: 0)
		herTranslationAnimation[page + 5] = CGPoint(x: -42, y: 0)
		animator.addAnimation(herTranslationAnimation)

		let herAlphaAnimation = AlphaAnimation(view: herLabel)
		herAlphaAnimation[page + 2] = 0.0
		herAlphaAnimation[page + 3] = 1.0
		animator.addAnimation(herAlphaAnimation)

		page += 7
	}
}
