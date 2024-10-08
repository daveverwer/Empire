import Testing

import Empire

struct TupleTests {
	@Test func oneValueTuple() throws {
		let value = Tuple<Int>(45)

		#expect(value.elements == 45)
	}

//	@Test func twoValueTuple() throws {
//		let value = LabelledTuple<String, Int>(("name", "Korben"), ("age", 45))
//
//		// I do not understand why this doesn't work when the one above does
//		// #expect(value.elements.0 == ("name", "Korben"))
//
//		#expect(value.elements.0.name == "name")
//		#expect(value.elements.0.value == "Korben")
//		#expect(value.elements.1.name == "age")
//		#expect(value.elements.1.value == 45)
//
//	}
//
//	@Test func threeValueTuple() throws {
//		let value = LabelledTuple<String, Int, String>(("name", "Korben"), ("age", 45), ("goal", "to quit"))
//
//		#expect(value.elements.0.name == "name")
//		#expect(value.elements.0.value == "Korben")
//		#expect(value.elements.1.name == "age")
//		#expect(value.elements.1.value == 45)
//		#expect(value.elements.2.name == "goal")
//		#expect(value.elements.2.value == "to quit")
//	}
}

extension TupleTests {
//	@Test func serialize() throws {
//		let value = LabelledTuple<String, UInt>(("name", "Korben"), ("age", 45))
//
//		let buffer = UnsafeMutableRawBufferPointer.allocate(byteCount: 128, alignment: 8)
//
//		var output = buffer
//
//		value.serialize(into: &output)
//
//		var input = UnsafeRawBufferPointer(start: buffer.baseAddress, count: value.serializedSize)
//
//		let result = try LabelledTuple<String, UInt>(buffer: &input)
//
//		#expect(result.elements.0.name == "")
//		#expect(result.elements.0.value == "Korben")
//		#expect(result.elements.1.name == "")
//		#expect(result.elements.1.value == 45)
//	}
}

