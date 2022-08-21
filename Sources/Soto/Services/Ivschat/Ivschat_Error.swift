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

/// Error enum for Ivschat
public struct IvschatErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case pendingVerification = "PendingVerification"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceQuotaExceededException = "ServiceQuotaExceededException"
        case throttlingException = "ThrottlingException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Ivschat
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

    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    public static var conflictException: Self { .init(.conflictException) }
    public static var internalServerException: Self { .init(.internalServerException) }
    public static var pendingVerification: Self { .init(.pendingVerification) }
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    public static var throttlingException: Self { .init(.throttlingException) }
    public static var validationException: Self { .init(.validationException) }
}

extension IvschatErrorType: Equatable {
    public static func == (lhs: IvschatErrorType, rhs: IvschatErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension IvschatErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
