//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
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

#if compiler(>=5.5) && canImport(_Concurrency)

import SotoCore

// MARK: Paginators

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension Batch {
    ///  Describes one or more of your compute environments. If you're using an unmanaged compute environment, you can use the DescribeComputeEnvironment operation to determine the ecsClusterArn that you should launch your Amazon ECS container instances into.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeComputeEnvironmentsPaginator(
        _ input: DescribeComputeEnvironmentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeComputeEnvironmentsRequest, DescribeComputeEnvironmentsResponse> {
        return .init(
            input: input,
            command: describeComputeEnvironments,
            inputKey: \DescribeComputeEnvironmentsRequest.nextToken,
            outputKey: \DescribeComputeEnvironmentsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Describes a list of job definitions. You can specify a status (such as ACTIVE) to only return job definitions that match that status.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeJobDefinitionsPaginator(
        _ input: DescribeJobDefinitionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeJobDefinitionsRequest, DescribeJobDefinitionsResponse> {
        return .init(
            input: input,
            command: describeJobDefinitions,
            inputKey: \DescribeJobDefinitionsRequest.nextToken,
            outputKey: \DescribeJobDefinitionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Describes one or more of your job queues.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeJobQueuesPaginator(
        _ input: DescribeJobQueuesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeJobQueuesRequest, DescribeJobQueuesResponse> {
        return .init(
            input: input,
            command: describeJobQueues,
            inputKey: \DescribeJobQueuesRequest.nextToken,
            outputKey: \DescribeJobQueuesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of Batch jobs. You must specify only one of the following items:   A job queue ID to return a list of jobs in that job queue   A multi-node parallel job ID to return a list of nodes for that job   An array job ID to return a list of the children for that job   You can filter the results by job status with the jobStatus parameter. If you don't specify a status, only RUNNING jobs are returned.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listJobsPaginator(
        _ input: ListJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListJobsRequest, ListJobsResponse> {
        return .init(
            input: input,
            command: listJobs,
            inputKey: \ListJobsRequest.nextToken,
            outputKey: \ListJobsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)