//
//  PresentationViewController.swift
//  RustSideStory
//
//  Created by Christopher Luu on 10/2/16.
//  Copyright © 2016 nuudles. All rights reserved.
//

import UIKit
import RazzleDazzle
import SyntaxKit
import SnapKit

class PresentationViewController: AnimatedPagingScrollViewController {
	// MARK: - Internal variables
	let bundleManager: BundleManager = {
		let manager = BundleManager() { (identifier, isLanguage) in
			let url = Bundle.main.url(forResource: identifier, withExtension: nil, subdirectory: "TextMateFiles")
			NSLog("\(identifier): \(url)")
			return url
		}
		return manager
	}()
	lazy var theme: Theme = { [unowned self] in
		guard let theme = self.bundleManager.theme(withIdentifier: "Monokai.tmTheme") else {
			fatalError("Could not find Theme file")
		}
		return theme
	}()
	lazy var swiftParser: AttributedParser = { [unowned self] in
		guard let language = self.bundleManager.language(withIdentifier: "Swift.tmLanguage") else {
			fatalError("Could not find Swift language files")
		}
		let parser = AttributedParser(language: language, theme: self.theme)
		return parser
	}()
	lazy var objCParser: AttributedParser = { [unowned self] in
		guard let language = self.bundleManager.language(withIdentifier: "Objective-C.tmLanguage") else {
			fatalError("Could not find Objective C language files")
		}
		let parser = AttributedParser(language: language, theme: self.theme)
		return parser
	}()
	lazy var rustParser: AttributedParser = { [unowned self] in
		guard let language = self.bundleManager.language(withIdentifier: "Rust.tmLanguage") else {
			fatalError("Could not find Rust language files")
		}
		let parser = AttributedParser(language: language, theme: self.theme)
		return parser
	}()

	// MARK: - View methods
	override func viewDidLoad() {
		super.viewDidLoad()

		automaticallyAdjustsScrollViewInsets = false

		var page = CGFloat(0)
		setupSlide1(page: &page)
		setupSlide2(page: &page)
		setupSlide3(page: &page)
	}

	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)

		scrollView.setContentOffset(CGPoint(x: 1024 * 4, y: 0), animated: false)
	}

	// MARK: - Overridden AnimatedPagingScrollViewController methods
	override func numberOfPages() -> Int {
		return 15
	}

	// MARK: - Internal methods
	func titleLabel(text: String) -> UILabel {
		let titleLabel = UILabel()
		titleLabel.font = Font.dirtyEgo.withSize(size: 100)
		titleLabel.text = text
		titleLabel.textColor = .white
		return titleLabel
	}
}
