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

/// Error enum for MediaLive
public struct MediaLiveErrorType: AWSErrorType {
    enum Code: String {
        case badGatewayException = "BadGatewayException"
        case badRequestException = "BadRequestException"
        case conflictException = "ConflictException"
        case forbiddenException = "ForbiddenException"
        case gatewayTimeoutException = "GatewayTimeoutException"
        case internalServerErrorException = "InternalServerErrorException"
        case notFoundException = "NotFoundException"
        case tooManyRequestsException = "TooManyRequestsException"
        case unprocessableEntityException = "UnprocessableEntityException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize MediaLive
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

    /// Placeholder documentation for BadGatewayException
    public static var badGatewayException: Self { .init(.badGatewayException) }
    /// Placeholder documentation for BadRequestException
    public static var badRequestException: Self { .init(.badRequestException) }
    /// Placeholder documentation for ConflictException
    public static var conflictException: Self { .init(.conflictException) }
    /// Placeholder documentation for ForbiddenException
    public static var forbiddenException: Self { .init(.forbiddenException) }
    /// Placeholder documentation for GatewayTimeoutException
    public static var gatewayTimeoutException: Self { .init(.gatewayTimeoutException) }
    /// Placeholder documentation for InternalServerErrorException
    public static var internalServerErrorException: Self { .init(.internalServerErrorException) }
    /// Placeholder documentation for NotFoundException
    public static var notFoundException: Self { .init(.notFoundException) }
    /// Placeholder documentation for TooManyRequestsException
    public static var tooManyRequestsException: Self { .init(.tooManyRequestsException) }
    /// Placeholder documentation for UnprocessableEntityException
    public static var unprocessableEntityException: Self { .init(.unprocessableEntityException) }
}

extension MediaLiveErrorType: Equatable {
    public static func == (lhs: MediaLiveErrorType, rhs: MediaLiveErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension MediaLiveErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
