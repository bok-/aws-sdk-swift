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

/// Error enum for EMR
public struct EMRErrorType: AWSErrorType {
    enum Code: String {
        case internalServerError = "InternalServerError"
        case internalServerException = "InternalServerException"
        case invalidRequestException = "InvalidRequestException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize EMR
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

    /// Indicates that an error occurred while processing the request and that the request was not completed.
    public static var internalServerError: Self { .init(.internalServerError) }
    /// This exception occurs when there is an internal failure in the Amazon EMR service.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// This exception occurs when there is something wrong with user input.
    public static var invalidRequestException: Self { .init(.invalidRequestException) }
}

extension EMRErrorType: Equatable {
    public static func == (lhs: EMRErrorType, rhs: EMRErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension EMRErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
