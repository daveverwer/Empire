public protocol Serializable {
	var serializedSize: Int { get }
	func serialize(into buffer: inout UnsafeMutableRawBufferPointer)
}

extension UInt: Serializable {
	public var serializedSize: Int {
		bitWidth / 8
	}

	public func serialize(into buffer: inout UnsafeMutableRawBufferPointer) {
		withUnsafeBytes(of: self.bigEndian) { ptr in
			buffer.copyMemory(from: ptr)
			buffer = UnsafeMutableRawBufferPointer(rebasing: buffer[ptr.count...])
		}
	}
}

extension String: Serializable {
	public var serializedSize: Int {
		let length = utf8.count

		return UInt(length).serializedSize + length
	}

	public func serialize(into buffer: inout UnsafeMutableRawBufferPointer) {
		let length = utf8.count

		// write the length
		UInt(length).serialize(into: &buffer)

		// write the data
		withCString { ptr in
			let data = UnsafeRawBufferPointer(start: ptr, count: length)
			buffer.copyMemory(from: data)
		}

		buffer = UnsafeMutableRawBufferPointer(rebasing: buffer[length...])
	}
}

//extension Float: Serializable {
//	public var serializedSize: Int {
//		bitPattern.bitWidth / 8
//	}
//
//	public func serialize(into buffer: inout UnsafeMutableRawBufferPointer) {
//		withUnsafeBytes(of: self.bitPattern) { ptr in
//			buffer.copyMemory(from: ptr)
//			buffer = UnsafeMutableRawBufferPointer(rebasing: buffer[ptr.count...])
//		}
//	}
//}
