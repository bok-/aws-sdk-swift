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

/// Error enum for ElasticTranscoder
public struct ElasticTranscoderErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case incompatibleVersionException = "IncompatibleVersionException"
        case internalServiceException = "InternalServiceException"
        case limitExceededException = "LimitExceededException"
        case resourceInUseException = "ResourceInUseException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize ElasticTranscoder
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

    /// General authentication failure. The request was not signed correctly.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    public static var incompatibleVersionException: Self { .init(.incompatibleVersionException) }
    /// Elastic Transcoder encountered an unexpected exception while trying to fulfill the request.
    public static var internalServiceException: Self { .init(.internalServiceException) }
    /// Too many operations for a given AWS account. For example, the number of pipelines  exceeds the maximum allowed.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// The resource you are attempting to change is in use. For example, you are attempting  to delete a pipeline that is currently in use.
    public static var resourceInUseException: Self { .init(.resourceInUseException) }
    /// The requested resource does not exist or is not available. For example, the pipeline  to which you're trying to add a job doesn't exist or is still being created.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// One or more required parameter values were not provided in the request.
    public static var validationException: Self { .init(.validationException) }
}

extension ElasticTranscoderErrorType: Equatable {
    public static func == (lhs: ElasticTranscoderErrorType, rhs: ElasticTranscoderErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension ElasticTranscoderErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
