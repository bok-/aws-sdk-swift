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

/// Error enum for ChimeSDKMeetings
public struct ChimeSDKMeetingsErrorType: AWSErrorType {
    enum Code: String {
        case badRequestException = "BadRequestException"
        case conflictException = "ConflictException"
        case forbiddenException = "ForbiddenException"
        case limitExceededException = "LimitExceededException"
        case notFoundException = "NotFoundException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceFailureException = "ServiceFailureException"
        case serviceUnavailableException = "ServiceUnavailableException"
        case throttlingException = "ThrottlingException"
        case tooManyTagsException = "TooManyTagsException"
        case unauthorizedException = "UnauthorizedException"
        case unprocessableEntityException = "UnprocessableEntityException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize ChimeSDKMeetings
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

    /// The input parameters don't match the service's restrictions.
    public static var badRequestException: Self { .init(.badRequestException) }
    /// Multiple instances of the same request have been made simultaneously.
    public static var conflictException: Self { .init(.conflictException) }
    /// The client is permanently forbidden from making the request.
    public static var forbiddenException: Self { .init(.forbiddenException) }
    /// The request exceeds the resource limit.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// One or more of the resources in the request does not exist in the system.
    public static var notFoundException: Self { .init(.notFoundException) }
    /// The resource that you want to tag couldn't be found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The service encountered an unexpected error.
    public static var serviceFailureException: Self { .init(.serviceFailureException) }
    /// The service is currently unavailable.
    public static var serviceUnavailableException: Self { .init(.serviceUnavailableException) }
    /// The number of customer requests exceeds the request rate limit.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// Too many tags were added to the specified resource.
    public static var tooManyTagsException: Self { .init(.tooManyTagsException) }
    /// The user isn't authorized to request a resource.
    public static var unauthorizedException: Self { .init(.unauthorizedException) }
    /// The request was well-formed but was unable to be followed due to semantic errors.
    public static var unprocessableEntityException: Self { .init(.unprocessableEntityException) }
}

extension ChimeSDKMeetingsErrorType: Equatable {
    public static func == (lhs: ChimeSDKMeetingsErrorType, rhs: ChimeSDKMeetingsErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension ChimeSDKMeetingsErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
