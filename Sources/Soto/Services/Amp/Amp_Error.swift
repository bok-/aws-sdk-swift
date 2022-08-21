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

/// Error enum for Amp
public struct AmpErrorType: AWSErrorType {
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

    /// initialize Amp
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

    /// User does not have sufficient access to perform this action.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// Updating or deleting a resource can cause an inconsistent state.
    public static var conflictException: Self { .init(.conflictException) }
    /// Unexpected error during processing of request.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// Request references a resource which does not exist.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// Request would cause a service quota to be exceeded.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    /// Request was denied due to request throttling.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// The input fails to satisfy the constraints specified by an AWS service.
    public static var validationException: Self { .init(.validationException) }
}

extension AmpErrorType: Equatable {
    public static func == (lhs: AmpErrorType, rhs: AmpErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension AmpErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
