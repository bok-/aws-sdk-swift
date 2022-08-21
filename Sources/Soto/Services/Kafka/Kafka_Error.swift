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

/// Error enum for Kafka
public struct KafkaErrorType: AWSErrorType {
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

    /// initialize Kafka
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

    /// Returns information about an error.
    public static var badRequestException: Self { .init(.badRequestException) }
    /// Returns information about an error.
    public static var conflictException: Self { .init(.conflictException) }
    /// Returns information about an error.
    public static var forbiddenException: Self { .init(.forbiddenException) }
    /// Returns information about an error.
    public static var internalServerErrorException: Self { .init(.internalServerErrorException) }
    /// Returns information about an error.
    public static var notFoundException: Self { .init(.notFoundException) }
    /// Returns information about an error.
    public static var serviceUnavailableException: Self { .init(.serviceUnavailableException) }
    /// Returns information about an error.
    public static var tooManyRequestsException: Self { .init(.tooManyRequestsException) }
    /// Returns information about an error.
    public static var unauthorizedException: Self { .init(.unauthorizedException) }
}

extension KafkaErrorType: Equatable {
    public static func == (lhs: KafkaErrorType, rhs: KafkaErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension KafkaErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
