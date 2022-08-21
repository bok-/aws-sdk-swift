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

// MARK: Paginators

extension HealthLake {
    ///  Lists all FHIR Data Stores that are in the user’s account, regardless of Data Store status.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listFHIRDatastoresPaginator<Result>(
        _ input: ListFHIRDatastoresRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListFHIRDatastoresResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listFHIRDatastores,
            inputKey: \ListFHIRDatastoresRequest.nextToken,
            outputKey: \ListFHIRDatastoresResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listFHIRDatastoresPaginator(
        _ input: ListFHIRDatastoresRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListFHIRDatastoresResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listFHIRDatastores,
            inputKey: \ListFHIRDatastoresRequest.nextToken,
            outputKey: \ListFHIRDatastoresResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   Lists all FHIR export jobs associated with an account and their statuses.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listFHIRExportJobsPaginator<Result>(
        _ input: ListFHIRExportJobsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListFHIRExportJobsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listFHIRExportJobs,
            inputKey: \ListFHIRExportJobsRequest.nextToken,
            outputKey: \ListFHIRExportJobsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listFHIRExportJobsPaginator(
        _ input: ListFHIRExportJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListFHIRExportJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listFHIRExportJobs,
            inputKey: \ListFHIRExportJobsRequest.nextToken,
            outputKey: \ListFHIRExportJobsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   Lists all FHIR import jobs associated with an account and their statuses.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listFHIRImportJobsPaginator<Result>(
        _ input: ListFHIRImportJobsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListFHIRImportJobsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listFHIRImportJobs,
            inputKey: \ListFHIRImportJobsRequest.nextToken,
            outputKey: \ListFHIRImportJobsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listFHIRImportJobsPaginator(
        _ input: ListFHIRImportJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListFHIRImportJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listFHIRImportJobs,
            inputKey: \ListFHIRImportJobsRequest.nextToken,
            outputKey: \ListFHIRImportJobsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension HealthLake.ListFHIRDatastoresRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> HealthLake.ListFHIRDatastoresRequest {
        return .init(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension HealthLake.ListFHIRExportJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> HealthLake.ListFHIRExportJobsRequest {
        return .init(
            datastoreId: self.datastoreId,
            jobName: self.jobName,
            jobStatus: self.jobStatus,
            maxResults: self.maxResults,
            nextToken: token,
            submittedAfter: self.submittedAfter,
            submittedBefore: self.submittedBefore
        )
    }
}

extension HealthLake.ListFHIRImportJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> HealthLake.ListFHIRImportJobsRequest {
        return .init(
            datastoreId: self.datastoreId,
            jobName: self.jobName,
            jobStatus: self.jobStatus,
            maxResults: self.maxResults,
            nextToken: token,
            submittedAfter: self.submittedAfter,
            submittedBefore: self.submittedBefore
        )
    }
}
