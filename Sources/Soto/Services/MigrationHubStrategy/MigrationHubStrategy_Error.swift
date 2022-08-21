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

/// Error enum for MigrationHubStrategy
public struct MigrationHubStrategyErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceLinkedRoleLockClientException = "ServiceLinkedRoleLockClientException"
        case serviceQuotaExceededException = "ServiceQuotaExceededException"
        case throttlingException = "ThrottlingException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize MigrationHubStrategy
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

    ///  The AWS user account does not have permission to perform the action. Check the AWS Identity and Access Management (IAM) policy associated with this account.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    ///  Exception to indicate that there is an ongoing task when a new task is created.  Return when once the existing tasks are complete.
    public static var conflictException: Self { .init(.conflictException) }
    ///  The server experienced an internal error. Try again.
    public static var internalServerException: Self { .init(.internalServerException) }
    ///  The specified ID in the request is not found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    ///  Exception to indicate that the service-linked role (SLR) is locked.
    public static var serviceLinkedRoleLockClientException: Self { .init(.serviceLinkedRoleLockClientException) }
    ///  The AWS account has reached its quota of imports. Contact AWS Support to increase the quota for this account.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    ///  The request was denied due to request throttling.
    public static var throttlingException: Self { .init(.throttlingException) }
    ///  The request body isn't valid.
    public static var validationException: Self { .init(.validationException) }
}

extension MigrationHubStrategyErrorType: Equatable {
    public static func == (lhs: MigrationHubStrategyErrorType, rhs: MigrationHubStrategyErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension MigrationHubStrategyErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
