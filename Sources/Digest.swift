//
//  Digest.swift
//  SRP
//
import Foundation
import CryptoSwift

public enum Digest {
	case MD5
	case SHA1
	case SHA512

	public var length: Int {
		switch self {
		case .MD5: return 16
		case .SHA1: return 20
		case .SHA512: return 64
		}
	}

	var f: (Array<UInt8>) -> Array<UInt8> {
		switch self {
		case .MD5: return CryptoSwift.Digest.md5
		case .SHA1: return CryptoSwift.Digest.sha1
		case .SHA512: return CryptoSwift.Digest.sha512
		}
	}

	public func hash(_ data: Data) -> Data {
		return data.withUnsafeBytes { (ptr: UnsafePointer<UInt8>) -> Data in
			var p = ptr
			var a = Array<UInt8>()
			let n = data.count
			a.reserveCapacity(n)
			for _ in 0..<n {
				a.append(p.pointee)
				p += 1
			}
			return Data(bytes: f(a))
		}
	}
}
