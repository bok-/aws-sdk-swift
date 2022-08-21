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

/// Error enum for SageMakerA2IRuntime
public struct SageMakerA2IRuntimeErrorType: AWSErrorType {
    enum Code: String {
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceQuotaExceededException = "ServiceQuotaExceededException"
        case throttlingException = "ThrottlingException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize SageMakerA2IRuntime
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

    /// Your request has the same name as another active human loop but has different input data. You cannot start two  human loops with the same name and different input data.
    public static var conflictException: Self { .init(.conflictException) }
    /// We couldn't process your request because of an issue with the server. Try again later.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// We couldn't find the requested resource. Check that your resources exists and were created in the same AWS Region as your request, and try your request again.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// You exceeded your service quota. Service quotas, also referred to as limits, are the maximum number of service resources or operations for your AWS account. For a list of Amazon A2I service quotes, see Amazon Augmented AI Service Quotes. Delete some resources or request an increase in your service quota. You can request a quota increase using Service Quotas or the AWS Support Center. To request an increase, see AWS Service Quotas in the AWS General Reference.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    /// You exceeded the maximum number of requests.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// The request isn't valid. Check the syntax and try again.
    public static var validationException: Self { .init(.validationException) }
}

extension SageMakerA2IRuntimeErrorType: Equatable {
    public static func == (lhs: SageMakerA2IRuntimeErrorType, rhs: SageMakerA2IRuntimeErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension SageMakerA2IRuntimeErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
