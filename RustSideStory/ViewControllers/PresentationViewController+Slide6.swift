//
//  PresentationViewController+Slide6.swift
//  RustSideStory
//
//  Created by Christopher Luu on 10/20/16.
//  Copyright © 2016 nuudles. All rights reserved.
//

import UIKit
import RazzleDazzle

// MARK: - Slide 6
extension PresentationViewController {
	func setupSlide6(page: inout CGFloat) {
		NSLog("\(#function): \(page)")

		let gangLabel = titleLabel(text: "THE GANGS")
		contentView.addSubview(gangLabel)

		let packageManagerLabel = UILabel()
		packageManagerLabel.font = .systemFont(ofSize: 40)
		packageManagerLabel.textColor = .white
		packageManagerLabel.numberOfLines = 0
		packageManagerLabel.text =
			"• The Communities\n" +
			"      • Rust: 5,234 questions on Stack Overflow\n" +
			"      • Swift: 119,054 questions on Stack Overflow\n" +
			"• The Package Managers\n" +
			"      • Rust: Cargo (6,569 crates)\n" +
			"      • Swift: SwiftPM? CocoaPods? Carthage?\n" +
			"• IDEs\n" +
			"      • Rust: Eclipse, Emacs, Vim, IntelliJ IDEA,\n" +
			"         Sublime Text, VSCode,\n" +
			"         Rust Language Server (pre-alpha)\n" +
			"      • Swift: Xcode, AppCode\n"
		contentView.addSubview(packageManagerLabel)

		let storyboardsImageView = UIImageView(image: #imageLiteral(resourceName: "storyboards"))
		storyboardsImageView.contentMode = .scaleAspectFit
		contentView.addSubview(storyboardsImageView)

		let instrumentsImageView = UIImageView(image: #imageLiteral(resourceName: "xcode_instruments"))
		instrumentsImageView.contentMode = .scaleAspectFit
		contentView.addSubview(instrumentsImageView)

		let viewDebuggerImageView = UIImageView(image: #imageLiteral(resourceName: "view_debugger"))
		viewDebuggerImageView.contentMode = .scaleAspectFit
		contentView.addSubview(viewDebuggerImageView)

		let releaseLabel = UILabel()
		releaseLabel.font = .systemFont(ofSize: 40)
		releaseLabel.textColor = .white
		releaseLabel.numberOfLines = 0
		releaseLabel.text =
			"• Code Formatters\n" +
			"      • Rust: rustfmt? \n" +
			"      • Swift: nothing?\n" +
			"      • Go: gofmt!!!!!\n" +
			"• Release Cycles\n" +
			"      • Rust: Every 6 weeks!\n" +
			"      • Swift: Every 6 months?\n" +
			"            • Not ABI compatible yet (target 4.0)\n" +
			"            • Major releases are breaking\n" +
			"            • Xcode ships with Swift migration tool\n"
		contentView.addSubview(releaseLabel)

		let rustPlaygroundImageView = UIImageView(image: #imageLiteral(resourceName: "rust_playground"))
		contentView.addSubview(rustPlaygroundImageView)

		let swiftPlaygroundImageView = UIImageView(image: #imageLiteral(resourceName: "swift_playground"))
		contentView.addSubview(swiftPlaygroundImageView)

		let ipadPlaygroundImageView = UIImageView(image: #imageLiteral(resourceName: "ipad_playground"))
		ipadPlaygroundImageView.contentMode = .scaleAspectFit
		contentView.addSubview(ipadPlaygroundImageView)

		gangLabel.snp.makeConstraints { (make) in
			make.top.equalTo(contentView).offset(30)
		}
		packageManagerLabel.snp.makeConstraints { (make) in
			make.top.equalTo(gangLabel.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-100)
		}
		storyboardsImageView.snp.makeConstraints { (make) in
			make.top.equalTo(gangLabel.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-100)
			make.height.equalTo(view).offset(-150)
		}
		instrumentsImageView.snp.makeConstraints { (make) in
			make.top.equalTo(gangLabel.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-100)
			make.height.equalTo(view).offset(-150)
		}
		viewDebuggerImageView.snp.makeConstraints { (make) in
			make.top.equalTo(gangLabel.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-100)
			make.height.equalTo(view).offset(-150)
		}
		releaseLabel.snp.makeConstraints { (make) in
			make.top.equalTo(gangLabel.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-100)
		}
		rustPlaygroundImageView.snp.makeConstraints { (make) in
			make.top.equalTo(gangLabel.snp.bottom).offset(20)
		}
		swiftPlaygroundImageView.snp.makeConstraints { (make) in
			make.top.equalTo(gangLabel.snp.bottom).offset(20)
		}
		ipadPlaygroundImageView.snp.makeConstraints { (make) in
			make.top.equalTo(gangLabel.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-100)
			make.height.equalTo(view).offset(-150)
		}

		keepView(gangLabel, onPages: page...page+7)
		keepView(packageManagerLabel, onPage: page)
		keepView(storyboardsImageView, onPage: page + 1)
		keepView(instrumentsImageView, onPage: page + 2)
		keepView(viewDebuggerImageView, onPage: page + 3)
		keepView(releaseLabel, onPage: page + 4)
		keepView(rustPlaygroundImageView, onPage: page + 5)
		keepView(swiftPlaygroundImageView, onPage: page + 6)
		keepView(ipadPlaygroundImageView, onPage: page + 7)

		page += 8
	}
}
