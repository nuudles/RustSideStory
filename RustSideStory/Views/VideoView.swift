//
//  VideoView.swift
//  RustSideStory
//
//  Created by Christopher Luu on 10/13/16.
//  Copyright © 2016 nuudles. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation
import SnapKit

class VideoView: UIView {
	private let playerViewController: AVPlayerViewController = {
		let viewController = AVPlayerViewController()
		return viewController
	}()

	// MARK: - Initialization methods
	init(url: URL) {
		super.init(frame: .zero)

		playerViewController.player = AVPlayer(url: url)
		addSubview(playerViewController.view)

		playerViewController.view.snp.makeConstraints { (make) in
			make.edges.equalTo(self)
		}
	}

	required init?(coder aDecoder: NSCoder) {
		fatalError("This init method shouldn't ever be used")
	}
}
