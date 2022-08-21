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

/// Error enum for ResourceGroups
public struct ResourceGroupsErrorType: AWSErrorType {
    enum Code: String {
        case badRequestException = "BadRequestException"
        case forbiddenException = "ForbiddenException"
        case internalServerErrorException = "InternalServerErrorException"
        case methodNotAllowedException = "MethodNotAllowedException"
        case notFoundException = "NotFoundException"
        case tooManyRequestsException = "TooManyRequestsException"
        case unauthorizedException = "UnauthorizedException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize ResourceGroups
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

    /// The request includes one or more parameters that violate validation rules.
    public static var badRequestException: Self { .init(.badRequestException) }
    /// The caller isn't authorized to make the request. Check permissions.
    public static var forbiddenException: Self { .init(.forbiddenException) }
    /// An internal error occurred while processing the request. Try again later.
    public static var internalServerErrorException: Self { .init(.internalServerErrorException) }
    /// The request uses an HTTP method that isn't allowed for the specified resource.
    public static var methodNotAllowedException: Self { .init(.methodNotAllowedException) }
    /// One or more of the specified resources don't exist.
    public static var notFoundException: Self { .init(.notFoundException) }
    /// You've exceeded throttling limits by making too many requests in a period of time.
    public static var tooManyRequestsException: Self { .init(.tooManyRequestsException) }
    /// The request was rejected because it doesn't have valid credentials for the target resource.
    public static var unauthorizedException: Self { .init(.unauthorizedException) }
}

extension ResourceGroupsErrorType: Equatable {
    public static func == (lhs: ResourceGroupsErrorType, rhs: ResourceGroupsErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension ResourceGroupsErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
