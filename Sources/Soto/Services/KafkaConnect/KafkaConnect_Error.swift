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

/// Error enum for KafkaConnect
public struct KafkaConnectErrorType: AWSErrorType {
    enum Code: String {
        case badRequestException = "BadRequestException"
        case conflictException = "ConflictException"
        case forbiddenException = "ForbiddenException"
        case internalServerErrorException = "InternalServerErrorException"
        case notFoundException = "NotFoundException"
        case serviceUnavailableException = "ServiceUnavailableException"
        case tooManyRequestsException = "TooManyRequestsException"
        case unauthorizedException = "UnauthorizedException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize KafkaConnect
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

    /// HTTP Status Code 400: Bad request due to incorrect input. Correct your request and then retry it.
    public static var badRequestException: Self { .init(.badRequestException) }
    /// HTTP Status Code 409: Conflict. A resource with this name already exists. Retry your request with another name.
    public static var conflictException: Self { .init(.conflictException) }
    /// HTTP Status Code 403: Access forbidden. Correct your credentials and then retry your request.
    public static var forbiddenException: Self { .init(.forbiddenException) }
    /// HTTP Status Code 500: Unexpected internal server error. Retrying your request might resolve the issue.
    public static var internalServerErrorException: Self { .init(.internalServerErrorException) }
    /// HTTP Status Code 404: Resource not found due to incorrect input. Correct your request and then retry it.
    public static var notFoundException: Self { .init(.notFoundException) }
    /// HTTP Status Code 503: Service Unavailable. Retrying your request in some time might resolve the issue.
    public static var serviceUnavailableException: Self { .init(.serviceUnavailableException) }
    /// HTTP Status Code 429: Limit exceeded. Resource limit reached.
    public static var tooManyRequestsException: Self { .init(.tooManyRequestsException) }
    /// HTTP Status Code 401: Unauthorized request. The provided credentials couldn't be validated.
    public static var unauthorizedException: Self { .init(.unauthorizedException) }
}

extension KafkaConnectErrorType: Equatable {
    public static func == (lhs: KafkaConnectErrorType, rhs: KafkaConnectErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension KafkaConnectErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
