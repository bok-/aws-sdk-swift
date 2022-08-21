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

/// Error enum for Athena
public struct AthenaErrorType: AWSErrorType {
    enum Code: String {
        case internalServerException = "InternalServerException"
        case invalidRequestException = "InvalidRequestException"
        case metadataException = "MetadataException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case tooManyRequestsException = "TooManyRequestsException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Athena
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

    /// Indicates a platform issue, which may be due to a transient condition or outage.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// Indicates that something is wrong with the input to the request. For example, a required parameter may be missing or out of range.
    public static var invalidRequestException: Self { .init(.invalidRequestException) }
    /// An exception that Athena received when it called a custom metastore. Occurs if the error is not caused by user input (InvalidRequestException) or from the Athena platform (InternalServerException). For example, if a user-created Lambda function is missing permissions, the Lambda 4XX exception is returned in a MetadataException.
    public static var metadataException: Self { .init(.metadataException) }
    /// A resource, such as a workgroup, was not found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// Indicates that the request was throttled.
    public static var tooManyRequestsException: Self { .init(.tooManyRequestsException) }
}

extension AthenaErrorType: Equatable {
    public static func == (lhs: AthenaErrorType, rhs: AthenaErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension AthenaErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
