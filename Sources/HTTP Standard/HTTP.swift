// ===----------------------------------------------------------------------===//
//
// Copyright (c) 2026 Coen ten Thije Boonkkamp
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of project contributors
//
// SPDX-License-Identifier: Apache-2.0
//
// ===----------------------------------------------------------------------===//

public import RFC_9110

/// Convenience namespace for HTTP types
///
/// Allows writing `HTTP.Method` instead of `RFC_9110.Method`. The spec-direct
/// package `swift-rfc-9110` exports only the spec-mirroring `RFC_9110` name;
/// this converger provides the friendly `HTTP` vocabulary for consumers.
public typealias HTTP = RFC_9110
