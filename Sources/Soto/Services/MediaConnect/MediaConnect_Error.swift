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

/// Error enum for MediaConnect
public struct MediaConnectErrorType: AWSErrorType {
    enum Code: String {
        case addFlowOutputs420Exception = "AddFlowOutputs420Exception"
        case badRequestException = "BadRequestException"
        case createFlow420Exception = "CreateFlow420Exception"
        case forbiddenException = "ForbiddenException"
        case grantFlowEntitlements420Exception = "GrantFlowEntitlements420Exception"
        case internalServerErrorException = "InternalServerErrorException"
        case notFoundException = "NotFoundException"
        case serviceUnavailableException = "ServiceUnavailableException"
        case tooManyRequestsException = "TooManyRequestsException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize MediaConnect
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

    /// Exception raised by AWS Elemental MediaConnect. See the error message and documentation for the operation for more information on the cause of this exception.
    public static var addFlowOutputs420Exception: Self { .init(.addFlowOutputs420Exception) }
    /// Exception raised by AWS Elemental MediaConnect. See the error message and documentation for the operation for more information on the cause of this exception.
    public static var badRequestException: Self { .init(.badRequestException) }
    /// Exception raised by AWS Elemental MediaConnect. See the error message and documentation for the operation for more information on the cause of this exception.
    public static var createFlow420Exception: Self { .init(.createFlow420Exception) }
    /// Exception raised by AWS Elemental MediaConnect. See the error message and documentation for the operation for more information on the cause of this exception.
    public static var forbiddenException: Self { .init(.forbiddenException) }
    /// Exception raised by AWS Elemental MediaConnect. See the error message and documentation for the operation for more information on the cause of this exception.
    public static var grantFlowEntitlements420Exception: Self { .init(.grantFlowEntitlements420Exception) }
    /// Exception raised by AWS Elemental MediaConnect. See the error message and documentation for the operation for more information on the cause of this exception.
    public static var internalServerErrorException: Self { .init(.internalServerErrorException) }
    /// Exception raised by AWS Elemental MediaConnect. See the error message and documentation for the operation for more information on the cause of this exception.
    public static var notFoundException: Self { .init(.notFoundException) }
    /// Exception raised by AWS Elemental MediaConnect. See the error message and documentation for the operation for more information on the cause of this exception.
    public static var serviceUnavailableException: Self { .init(.serviceUnavailableException) }
    /// Exception raised by AWS Elemental MediaConnect. See the error message and documentation for the operation for more information on the cause of this exception.
    public static var tooManyRequestsException: Self { .init(.tooManyRequestsException) }
}

extension MediaConnectErrorType: Equatable {
    public static func == (lhs: MediaConnectErrorType, rhs: MediaConnectErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension MediaConnectErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
