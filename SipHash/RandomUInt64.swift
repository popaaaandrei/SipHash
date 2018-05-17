//
//  RandomUInt64.swift
//  SipHash
//
//  Created by Károly Lőrentey on 2016-11-14.
//  Copyright © 2016-2017 Károly Lőrentey.
//

#if os(iOS) || os(macOS) || os(watchOS) || os(tvOS)
    import Darwin

    func randomUInt64() -> UInt64 {
        return UInt64(arc4random()) << 32 | UInt64(arc4random())
    }
#elseif os(Linux)
    import ClibBSD

    func randomUInt64() -> UInt64 {
        return UInt64(arc4random()) << 32 | UInt64(arc4random())
    }
#else
    func randomUInt64() -> UInt64 {
        fatalError("Unsupported platform")
    }
#endif

