// Copyright 2015-present 650 Industries. All rights reserved.

import Foundation

enum ABI44_0_0EXUpdatesCodeSigningAlgorithm: String {
    case RSA_SHA256 = "rsa-v1_5-sha256"
}

extension ABI44_0_0EXUpdatesCodeSigningAlgorithm {
  static func parseFromString(_ str: String?) throws -> ABI44_0_0EXUpdatesCodeSigningAlgorithm {
    guard let str = str else {
      return ABI44_0_0EXUpdatesCodeSigningAlgorithm.RSA_SHA256
    }

    guard let alg = ABI44_0_0EXUpdatesCodeSigningAlgorithm(rawValue: str) else {
      throw ABI44_0_0EXUpdatesCodeSigningError.AlgorithmParseError
    }
    
    return alg
  }
}
