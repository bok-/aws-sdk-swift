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

import Foundation
import SotoCore

extension SageMakerFeatureStoreRuntime {
    // MARK: Enums

    // MARK: Shapes

    public struct BatchGetRecordError: AWSDecodableShape {
        /// The error code of an error that has occured when attempting to retrieve a batch of Records. For more information on errors, see  Errors.
        public let errorCode: String
        /// The error message of an error that has occured when attempting to retrieve a record in the batch.
        public let errorMessage: String
        /// The name of the feature group that the record belongs to.
        public let featureGroupName: String
        /// The value for the RecordIdentifier in string format of a Record from a FeatureGroup that is causing  an error when attempting to be retrieved.
        public let recordIdentifierValueAsString: String

        public init(errorCode: String, errorMessage: String, featureGroupName: String, recordIdentifierValueAsString: String) {
            self.errorCode = errorCode
            self.errorMessage = errorMessage
            self.featureGroupName = featureGroupName
            self.recordIdentifierValueAsString = recordIdentifierValueAsString
        }

        private enum CodingKeys: String, CodingKey {
            case errorCode = "ErrorCode"
            case errorMessage = "ErrorMessage"
            case featureGroupName = "FeatureGroupName"
            case recordIdentifierValueAsString = "RecordIdentifierValueAsString"
        }
    }

    public struct BatchGetRecordIdentifier: AWSEncodableShape & AWSDecodableShape {
        /// A FeatureGroupName containing Records you are retrieving in a batch.
        public let featureGroupName: String
        /// List of names of Features to be retrieved. If not specified, the latest value for all the Features are returned.
        public let featureNames: [String]?
        /// The value for a list of record identifiers in string format.
        public let recordIdentifiersValueAsString: [String]

        public init(featureGroupName: String, featureNames: [String]? = nil, recordIdentifiersValueAsString: [String]) {
            self.featureGroupName = featureGroupName
            self.featureNames = featureNames
            self.recordIdentifiersValueAsString = recordIdentifiersValueAsString
        }

        public func validate(name: String) throws {
            try self.validate(self.featureGroupName, name: "featureGroupName", parent: name, max: 64)
            try self.validate(self.featureGroupName, name: "featureGroupName", parent: name, min: 1)
            try self.validate(self.featureGroupName, name: "featureGroupName", parent: name, pattern: "^[a-zA-Z0-9](-*[a-zA-Z0-9])*$")
            try self.featureNames?.forEach {
                try validate($0, name: "featureNames[]", parent: name, max: 64)
                try validate($0, name: "featureNames[]", parent: name, min: 1)
                try validate($0, name: "featureNames[]", parent: name, pattern: "^[a-zA-Z0-9]([-_]*[a-zA-Z0-9])*$")
            }
            try self.validate(self.featureNames, name: "featureNames", parent: name, min: 1)
            try self.recordIdentifiersValueAsString.forEach {
                try validate($0, name: "recordIdentifiersValueAsString[]", parent: name, max: 358_400)
                try validate($0, name: "recordIdentifiersValueAsString[]", parent: name, pattern: ".*")
            }
            try self.validate(self.recordIdentifiersValueAsString, name: "recordIdentifiersValueAsString", parent: name, max: 100)
            try self.validate(self.recordIdentifiersValueAsString, name: "recordIdentifiersValueAsString", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case featureGroupName = "FeatureGroupName"
            case featureNames = "FeatureNames"
            case recordIdentifiersValueAsString = "RecordIdentifiersValueAsString"
        }
    }

    public struct BatchGetRecordRequest: AWSEncodableShape {
        /// A list of FeatureGroup names, with their corresponding RecordIdentifier value, and Feature name that have been requested to be retrieved in batch.
        public let identifiers: [BatchGetRecordIdentifier]

        public init(identifiers: [BatchGetRecordIdentifier]) {
            self.identifiers = identifiers
        }

        public func validate(name: String) throws {
            try self.identifiers.forEach {
                try $0.validate(name: "\(name).identifiers[]")
            }
            try self.validate(self.identifiers, name: "identifiers", parent: name, max: 10)
            try self.validate(self.identifiers, name: "identifiers", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case identifiers = "Identifiers"
        }
    }

    public struct BatchGetRecordResponse: AWSDecodableShape {
        /// A list of errors that have occured when retrieving a batch of Records.
        public let errors: [BatchGetRecordError]
        /// A list of Records you requested to be retrieved in batch.
        public let records: [BatchGetRecordResultDetail]
        /// A unprocessed list of FeatureGroup names, with their corresponding RecordIdentifier value,  and Feature name.
        public let unprocessedIdentifiers: [BatchGetRecordIdentifier]

