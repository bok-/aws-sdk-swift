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
extension Synthetics {
    ///  This operation returns a list of the canaries in your account, along with full details about each canary. This operation supports resource-level authorization using an IAM policy and  the Names parameter. If you specify the Names parameter, the operation is successful only if you have authorization to view all the canaries that you specify in your request. If you do not have permission to view any of  the canaries, the request fails with a 403 response. You are required to use the Names parameter if you are logged on to a user or role that has an  IAM policy that restricts which canaries that you are allowed to view. For more information,  see  Limiting a user to viewing specific canaries.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeCanariesPaginator(
        _ input: DescribeCanariesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeCanariesRequest, DescribeCanariesResponse> {
        return .init(
            input: input,
            command: describeCanaries,
            inputKey: \DescribeCanariesRequest.nextToken,
            outputKey: \DescribeCanariesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Use this operation to see information from the most recent run of each canary that you have created.  This operation supports resource-level authorization using an IAM policy and  the Names parameter. If you specify the Names parameter, the operation is successful only if you have authorization to view all the canaries that you specify in your request. If you do not have permission to view any of  the canaries, the request fails with a 403 response. You are required to use the Names parameter if you are logged on to a user or role that has an  IAM policy that restricts which canaries that you are allowed to view. For more information,  see  Limiting a user to viewing specific canaries.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeCanariesLastRunPaginator(
        _ input: DescribeCanariesLastRunRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeCanariesLastRunRequest, DescribeCanariesLastRunResponse> {
        return .init(
            input: input,
            command: describeCanariesLastRun,
            inputKey: \DescribeCanariesLastRunRequest.nextToken,
            outputKey: \DescribeCanariesLastRunResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of Synthetics canary runtime versions. For more information,  see  Canary Runtime Versions.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeRuntimeVersionsPaginator(
        _ input: DescribeRuntimeVersionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeRuntimeVersionsRequest, DescribeRuntimeVersionsResponse> {
        return .init(
            input: input,
            command: describeRuntimeVersions,
            inputKey: \DescribeRuntimeVersionsRequest.nextToken,
            outputKey: \DescribeRuntimeVersionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a list of runs for a specified canary.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getCanaryRunsPaginator(
        _ input: GetCanaryRunsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetCanaryRunsRequest, GetCanaryRunsResponse> {
        return .init(
            input: input,
            command: getCanaryRuns,
            inputKey: \GetCanaryRunsRequest.nextToken,
            outputKey: \GetCanaryRunsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of the groups that the specified canary is associated with. The canary that you specify must be in the current Region.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAssociatedGroupsPaginator(
        _ input: ListAssociatedGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAssociatedGroupsRequest, ListAssociatedGroupsResponse> {
        return .init(
            input: input,
            command: listAssociatedGroups,
            inputKey: \ListAssociatedGroupsRequest.nextToken,
            outputKey: \ListAssociatedGroupsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  This operation returns a list of the ARNs of the canaries that are associated with the specified group.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listGroupResourcesPaginator(
        _ input: ListGroupResourcesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListGroupResourcesRequest, ListGroupResourcesResponse> {
        return .init(
            input: input,
            command: listGroupResources,
            inputKey: \ListGroupResourcesRequest.nextToken,
            outputKey: \ListGroupResourcesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of all groups in the account, displaying their names, unique IDs, and ARNs. The groups from all Regions are returned.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listGroupsPaginator(
        _ input: ListGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListGroupsRequest, ListGroupsResponse> {
        return .init(
            input: input,
            command: listGroups,
            inputKey: \ListGroupsRequest.nextToken,
            outputKey: \ListGroupsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
