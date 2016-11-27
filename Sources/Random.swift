//
//  Random.swift
//  SRP
//
#if os(Linux)
	import Glibc
#else
	import Darwin
#endif
import Foundation

let rndName = "/dev/urandom"
let rndFile = open(rndName, O_RDONLY)

public func generateRandomBytes(count: Int) -> Data {
	guard rndFile >= 0 else {
		fatalError("Cannot open '\(rndName)': \(strerror(errno))")
	}
	var data = Data(count: count)
	data.withUnsafeMutableBytes { (pData: UnsafeMutablePointer<UInt8>) -> Void in
		let n = size_t(count)
		guard read(rndFile, pData, n) == n else {
			fatalError("Cannot read from '\(rndName)': \(strerror(errno))")
		}
	}
	return data
}
