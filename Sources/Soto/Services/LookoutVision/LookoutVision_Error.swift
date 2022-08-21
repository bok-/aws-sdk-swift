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

/// Error enum for LookoutVision
public struct LookoutVisionErrorType: AWSErrorType {
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

    /// initialize LookoutVision
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

    /// You are not authorized to perform the action.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// The update or deletion of a resource caused an inconsistent state.
    public static var conflictException: Self { .init(.conflictException) }
    /// Amazon Lookout for Vision experienced a service issue. Try your call again.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// The resource could not be found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// A service quota was exceeded the allowed limit. For more information, see Limits in Amazon Lookout for Vision in the Amazon Lookout for Vision Developer Guide.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    /// Amazon Lookout for Vision is temporarily unable to process the request. Try your call again.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// An input validation error occured. For example, invalid characters in a project name, or if a pagination token is invalid.
    public static var validationException: Self { .init(.validationException) }
}

extension LookoutVisionErrorType: Equatable {
    public static func == (lhs: LookoutVisionErrorType, rhs: LookoutVisionErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension LookoutVisionErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
