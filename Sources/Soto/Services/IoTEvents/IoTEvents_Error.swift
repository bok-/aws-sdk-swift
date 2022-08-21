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

/// Error enum for IoTEvents
public struct IoTEventsErrorType: AWSErrorType {
    enum Code: String {
        case internalFailureException = "InternalFailureException"
        case invalidRequestException = "InvalidRequestException"
        case limitExceededException = "LimitExceededException"
        case resourceAlreadyExistsException = "ResourceAlreadyExistsException"
        case resourceInUseException = "ResourceInUseException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceUnavailableException = "ServiceUnavailableException"
        case throttlingException = "ThrottlingException"
        case unsupportedOperationException = "UnsupportedOperationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize IoTEvents
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

    /// An internal failure occurred.
    public static var internalFailureException: Self { .init(.internalFailureException) }
    /// The request was invalid.
    public static var invalidRequestException: Self { .init(.invalidRequestException) }
    /// A limit was exceeded.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// The resource already exists.
    public static var resourceAlreadyExistsException: Self { .init(.resourceAlreadyExistsException) }
    /// The resource is in use.
    public static var resourceInUseException: Self { .init(.resourceInUseException) }
    /// The resource was not found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The service is currently unavailable.
    public static var serviceUnavailableException: Self { .init(.serviceUnavailableException) }
    /// The request could not be completed due to throttling.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// The requested operation is not supported.
    public static var unsupportedOperationException: Self { .init(.unsupportedOperationException) }
}

extension IoTEventsErrorType: Equatable {
    public static func == (lhs: IoTEventsErrorType, rhs: IoTEventsErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension IoTEventsErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
