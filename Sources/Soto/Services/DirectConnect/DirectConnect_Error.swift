//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2022 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto-codegenerator.
// DO NOT EDIT.

import SotoCore

/// Error enum for DirectConnect
public struct DirectConnectErrorType: AWSErrorType {
    enum Code: String {
        case directConnectClientException = "DirectConnectClientException"
        case directConnectServerException = "DirectConnectServerException"
        case duplicateTagKeysException = "DuplicateTagKeysException"
        case tooManyTagsException = "TooManyTagsException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize DirectConnect
    public init?(errorCode: String, context: AWSErrorContext) {
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code) {
        self.error = error
        self.context = nil
    }

    /// return error code string
    public var errorCode: String { self.error.rawValue }

    /// One or more parameters are not valid.
    public static var directConnectClientException: Self { .init(.directConnectClientException) }
    /// A server-side error occurred.
    public static var directConnectServerException: Self { .init(.directConnectServerException) }
    /// A tag key was specified more than once.
    public static var duplicateTagKeysException: Self { .init(.duplicateTagKeysException) }
    /// You have reached the limit on the number of tags that can be assigned.
    public static var tooManyTagsException: Self { .init(.tooManyTagsException) }
}

extension DirectConnectErrorType: Equatable {
    public static func == (lhs: DirectConnectErrorType, rhs: DirectConnectErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension DirectConnectErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
