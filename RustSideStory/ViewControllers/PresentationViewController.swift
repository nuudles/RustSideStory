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
	// MARK: - View methods
	override func viewDidLoad() {
		super.viewDidLoad()

		automaticallyAdjustsScrollViewInsets = false

		setupPage0()
		setupPage1()
	}

	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)

		scrollView.setContentOffset(CGPoint(x: 1024 * 1, y: 0), animated: false)
	}

	// MARK: - Overridden AnimatedPagingScrollViewController methods
	override func numberOfPages() -> Int {
		return 2
	}

	// MARK: - Private methods
	private func setupPage0() {
		let imageView = UIImageView(image: #imageLiteral(resourceName: "logo"))
		imageView.contentMode = .scaleAspectFit
		contentView.addSubview(imageView)

		imageView.snp.makeConstraints { (make) in
			make.width.height.equalTo(view).offset(-100)
			make.centerY.equalTo(contentView)
		}

		let alphaAnimation = AlphaAnimation(view: imageView)
		alphaAnimation[0] = 1.0
		alphaAnimation[1024] = 0.0
		animator.addAnimation(alphaAnimation)

		let backgroundColorAnimation = BackgroundColorAnimation(view: view)
		backgroundColorAnimation[0] = UIColor(intRed: 146, intGreen: 47, intBlue: 41)
		backgroundColorAnimation[1024] = .black
		animator.addAnimation(backgroundColorAnimation)

		keepView(imageView, onPage: 0)
	}

	private func setupPage1() {
		let titleLabel = UILabel()
		titleLabel.font = Font.dirtyEgo.withSize(size: 100)
		titleLabel.text = "INTRODUCTION"
		titleLabel.textColor = .white
		contentView.addSubview(titleLabel)

		titleLabel.snp.makeConstraints { (make) in
			make.top.equalTo(contentView).offset(30)
		}

		keepView(titleLabel, onPage: 1)
	}

	override func scrollViewDidScroll(_ scrollView: UIScrollView) {
		animator.animate(scrollView.contentOffset.x)
	}
}
