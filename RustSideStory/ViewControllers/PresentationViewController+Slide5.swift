//
//  PresentationViewController+Slide5.swift
//  RustSideStory
//
//  Created by Christopher Luu on 10/8/16.
//  Copyright © 2016 nuudles. All rights reserved.
//

import UIKit
import RazzleDazzle

// MARK: - Slide 5
extension PresentationViewController {
	func setupSlide5(page: inout CGFloat) {
		NSLog("\(#function): \(page)")

		let memoryVideoView = VideoView(url: Bundle.main.url(forResource: "Memory", withExtension: "m4v", subdirectory: "Videos"))
		contentView.addSubview(memoryVideoView)

		let memoryLabel = titleLabel(text: "MEMORY")
		contentView.addSubview(memoryLabel)

		let rustMemoryLabel = UILabel()
		rustMemoryLabel.font = .systemFont(ofSize: 40)
		rustMemoryLabel.textColor = .white
		rustMemoryLabel.numberOfLines = 0
		rustMemoryLabel.text =
			"• Rust\n" +
			"      • Ownership tracking at compile time\n" +
			"      • Move/borrow semantics\n" +
			"      • Rc and Arc containers for heap-allocated types\n" +
			"      • Happens at run-time\n" +
			"      • Small performance penalty, but better than GC\n" +
			"• Swift\n" +
			"      • ARC (Automatic Reference Counting)\n" +
			"      • Obj C ARC released in 2011\n" +
			"      • Happens at run-time... ish\n" +
			"      • Small performance penalty, but better than GC\n" +
			"      • Uses autorelease pools\n"
		contentView.addSubview(rustMemoryLabel)

		let beforeArcLabel = codeLabel(filename: "before_arc", language: .objC)
		contentView.addSubview(beforeArcLabel)

		let analyzerImageView = UIImageView(image: #imageLiteral(resourceName: "static_code_analyzer"))
		contentView.addSubview(analyzerImageView)

		let closureLeakLabel = codeLabel(filename: "closure_leak", language: .swift)
		contentView.addSubview(closureLeakLabel)

		let rustRcVsArcLabel = codeLabel(filename: "rc_vs_arc", language: .rust, fontSize: 18)
		contentView.addSubview(rustRcVsArcLabel)

		let swiftRcVsArcLabel = codeLabel(filename: "rc_vs_arc", language: .swift, fontSize: 20)
		contentView.addSubview(swiftRcVsArcLabel)

		memoryVideoView.snp.makeConstraints { (make) in
			make.top.bottom.width.equalTo(view)
		}
		memoryLabel.snp.makeConstraints { (make) in
			make.top.equalTo(contentView).offset(30)
		}
		rustMemoryLabel.snp.makeConstraints { (make) in
			make.top.equalTo(memoryLabel.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-80)
		}
		beforeArcLabel.snp.makeConstraints { (make) in
			make.top.equalTo(memoryLabel.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-80)
		}
		analyzerImageView.snp.makeConstraints { (make) in
			make.top.equalTo(memoryLabel.snp.bottom).offset(20)
		}
		closureLeakLabel.snp.makeConstraints { (make) in
			make.top.equalTo(memoryLabel.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-80)
		}
		rustRcVsArcLabel.snp.makeConstraints { (make) in
			make.top.equalTo(memoryLabel.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-80)
		}
		swiftRcVsArcLabel.snp.makeConstraints { (make) in
			make.top.equalTo(memoryLabel.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-80)
		}

		keepView(memoryVideoView, onPage: page)
		keepView(memoryLabel, onPages: page+1...page+6)
		keepView(rustMemoryLabel, onPage: page + 1)
		keepView(beforeArcLabel, onPage: page + 2)
		keepView(analyzerImageView, onPage: page + 3)
		keepView(closureLeakLabel, onPage: page + 4)
		keepView(rustRcVsArcLabel, onPage: page + 5)
		keepView(swiftRcVsArcLabel, onPage: page + 6)

		page += 7
	}
}
