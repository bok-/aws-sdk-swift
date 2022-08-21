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

/// Error enum for SageMakerRuntime
public struct SageMakerRuntimeErrorType: AWSErrorType {
    enum Code: String {
        case internalDependencyException = "InternalDependencyException"
        case internalFailure = "InternalFailure"
        case modelError = "ModelError"
        case modelNotReadyException = "ModelNotReadyException"
        case serviceUnavailable = "ServiceUnavailable"
        case validationError = "ValidationError"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize SageMakerRuntime
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

    /// Your request caused an exception with an internal dependency. Contact customer support.
    public static var internalDependencyException: Self { .init(.internalDependencyException) }
    ///  An internal failure occurred.
    public static var internalFailure: Self { .init(.internalFailure) }
    ///  Model (owned by the customer in the container) returned 4xx or 5xx error code.
    public static var modelError: Self { .init(.modelError) }
    /// Either a serverless endpoint variant's resources are still being provisioned, or a multi-model endpoint is still downloading or loading the target model. Wait and try your request again.
    public static var modelNotReadyException: Self { .init(.modelNotReadyException) }
    ///  The service is unavailable. Try your call again.
    public static var serviceUnavailable: Self { .init(.serviceUnavailable) }
    ///  Inspect your request and try again.
    public static var validationError: Self { .init(.validationError) }
}

extension SageMakerRuntimeErrorType: Equatable {
    public static func == (lhs: SageMakerRuntimeErrorType, rhs: SageMakerRuntimeErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension SageMakerRuntimeErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
