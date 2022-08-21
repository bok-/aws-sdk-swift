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

/// Error enum for Lightsail
public struct LightsailErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case accountSetupInProgressException = "AccountSetupInProgressException"
        case invalidInputException = "InvalidInputException"
        case notFoundException = "NotFoundException"
        case operationFailureException = "OperationFailureException"
        case serviceException = "ServiceException"
        case unauthenticatedException = "UnauthenticatedException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Lightsail
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

    /// Lightsail throws this exception when the user cannot be authenticated or uses invalid credentials to access a resource.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// Lightsail throws this exception when an account is still in the setup in progress state.
    public static var accountSetupInProgressException: Self { .init(.accountSetupInProgressException) }
    /// Lightsail throws this exception when user input does not conform to the validation rules of an input field.  Domain and distribution APIs are only available in the N. Virginia (us-east-1) Amazon Web Services Region. Please set your Amazon Web Services Region configuration to us-east-1 to create, view, or edit these resources.
    public static var invalidInputException: Self { .init(.invalidInputException) }
    /// Lightsail throws this exception when it cannot find a resource.
    public static var notFoundException: Self { .init(.notFoundException) }
    /// Lightsail throws this exception when an operation fails to execute.
    public static var operationFailureException: Self { .init(.operationFailureException) }
    /// A general service exception.
    public static var serviceException: Self { .init(.serviceException) }
    /// Lightsail throws this exception when the user has not been authenticated.
    public static var unauthenticatedException: Self { .init(.unauthenticatedException) }
}

extension LightsailErrorType: Equatable {
    public static func == (lhs: LightsailErrorType, rhs: LightsailErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension LightsailErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
