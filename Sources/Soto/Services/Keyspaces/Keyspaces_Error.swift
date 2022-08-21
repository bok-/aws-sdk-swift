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

/// Error enum for Keyspaces
public struct KeyspacesErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceQuotaExceededException = "ServiceQuotaExceededException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Keyspaces
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
    /// Amazon Keyspaces could not complete the requested action. This error may occur if you try to  perform an action and the same or a different action is already in progress, or if you try to create a resource that already exists.
    public static var conflictException: Self { .init(.conflictException) }
    /// Amazon Keyspaces was unable to fully process this request because of an internal server error.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// The operation tried to access a keyspace or table that doesn't exist. The resource might not be specified correctly, or its status might not be ACTIVE.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The operation exceeded the service quota for this resource.  For more information on service quotas, see Quotas in the Amazon Keyspaces Developer Guide.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    /// The operation failed due to an invalid or malformed request.
    public static var validationException: Self { .init(.validationException) }
}

extension KeyspacesErrorType: Equatable {
    public static func == (lhs: KeyspacesErrorType, rhs: KeyspacesErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension KeyspacesErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
