// After ARC...

let memoryLabel = titleLabel(text: "MEMORY")
contentView.addSubview(memoryLabel)
// Presumably memoryLabel.release() added automatically
