import HTTP_Standard
import Testing

extension HTTP {
    @Suite("HTTP Standard Tests")
    struct Test {
        @Suite
        struct Unit {

            @Suite("Semantics (RFC 9110)")
            struct Semantics {

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

            @Suite("HTTP/1.1 (RFC 9112)")
            struct Syntax {

                @Test
                func `version vocabulary reaches through the converger`() {
                    #expect(HTTP.Version.http11.major == 1)
                    #expect(HTTP.Version.http11.minor == 1)
                }
            }

            @Suite("Caching (RFC 9111)")
            struct Caching {

                @Test
                func `caching vocabulary reaches through the converger`() {
                    let _: HTTP.Age.Type = HTTP.Age.self
                    let _: HTTP.CacheControl.Type = HTTP.CacheControl.self
                }
            }
        }

        @Suite
        struct `Edge Case` {
        }

        @Suite
        struct Integration {
        }
    }
}
