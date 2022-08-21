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

#if compiler(>=5.5.2) && canImport(_Concurrency)

import SotoCore

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension HealthLake {
    // MARK: Async API Calls

    /// Creates a Data Store that can ingest and export FHIR formatted data.
    public func createFHIRDatastore(_ input: CreateFHIRDatastoreRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFHIRDatastoreResponse {
        return try await self.client.execute(operation: "CreateFHIRDatastore", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a Data Store.
    public func deleteFHIRDatastore(_ input: DeleteFHIRDatastoreRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteFHIRDatastoreResponse {
        return try await self.client.execute(operation: "DeleteFHIRDatastore", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the properties associated with the FHIR Data Store, including the Data Store ID, Data Store ARN, Data Store name, Data Store status, created at, Data Store type version, and Data Store endpoint.
    public func describeFHIRDatastore(_ input: DescribeFHIRDatastoreRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFHIRDatastoreResponse {
        return try await self.client.execute(operation: "DescribeFHIRDatastore", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Displays the properties of a FHIR export job, including the ID, ARN, name, and the status of the job.
    public func describeFHIRExportJob(_ input: DescribeFHIRExportJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFHIRExportJobResponse {
        return try await self.client.execute(operation: "DescribeFHIRExportJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Displays the properties of a FHIR import job, including the ID, ARN, name, and the status of the job.
    public func describeFHIRImportJob(_ input: DescribeFHIRImportJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFHIRImportJobResponse {
        return try await self.client.execute(operation: "DescribeFHIRImportJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all FHIR Data Stores that are in the user’s account, regardless of Data Store status.
    public func listFHIRDatastores(_ input: ListFHIRDatastoresRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListFHIRDatastoresResponse {
        return try await self.client.execute(operation: "ListFHIRDatastores", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Lists all FHIR export jobs associated with an account and their statuses.
    public func listFHIRExportJobs(_ input: ListFHIRExportJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListFHIRExportJobsResponse {
        return try await self.client.execute(operation: "ListFHIRExportJobs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Lists all FHIR import jobs associated with an account and their statuses.
    public func listFHIRImportJobs(_ input: ListFHIRImportJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListFHIRImportJobsResponse {
        return try await self.client.execute(operation: "ListFHIRImportJobs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of all existing tags associated with a Data Store.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Begins a FHIR export job.
    public func startFHIRExportJob(_ input: StartFHIRExportJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartFHIRExportJobResponse {
        return try await self.client.execute(operation: "StartFHIRExportJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Begins a FHIR Import job.
    public func startFHIRImportJob(_ input: StartFHIRImportJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartFHIRImportJobResponse {
        return try await self.client.execute(operation: "StartFHIRImportJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Adds a user specifed key and value tag to a Data Store.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Removes tags from a Data Store.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
