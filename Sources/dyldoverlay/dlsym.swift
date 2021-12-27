//
//  dlsym.swift
//
//  Copyright © 2017-2021 Doug Russell. All rights reserved.
//

import Darwin

public enum SymbolError: Error {
    case missingSymbol(String)
}

public let RTLD_DEFAULT = UnsafeMutableRawPointer(bitPattern: -2)!

public func symbol<F>(_ name: String,
                      _ type: F.Type) -> Result<F, Error> {
    guard let symbol = dlsym(RTLD_DEFAULT,
                             name) else {
        return Result.failure(SymbolError.missingSymbol(name))
    }
    return Result.success(unsafeBitCast(symbol,
                                        to: type.self))
}
