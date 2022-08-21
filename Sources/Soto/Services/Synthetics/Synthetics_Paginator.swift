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

extension Synthetics {
    ///  This operation returns a list of the canaries in your account, along with full details about each canary. This operation supports resource-level authorization using an IAM policy and  the Names parameter. If you specify the Names parameter, the operation is successful only if you have authorization to view all the canaries that you specify in your request. If you do not have permission to view any of  the canaries, the request fails with a 403 response. You are required to use the Names parameter if you are logged on to a user or role that has an  IAM policy that restricts which canaries that you are allowed to view. For more information,  see  Limiting a user to viewing specific canaries.
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
    public func describeCanariesPaginator<Result>(
        _ input: DescribeCanariesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeCanariesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeCanaries,
            inputKey: \DescribeCanariesRequest.nextToken,
            outputKey: \DescribeCanariesResponse.nextToken,
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
    public func describeCanariesPaginator(
        _ input: DescribeCanariesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeCanariesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeCanaries,
            inputKey: \DescribeCanariesRequest.nextToken,
            outputKey: \DescribeCanariesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Use this operation to see information from the most recent run of each canary that you have created.  This operation supports resource-level authorization using an IAM policy and  the Names parameter. If you specify the Names parameter, the operation is successful only if you have authorization to view all the canaries that you specify in your request. If you do not have permission to view any of  the canaries, the request fails with a 403 response. You are required to use the Names parameter if you are logged on to a user or role that has an  IAM policy that restricts which canaries that you are allowed to view. For more information,  see  Limiting a user to viewing specific canaries.
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
    public func describeCanariesLastRunPaginator<Result>(
        _ input: DescribeCanariesLastRunRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeCanariesLastRunResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeCanariesLastRun,
            inputKey: \DescribeCanariesLastRunRequest.nextToken,
            outputKey: \DescribeCanariesLastRunResponse.nextToken,
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
    public func describeCanariesLastRunPaginator(
        _ input: DescribeCanariesLastRunRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeCanariesLastRunResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeCanariesLastRun,
            inputKey: \DescribeCanariesLastRunRequest.nextToken,
            outputKey: \DescribeCanariesLastRunResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of Synthetics canary runtime versions. For more information,  see  Canary Runtime Versions.
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
    public func describeRuntimeVersionsPaginator<Result>(
        _ input: DescribeRuntimeVersionsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeRuntimeVersionsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeRuntimeVersions,
            inputKey: \DescribeRuntimeVersionsRequest.nextToken,
            outputKey: \DescribeRuntimeVersionsResponse.nextToken,
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
    public func describeRuntimeVersionsPaginator(
        _ input: DescribeRuntimeVersionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeRuntimeVersionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeRuntimeVersions,
            inputKey: \DescribeRuntimeVersionsRequest.nextToken,
            outputKey: \DescribeRuntimeVersionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves a list of runs for a specified canary.
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
    public func getCanaryRunsPaginator<Result>(
        _ input: GetCanaryRunsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetCanaryRunsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getCanaryRuns,
            inputKey: \GetCanaryRunsRequest.nextToken,
            outputKey: \GetCanaryRunsResponse.nextToken,
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
    public func getCanaryRunsPaginator(
        _ input: GetCanaryRunsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetCanaryRunsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getCanaryRuns,
            inputKey: \GetCanaryRunsRequest.nextToken,
            outputKey: \GetCanaryRunsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of the groups that the specified canary is associated with. The canary that you specify must be in the current Region.
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
    public func listAssociatedGroupsPaginator<Result>(
        _ input: ListAssociatedGroupsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListAssociatedGroupsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listAssociatedGroups,
            inputKey: \ListAssociatedGroupsRequest.nextToken,
            outputKey: \ListAssociatedGroupsResponse.nextToken,
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
    public func listAssociatedGroupsPaginator(
        _ input: ListAssociatedGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListAssociatedGroupsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAssociatedGroups,
            inputKey: \ListAssociatedGroupsRequest.nextToken,
            outputKey: \ListAssociatedGroupsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  This operation returns a list of the ARNs of the canaries that are associated with the specified group.
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
    public func listGroupResourcesPaginator<Result>(
        _ input: ListGroupResourcesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListGroupResourcesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listGroupResources,
            inputKey: \ListGroupResourcesRequest.nextToken,
            outputKey: \ListGroupResourcesResponse.nextToken,
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
    public func listGroupResourcesPaginator(
        _ input: ListGroupResourcesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListGroupResourcesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listGroupResources,
            inputKey: \ListGroupResourcesRequest.nextToken,
            outputKey: \ListGroupResourcesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of all groups in the account, displaying their names, unique IDs, and ARNs. The groups from all Regions are returned.
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
    public func listGroupsPaginator<Result>(
        _ input: ListGroupsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListGroupsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listGroups,
            inputKey: \ListGroupsRequest.nextToken,
            outputKey: \ListGroupsResponse.nextToken,
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
    public func listGroupsPaginator(
        _ input: ListGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListGroupsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listGroups,
            inputKey: \ListGroupsRequest.nextToken,
            outputKey: \ListGroupsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension Synthetics.DescribeCanariesLastRunRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Synthetics.DescribeCanariesLastRunRequest {
        return .init(
            maxResults: self.maxResults,
            names: self.names,
            nextToken: token
        )
    }
}

extension Synthetics.DescribeCanariesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Synthetics.DescribeCanariesRequest {
        return .init(
            maxResults: self.maxResults,
            names: self.names,
            nextToken: token
        )
    }
}

extension Synthetics.DescribeRuntimeVersionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Synthetics.DescribeRuntimeVersionsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Synthetics.GetCanaryRunsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Synthetics.GetCanaryRunsRequest {
        return .init(
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token
        )
    }
}

extension Synthetics.ListAssociatedGroupsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Synthetics.ListAssociatedGroupsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceArn: self.resourceArn
        )
    }
}

extension Synthetics.ListGroupResourcesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Synthetics.ListGroupResourcesRequest {
        return .init(
            groupIdentifier: self.groupIdentifier,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Synthetics.ListGroupsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Synthetics.ListGroupsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
