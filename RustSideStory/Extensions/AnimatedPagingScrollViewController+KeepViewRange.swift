//
//  AnimatedPagingScrollViewController+KeepViewRange.swift
//  RustSideStory
//
//  Created by Christopher Luu on 10/15/16.
//  Copyright © 2016 nuudles. All rights reserved.
//

import RazzleDazzle

extension AnimatedPagingScrollViewController {
	func keepView(_ view: UIView, onPages pages: ClosedRange<CGFloat>) {
		keepView(view, onPages: (Int(pages.lowerBound)...Int(pages.upperBound)).map { CGFloat($0) })
	}
}
