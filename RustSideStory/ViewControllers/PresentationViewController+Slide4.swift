//
//  PresentationViewController+Slide4.swift
//  RustSideStory
//
//  Created by Christopher Luu on 10/8/16.
//  Copyright © 2016 nuudles. All rights reserved.
//

import UIKit
import RazzleDazzle

// MARK: - Slide 4
extension PresentationViewController {
	func setupSlide4(page: inout CGFloat) {
		NSLog("\(#function): \(page)")

		let rumbleLabel = titleLabel(text: "THE RUMBLE")
		contentView.addSubview(rumbleLabel)

		// Variables
		let rustVariablesLabel = codeLabel(filename: "variables", language: .rust)
		contentView.addSubview(rustVariablesLabel)

		let swiftVariablesLabel = codeLabel(filename: "variables", language: .swift)
		contentView.addSubview(swiftVariablesLabel)

		// Imports
		let rustImportLabel = codeLabel(filename: "import", language: .rust)
		contentView.addSubview(rustImportLabel)

		let swiftImportLabel = codeLabel(filename: "import", language: .swift)
		contentView.addSubview(swiftImportLabel)

		// String formatting
		let rustStringFormatLabel = codeLabel(filename: "string_formatting", language: .rust)
		contentView.addSubview(rustStringFormatLabel)

		let swiftStringFormatLabel = codeLabel(filename: "string_formatting", language: .swift)
		contentView.addSubview(swiftStringFormatLabel)

		// Named parameters
		let rustNamedParamLabel = codeLabel(filename: "named_parameters", language: .rust)
		contentView.addSubview(rustNamedParamLabel)

		let swiftNamedParamLabel = codeLabel(filename: "named_parameters", language: .swift)
		contentView.addSubview(swiftNamedParamLabel)

		// Default parameters
		let rustDefaultParamLabel = codeLabel(filename: "default_parameters", language: .rust)
		contentView.addSubview(rustDefaultParamLabel)

		let swiftDefaultParamLabel = codeLabel(filename: "default_parameters", language: .swift)
		contentView.addSubview(swiftDefaultParamLabel)

		// Default parameters
		let rustErrorHandlingLabel = codeLabel(filename: "error_handling", language: .rust)
		contentView.addSubview(rustErrorHandlingLabel)

		let swiftErrorHandlingLabel = codeLabel(filename: "error_handling", language: .swift)
		contentView.addSubview(swiftErrorHandlingLabel)

		// Type Inference
		let rustTypeInferenceLabel = codeLabel(filename: "type_inference", language: .rust)
		contentView.addSubview(rustTypeInferenceLabel)

		let swiftTypeInferenceLabel = codeLabel(filename: "type_inference", language: .swift)
		contentView.addSubview(swiftTypeInferenceLabel)

		// Swift properties
		let swiftPropertiesLabel = codeLabel(filename: "properties", language: .swift, fontSize: 18)
		contentView.addSubview(swiftPropertiesLabel)

		// Rust derives
		let rustDeriveLabel = codeLabel(filename: "derive", language: .rust)
		contentView.addSubview(rustDeriveLabel)

		rumbleLabel.snp.makeConstraints { (make) in
			make.top.equalTo(contentView).offset(30)
		}
		rustVariablesLabel.snp.makeConstraints { (make) in
			make.top.equalTo(rumbleLabel.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-80)
		}
		swiftVariablesLabel.snp.makeConstraints { (make) in
			make.top.equalTo(rustVariablesLabel.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-80)
		}
		rustImportLabel.snp.makeConstraints { (make) in
			make.top.equalTo(rumbleLabel.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-80)
		}
		swiftImportLabel.snp.makeConstraints { (make) in
			make.top.equalTo(rustImportLabel.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-80)
		}
		rustStringFormatLabel.snp.makeConstraints { (make) in
			make.top.equalTo(rumbleLabel.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-80)
		}
		swiftStringFormatLabel.snp.makeConstraints { (make) in
			make.top.equalTo(rustStringFormatLabel.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-80)
		}
		rustNamedParamLabel.snp.makeConstraints { (make) in
			make.top.equalTo(rumbleLabel.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-80)
		}
		swiftNamedParamLabel.snp.makeConstraints { (make) in
			make.top.equalTo(rustNamedParamLabel.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-80)
		}
		rustDefaultParamLabel.snp.makeConstraints { (make) in
			make.top.equalTo(rumbleLabel.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-80)
		}
		swiftDefaultParamLabel.snp.makeConstraints { (make) in
			make.top.equalTo(rumbleLabel.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-80)
		}
		rustErrorHandlingLabel.snp.makeConstraints { (make) in
			make.top.equalTo(rumbleLabel.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-80)
		}
		swiftErrorHandlingLabel.snp.makeConstraints { (make) in
			make.top.equalTo(rumbleLabel.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-80)
		}
		rustTypeInferenceLabel.snp.makeConstraints { (make) in
			make.top.equalTo(rumbleLabel.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-80)
		}
		swiftTypeInferenceLabel.snp.makeConstraints { (make) in
			make.top.equalTo(rumbleLabel.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-80)
		}
		swiftPropertiesLabel.snp.makeConstraints { (make) in
			make.top.equalTo(rumbleLabel.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-80)
		}
		rustDeriveLabel.snp.makeConstraints { (make) in
			make.top.equalTo(rumbleLabel.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-80)
		}

		keepView(rumbleLabel, onPages: page...page+11)
		keepView(rustVariablesLabel, onPage: page)
		keepView(swiftVariablesLabel, onPage: page)
		keepView(rustImportLabel, onPage: page + 1)
		keepView(swiftImportLabel, onPage: page + 1)
		keepView(rustStringFormatLabel, onPage: page + 2)
		keepView(swiftStringFormatLabel, onPage: page + 2)
		keepView(rustNamedParamLabel, onPage: page + 3)
		keepView(swiftNamedParamLabel, onPage: page + 3)
		keepView(rustDefaultParamLabel, onPage: page + 4)
		keepView(swiftDefaultParamLabel, onPage: page + 5)
		keepView(rustErrorHandlingLabel, onPage: page + 6)
		keepView(swiftErrorHandlingLabel, onPage: page + 7)
		keepView(rustTypeInferenceLabel, onPage: page + 8)
		keepView(swiftTypeInferenceLabel, onPage: page + 9)
		keepView(swiftPropertiesLabel, onPage: page + 10)
		keepView(rustDeriveLabel, onPage: page + 11)

		page += 12
	}
}
