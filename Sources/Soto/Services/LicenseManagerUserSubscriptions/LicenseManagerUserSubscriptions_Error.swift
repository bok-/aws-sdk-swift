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

/// Error enum for LicenseManagerUserSubscriptions
public struct LicenseManagerUserSubscriptionsErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceQuotaExceededException = "ServiceQuotaExceededException"
        case throttlingException = "ThrottlingException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize LicenseManagerUserSubscriptions
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

    /// You don't have sufficient access to perform this action.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// The request couldn't be completed because it conflicted with the current state of the resource.
    public static var conflictException: Self { .init(.conflictException) }
    /// An exception occurred with the service.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// The resource couldn't be found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The request failed because a service quota is exceeded.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    /// The request was denied because of request throttling. Retry the request.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// A parameter is not valid.
    public static var validationException: Self { .init(.validationException) }
}

extension LicenseManagerUserSubscriptionsErrorType: Equatable {
    public static func == (lhs: LicenseManagerUserSubscriptionsErrorType, rhs: LicenseManagerUserSubscriptionsErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension LicenseManagerUserSubscriptionsErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
