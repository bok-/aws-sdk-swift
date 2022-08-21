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

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Evidently {
    ///  Returns configuration details about all the experiments in the specified project.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listExperimentsPaginator(
        _ input: ListExperimentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListExperimentsRequest, ListExperimentsResponse> {
        return .init(
            input: input,
            command: listExperiments,
            inputKey: \ListExperimentsRequest.nextToken,
            outputKey: \ListExperimentsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns configuration details about all the features in the specified project.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listFeaturesPaginator(
        _ input: ListFeaturesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListFeaturesRequest, ListFeaturesResponse> {
        return .init(
            input: input,
            command: listFeatures,
            inputKey: \ListFeaturesRequest.nextToken,
            outputKey: \ListFeaturesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns configuration details about all the launches in the specified project.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listLaunchesPaginator(
        _ input: ListLaunchesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListLaunchesRequest, ListLaunchesResponse> {
        return .init(
            input: input,
            command: listLaunches,
            inputKey: \ListLaunchesRequest.nextToken,
            outputKey: \ListLaunchesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns configuration details about all the projects in the current Region in your account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listProjectsPaginator(
        _ input: ListProjectsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListProjectsRequest, ListProjectsResponse> {
        return .init(
            input: input,
            command: listProjects,
            inputKey: \ListProjectsRequest.nextToken,
            outputKey: \ListProjectsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Use this operation to find which experiments or launches are using a specified segment.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSegmentReferencesPaginator(
        _ input: ListSegmentReferencesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSegmentReferencesRequest, ListSegmentReferencesResponse> {
        return .init(
            input: input,
            command: listSegmentReferences,
            inputKey: \ListSegmentReferencesRequest.nextToken,
            outputKey: \ListSegmentReferencesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of audience segments that you have created in your account in this Region.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSegmentsPaginator(
        _ input: ListSegmentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSegmentsRequest, ListSegmentsResponse> {
        return .init(
            input: input,
            command: listSegments,
            inputKey: \ListSegmentsRequest.nextToken,
            outputKey: \ListSegmentsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
