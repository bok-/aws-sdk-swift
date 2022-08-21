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

/// Error enum for RolesAnywhere
public struct RolesAnywhereErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case tooManyTagsException = "TooManyTagsException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize RolesAnywhere
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

    /// You do not have sufficient access to perform this action.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// The resource could not be found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// Too many tags.
    public static var tooManyTagsException: Self { .init(.tooManyTagsException) }
    /// Validation exception error.
    public static var validationException: Self { .init(.validationException) }
}

extension RolesAnywhereErrorType: Equatable {
    public static func == (lhs: RolesAnywhereErrorType, rhs: RolesAnywhereErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension RolesAnywhereErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
