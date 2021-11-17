//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
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

/// Error enum for Account
public struct AccountErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case tooManyRequestsException = "TooManyRequestsException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Account
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

    /// The operation failed because the calling identity doesn't have the minimum required permissions.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// The operation failed because of an error internal to Amazon Web Services. Try your operation again later.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// The operation failed because it specified a resource that can't be found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The operation failed because it was called too frequently and exceeded a throttle limit.
    public static var tooManyRequestsException: Self { .init(.tooManyRequestsException) }
    /// The operation failed because one of the input parameters was invalid.
    public static var validationException: Self { .init(.validationException) }
}

extension AccountErrorType: Equatable {
    public static func == (lhs: AccountErrorType, rhs: AccountErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension AccountErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}