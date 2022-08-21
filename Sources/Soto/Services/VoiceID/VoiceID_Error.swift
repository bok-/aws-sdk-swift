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

/// Error enum for VoiceID
public struct VoiceIDErrorType: AWSErrorType {
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

    /// initialize VoiceID
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

    /// You do not have sufficient permissions to perform this action. Check the error message and try  again.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// The request failed due to a conflict. Check the ConflictType and error message for more details.
    public static var conflictException: Self { .init(.conflictException) }
    /// The request failed due to an unknown error on the server side.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// The specified resource cannot be found. Check the ResourceType and error message for more details.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The request exceeded the service quota. Refer to Voice ID Service  Quotas and try your request again.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    /// The request was denied due to request throttling. Please slow down your request rate. Refer to  Amazon Connect Voice ID Service API throttling quotas and try your request again.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// The request failed one or more validations; check the error message for more details.
    public static var validationException: Self { .init(.validationException) }
}

extension VoiceIDErrorType: Equatable {
    public static func == (lhs: VoiceIDErrorType, rhs: VoiceIDErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension VoiceIDErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
