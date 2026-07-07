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

import HTTP_Standard
import Testing

@Suite("HTTP Standard Tests")
struct HTTPStandardTests {

    // MARK: - RFC 9110 (semantics) through the converger

    @Suite("Semantics (RFC 9110)")
    struct SemanticsTests {

        @Test
        func `method vocabulary reaches through the converger`() {
            #expect(HTTP.Method.get.isSafe)
            #expect(HTTP.Method.get.isIdempotent)
            #expect(!HTTP.Method.post.isSafe)
        }

        @Test
        func `status vocabulary reaches through the converger`() {
            #expect(HTTP.Status.ok != HTTP.Status.created)
        }
    }

    // MARK: - RFC 9112 (HTTP/1.1) through the converger

    @Suite("HTTP/1.1 (RFC 9112)")
    struct SyntaxTests {

        @Test
        func `version vocabulary reaches through the converger`() {
            #expect(HTTP.Version.http11.major == 1)
            #expect(HTTP.Version.http11.minor == 1)
        }
    }

    // MARK: - RFC 9111 (caching) through the converger

    @Suite("Caching (RFC 9111)")
    struct CachingTests {

        @Test
        func `caching vocabulary reaches through the converger`() {
            let _: HTTP.Age.Type = HTTP.Age.self
            let _: HTTP.CacheControl.Type = HTTP.CacheControl.self
        }
    }
}
