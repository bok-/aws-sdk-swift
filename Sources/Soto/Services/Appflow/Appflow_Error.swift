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

/// Error enum for Appflow
public struct AppflowErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case conflictException = "ConflictException"
        case connectorAuthenticationException = "ConnectorAuthenticationException"
        case connectorServerException = "ConnectorServerException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceQuotaExceededException = "ServiceQuotaExceededException"
        case throttlingException = "ThrottlingException"
        case unsupportedOperationException = "UnsupportedOperationException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Appflow
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

    /// AppFlow/Requester has invalid or missing permissions.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    ///  There was a conflict when processing the request (for example, a flow with the given name already exists within the account. Check for conflicting resource names and try again.
    public static var conflictException: Self { .init(.conflictException) }
    ///  An error occurred when authenticating with the connector endpoint.
    public static var connectorAuthenticationException: Self { .init(.connectorAuthenticationException) }
    ///  An error occurred when retrieving data from the connector endpoint.
    public static var connectorServerException: Self { .init(.connectorServerException) }
    ///  An internal service error occurred during the processing of your request. Try again later.
    public static var internalServerException: Self { .init(.internalServerException) }
    ///  The resource specified in the request (such as the source or destination connector profile) is not found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    ///  The request would cause a service quota (such as the number of flows) to be exceeded.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    /// API calls have exceeded the maximum allowed API request rate per account and per Region.
    public static var throttlingException: Self { .init(.throttlingException) }
    ///  The requested operation is not supported for the current flow.
    public static var unsupportedOperationException: Self { .init(.unsupportedOperationException) }
    ///  The request has invalid or missing parameters.
    public static var validationException: Self { .init(.validationException) }
}

extension AppflowErrorType: Equatable {
    public static func == (lhs: AppflowErrorType, rhs: AppflowErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension AppflowErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
