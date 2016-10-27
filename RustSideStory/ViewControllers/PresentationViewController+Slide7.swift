//
//  PresentationViewController+Slide7.swift
//  RustSideStory
//
//  Created by Christopher Luu on 10/20/16.
//  Copyright © 2016 nuudles. All rights reserved.
//

import UIKit
import RazzleDazzle

// MARK: - Slide 7
extension PresentationViewController {
	func setupSlide7(page: inout CGFloat) {
		NSLog("\(#function): \(page)")

		let ifLetXVideoView = VideoView(url: Bundle.main.url(forResource: "IfLetX", withExtension: "m4v", subdirectory: "Videos"))
		contentView.addSubview(ifLetXVideoView)

		let loveStoryLabel = titleLabel(text: "THE LOVE STORY")
		contentView.addSubview(loveStoryLabel)

		let swiftIfLetCodeLabel = codeLabel(filename: "iflet", language: .swift)
		contentView.addSubview(swiftIfLetCodeLabel)

		let rustIfLetCodeLabel = codeLabel(filename: "iflet", language: .rust)
		contentView.addSubview(rustIfLetCodeLabel)

		let rustEnumCodeLabel = codeLabel(filename: "enums", language: .rust, fontSize: 20)
		contentView.addSubview(rustEnumCodeLabel)

		let swiftEnumCodeLabel = codeLabel(filename: "enums", language: .swift)
		contentView.addSubview(swiftEnumCodeLabel)

		let swiftBeforeGuardCodeLabel = codeLabel(filename: "before_guard", language: .swift)
		contentView.addSubview(swiftBeforeGuardCodeLabel)

		let swiftAfterGuardCodeLabel = codeLabel(filename: "after_guard", language: .swift)
		contentView.addSubview(swiftAfterGuardCodeLabel)

		let otherLabel = UILabel()
		otherLabel.font = .systemFont(ofSize: 40)
		otherLabel.textColor = .white
		otherLabel.numberOfLines = 0
		otherLabel.text =
			"• Other Influences\n" +
			"• Rust\n" +
			"      • while let (RFC 214)\n" +
			"      • Optional chaining?\n" +
			"         https://github.com/rust-lang/rfcs/issues/1718\n" +
			"• Swift\n" +
			"      • Memory/ownership model\n" +
			"      • Adding Either/Result to stdlib\n" +
			"         https://github.com/apple/swift-evolution/pull/67\n" +
			"      • Lots of discussion on swift-evolution mailing list\n"
		contentView.addSubview(otherLabel)

		ifLetXVideoView.snp.makeConstraints { (make) in
			make.top.bottom.width.equalTo(view)
		}
		loveStoryLabel.snp.makeConstraints { (make) in
			make.top.equalTo(contentView).offset(30)
		}
		swiftIfLetCodeLabel.snp.makeConstraints { (make) in
			make.top.equalTo(loveStoryLabel.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-80)
		}
		rustIfLetCodeLabel.snp.makeConstraints { (make) in
			make.top.equalTo(loveStoryLabel.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-80)
		}
		rustEnumCodeLabel.snp.makeConstraints { (make) in
			make.top.equalTo(loveStoryLabel.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-80)
		}
		swiftEnumCodeLabel.snp.makeConstraints { (make) in
			make.top.equalTo(loveStoryLabel.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-80)
		}
		swiftBeforeGuardCodeLabel.snp.makeConstraints { (make) in
			make.top.equalTo(loveStoryLabel.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-80)
		}
		swiftAfterGuardCodeLabel.snp.makeConstraints { (make) in
			make.top.equalTo(loveStoryLabel.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-80)
		}
		otherLabel.snp.makeConstraints { (make) in
			make.top.equalTo(loveStoryLabel.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-80)
		}

		keepView(ifLetXVideoView, onPage: page)
		keepView(loveStoryLabel, onPages: page+1...page+7)
		keepView(swiftIfLetCodeLabel, onPage: page + 1)
		keepView(rustIfLetCodeLabel, onPage: page + 2)
		keepView(rustEnumCodeLabel, onPage: page + 3)
		keepView(swiftEnumCodeLabel, onPage: page + 4)
		keepView(swiftBeforeGuardCodeLabel, onPage: page + 5)
		keepView(swiftAfterGuardCodeLabel, onPage: page + 6)
		keepView(otherLabel, onPage: page + 7)

		page += 8
	}
}
