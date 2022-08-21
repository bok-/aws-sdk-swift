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

extension Shield {
    ///  Returns all ongoing DDoS attacks or all DDoS attacks during a specified time period.
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
    public func listAttacksPaginator<Result>(
        _ input: ListAttacksRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListAttacksResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listAttacks,
            inputKey: \ListAttacksRequest.nextToken,
            outputKey: \ListAttacksResponse.nextToken,
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
    public func listAttacksPaginator(
        _ input: ListAttacksRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListAttacksResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAttacks,
            inputKey: \ListAttacksRequest.nextToken,
            outputKey: \ListAttacksResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves ProtectionGroup objects for the account. You can retrieve all protection groups or you can provide  filtering criteria and retrieve just the subset of protection groups that match the criteria.
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
    public func listProtectionGroupsPaginator<Result>(
        _ input: ListProtectionGroupsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListProtectionGroupsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listProtectionGroups,
            inputKey: \ListProtectionGroupsRequest.nextToken,
            outputKey: \ListProtectionGroupsResponse.nextToken,
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
    public func listProtectionGroupsPaginator(
        _ input: ListProtectionGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListProtectionGroupsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listProtectionGroups,
            inputKey: \ListProtectionGroupsRequest.nextToken,
            outputKey: \ListProtectionGroupsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves Protection objects for the account. You can retrieve all protections or you can provide  filtering criteria and retrieve just the subset of protections that match the criteria.
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
    public func listProtectionsPaginator<Result>(
        _ input: ListProtectionsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListProtectionsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listProtections,
            inputKey: \ListProtectionsRequest.nextToken,
            outputKey: \ListProtectionsResponse.nextToken,
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
    public func listProtectionsPaginator(
        _ input: ListProtectionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListProtectionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listProtections,
            inputKey: \ListProtectionsRequest.nextToken,
            outputKey: \ListProtectionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves the resources that are included in the protection group.
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
    public func listResourcesInProtectionGroupPaginator<Result>(
        _ input: ListResourcesInProtectionGroupRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListResourcesInProtectionGroupResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listResourcesInProtectionGroup,
            inputKey: \ListResourcesInProtectionGroupRequest.nextToken,
            outputKey: \ListResourcesInProtectionGroupResponse.nextToken,
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
    public func listResourcesInProtectionGroupPaginator(
        _ input: ListResourcesInProtectionGroupRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListResourcesInProtectionGroupResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listResourcesInProtectionGroup,
            inputKey: \ListResourcesInProtectionGroupRequest.nextToken,
            outputKey: \ListResourcesInProtectionGroupResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension Shield.ListAttacksRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Shield.ListAttacksRequest {
        return .init(
            endTime: self.endTime,
            maxResults: self.maxResults,
            nextToken: token,
            resourceArns: self.resourceArns,
            startTime: self.startTime
        )
    }
}

extension Shield.ListProtectionGroupsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Shield.ListProtectionGroupsRequest {
        return .init(
            inclusionFilters: self.inclusionFilters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Shield.ListProtectionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Shield.ListProtectionsRequest {
        return .init(
            inclusionFilters: self.inclusionFilters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Shield.ListResourcesInProtectionGroupRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Shield.ListResourcesInProtectionGroupRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            protectionGroupId: self.protectionGroupId
        )
    }
}