        public init(errors: [BatchGetRecordError], records: [BatchGetRecordResultDetail], unprocessedIdentifiers: [BatchGetRecordIdentifier]) {
            self.errors = errors
            self.records = records
            self.unprocessedIdentifiers = unprocessedIdentifiers
        }

        private enum CodingKeys: String, CodingKey {
            case errors = "Errors"
            case records = "Records"
            case unprocessedIdentifiers = "UnprocessedIdentifiers"
        }
    }

    public struct BatchGetRecordResultDetail: AWSDecodableShape {
        /// The FeatureGroupName containing Records you retrieved in a batch.
        public let featureGroupName: String
        /// The Record retrieved.
        public let record: [FeatureValue]
        /// The value of the record identifer in string format.
        public let recordIdentifierValueAsString: String

        public init(featureGroupName: String, record: [FeatureValue], recordIdentifierValueAsString: String) {
            self.featureGroupName = featureGroupName
            self.record = record
            self.recordIdentifierValueAsString = recordIdentifierValueAsString
        }

        private enum CodingKeys: String, CodingKey {
            case featureGroupName = "FeatureGroupName"
            case record = "Record"
            case recordIdentifierValueAsString = "RecordIdentifierValueAsString"
        }
    }

    public struct DeleteRecordRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "eventTime", location: .querystring("EventTime")),
            AWSMemberEncoding(label: "featureGroupName", location: .uri("FeatureGroupName")),
            AWSMemberEncoding(label: "recordIdentifierValueAsString", location: .querystring("RecordIdentifierValueAsString"))
        ]

        /// Timestamp indicating when the deletion event occurred. EventTime can be used to query data at a certain point in time.
        public let eventTime: String
        /// The name of the feature group to delete the record from.
        public let featureGroupName: String
        /// The value for the RecordIdentifier that uniquely identifies the record, in string format.
        public let recordIdentifierValueAsString: String

        public init(eventTime: String, featureGroupName: String, recordIdentifierValueAsString: String) {
            self.eventTime = eventTime
            self.featureGroupName = featureGroupName
            self.recordIdentifierValueAsString = recordIdentifierValueAsString
        }

        public func validate(name: String) throws {
            try self.validate(self.eventTime, name: "eventTime", parent: name, max: 358_400)
            try self.validate(self.eventTime, name: "eventTime", parent: name, pattern: ".*")
            try self.validate(self.featureGroupName, name: "featureGroupName", parent: name, max: 64)
            try self.validate(self.featureGroupName, name: "featureGroupName", parent: name, min: 1)
            try self.validate(self.featureGroupName, name: "featureGroupName", parent: name, pattern: "^[a-zA-Z0-9](-*[a-zA-Z0-9])*$")
            try self.validate(self.recordIdentifierValueAsString, name: "recordIdentifierValueAsString", parent: name, max: 358_400)
            try self.validate(self.recordIdentifierValueAsString, name: "recordIdentifierValueAsString", parent: name, pattern: ".*")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct FeatureValue: AWSEncodableShape & AWSDecodableShape {
        /// The name of a feature that a feature value corresponds to.
        public let featureName: String
        /// The value associated with a feature, in string format. Note that features types can be String, Integral, or Fractional. This value represents all three types as a string.
        public let valueAsString: String

        public init(featureName: String, valueAsString: String) {
            self.featureName = featureName
            self.valueAsString = valueAsString
        }

        public func validate(name: String) throws {
            try self.validate(self.featureName, name: "featureName", parent: name, max: 64)
            try self.validate(self.featureName, name: "featureName", parent: name, min: 1)
            try self.validate(self.featureName, name: "featureName", parent: name, pattern: "^[a-zA-Z0-9]([-_]*[a-zA-Z0-9])*$")
            try self.validate(self.valueAsString, name: "valueAsString", parent: name, max: 358_400)
            try self.validate(self.valueAsString, name: "valueAsString", parent: name, pattern: ".*")
        }

        private enum CodingKeys: String, CodingKey {
            case featureName = "FeatureName"
            case valueAsString = "ValueAsString"
        }
    }

    public struct GetRecordRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "featureGroupName", location: .uri("FeatureGroupName")),
            AWSMemberEncoding(label: "featureNames", location: .querystring("FeatureName")),
            AWSMemberEncoding(label: "recordIdentifierValueAsString", location: .querystring("RecordIdentifierValueAsString"))
        ]

        /// The name of the feature group in which you want to put the records.
        public let featureGroupName: String
        /// List of names of Features to be retrieved. If not specified, the latest value for all the Features are returned.
        public let featureNames: [String]?
        /// The value that corresponds to RecordIdentifier type and uniquely identifies the record in the FeatureGroup.
        public let recordIdentifierValueAsString: String

        public init(featureGroupName: String, featureNames: [String]? = nil, recordIdentifierValueAsString: String) {
            self.featureGroupName = featureGroupName
            self.featureNames = featureNames
            self.recordIdentifierValueAsString = recordIdentifierValueAsString
        }

        public func validate(name: String) throws {
            try self.validate(self.featureGroupName, name: "featureGroupName", parent: name, max: 64)
            try self.validate(self.featureGroupName, name: "featureGroupName", parent: name, min: 1)
            try self.validate(self.featureGroupName, name: "featureGroupName", parent: name, pattern: "^[a-zA-Z0-9](-*[a-zA-Z0-9])*$")
            try self.featureNames?.forEach {
                try validate($0, name: "featureNames[]", parent: name, max: 64)
                try validate($0, name: "featureNames[]", parent: name, min: 1)
                try validate($0, name: "featureNames[]", parent: name, pattern: "^[a-zA-Z0-9]([-_]*[a-zA-Z0-9])*$")
            }
            try self.validate(self.featureNames, name: "featureNames", parent: name, min: 1)
            try self.validate(self.recordIdentifierValueAsString, name: "recordIdentifierValueAsString", parent: name, max: 358_400)
            try self.validate(self.recordIdentifierValueAsString, name: "recordIdentifierValueAsString", parent: name, pattern: ".*")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetRecordResponse: AWSDecodableShape {
        /// The record you requested. A list of FeatureValues.
        public let record: [FeatureValue]?

        public init(record: [FeatureValue]? = nil) {
            self.record = record
        }

        private enum CodingKeys: String, CodingKey {
            case record = "Record"
        }
    }

    public struct PutRecordRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "featureGroupName", location: .uri("FeatureGroupName"))
        ]

        /// The name of the feature group that you want to insert the record into.
        public let featureGroupName: String
        /// List of FeatureValues to be inserted. This will be a full over-write. If you only want to update few of the feature values, do the following:   Use GetRecord to retrieve the latest record.   Update the record returned from GetRecord.    Use PutRecord to update feature values.
        public let record: [FeatureValue]

        public init(featureGroupName: String, record: [FeatureValue]) {
            self.featureGroupName = featureGroupName
            self.record = record
        }

        public func validate(name: String) throws {
            try self.validate(self.featureGroupName, name: "featureGroupName", parent: name, max: 64)
            try self.validate(self.featureGroupName, name: "featureGroupName", parent: name, min: 1)
            try self.validate(self.featureGroupName, name: "featureGroupName", parent: name, pattern: "^[a-zA-Z0-9](-*[a-zA-Z0-9])*$")
            try self.record.forEach {
                try $0.validate(name: "\(name).record[]")
            }
            try self.validate(self.record, name: "record", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case record = "Record"
        }
    }
}

// MARK: - Errors

/// Error enum for SageMakerFeatureStoreRuntime
public struct SageMakerFeatureStoreRuntimeErrorType: AWSErrorType {
    enum Code: String {
        case accessForbidden = "AccessForbidden"
        case internalFailure = "InternalFailure"
        case resourceNotFound = "ResourceNotFound"
        case serviceUnavailable = "ServiceUnavailable"
        case validationError = "ValidationError"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize SageMakerFeatureStoreRuntime
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

    /// You do not have permission to perform an action.
    public static var accessForbidden: Self { .init(.accessForbidden) }
    /// An internal failure occurred. Try your request again. If the problem  persists, contact AWS customer support.
    public static var internalFailure: Self { .init(.internalFailure) }
    /// A resource that is required to perform an action was not found.
    public static var resourceNotFound: Self { .init(.resourceNotFound) }
    /// The service is currently unavailable.
    public static var serviceUnavailable: Self { .init(.serviceUnavailable) }
    /// There was an error validating your request.
    public static var validationError: Self { .init(.validationError) }
}

extension SageMakerFeatureStoreRuntimeErrorType: Equatable {
    public static func == (lhs: SageMakerFeatureStoreRuntimeErrorType, rhs: SageMakerFeatureStoreRuntimeErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension SageMakerFeatureStoreRuntimeErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
