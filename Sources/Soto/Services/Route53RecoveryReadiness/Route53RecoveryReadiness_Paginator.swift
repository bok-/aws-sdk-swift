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

import SotoCore

// MARK: Paginators

extension Route53RecoveryReadiness {
    ///  Returns information about readiness of a Cell.
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
    public func getCellReadinessSummaryPaginator<Result>(
        _ input: GetCellReadinessSummaryRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetCellReadinessSummaryResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getCellReadinessSummary,
            inputKey: \GetCellReadinessSummaryRequest.nextToken,
            outputKey: \GetCellReadinessSummaryResponse.nextToken,
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
    public func getCellReadinessSummaryPaginator(
        _ input: GetCellReadinessSummaryRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetCellReadinessSummaryResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getCellReadinessSummary,
            inputKey: \GetCellReadinessSummaryRequest.nextToken,
            outputKey: \GetCellReadinessSummaryResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns detailed information about the status of an individual resource within a Readiness Check's Resource Set.
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
    public func getReadinessCheckResourceStatusPaginator<Result>(
        _ input: GetReadinessCheckResourceStatusRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetReadinessCheckResourceStatusResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getReadinessCheckResourceStatus,
            inputKey: \GetReadinessCheckResourceStatusRequest.nextToken,
            outputKey: \GetReadinessCheckResourceStatusResponse.nextToken,
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
    public func getReadinessCheckResourceStatusPaginator(
        _ input: GetReadinessCheckResourceStatusRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetReadinessCheckResourceStatusResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getReadinessCheckResourceStatus,
            inputKey: \GetReadinessCheckResourceStatusRequest.nextToken,
            outputKey: \GetReadinessCheckResourceStatusResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns information about the status of a Readiness Check.
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
    public func getReadinessCheckStatusPaginator<Result>(
        _ input: GetReadinessCheckStatusRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetReadinessCheckStatusResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getReadinessCheckStatus,
            inputKey: \GetReadinessCheckStatusRequest.nextToken,
            outputKey: \GetReadinessCheckStatusResponse.nextToken,
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
    public func getReadinessCheckStatusPaginator(
        _ input: GetReadinessCheckStatusRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetReadinessCheckStatusResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getReadinessCheckStatus,
            inputKey: \GetReadinessCheckStatusRequest.nextToken,
            outputKey: \GetReadinessCheckStatusResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns information about a Recovery Group.
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
    public func getRecoveryGroupReadinessSummaryPaginator<Result>(
        _ input: GetRecoveryGroupReadinessSummaryRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetRecoveryGroupReadinessSummaryResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getRecoveryGroupReadinessSummary,
            inputKey: \GetRecoveryGroupReadinessSummaryRequest.nextToken,
            outputKey: \GetRecoveryGroupReadinessSummaryResponse.nextToken,
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
    public func getRecoveryGroupReadinessSummaryPaginator(
        _ input: GetRecoveryGroupReadinessSummaryRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetRecoveryGroupReadinessSummaryResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getRecoveryGroupReadinessSummary,
            inputKey: \GetRecoveryGroupReadinessSummaryRequest.nextToken,
            outputKey: \GetRecoveryGroupReadinessSummaryResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a collection of Cells.
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
    public func listCellsPaginator<Result>(
        _ input: ListCellsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListCellsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listCells,
            inputKey: \ListCellsRequest.nextToken,
            outputKey: \ListCellsResponse.nextToken,
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
    public func listCellsPaginator(
        _ input: ListCellsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListCellsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listCells,
            inputKey: \ListCellsRequest.nextToken,
            outputKey: \ListCellsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a collection of cross account readiness authorizations.
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
    public func listCrossAccountAuthorizationsPaginator<Result>(
        _ input: ListCrossAccountAuthorizationsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListCrossAccountAuthorizationsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listCrossAccountAuthorizations,
            inputKey: \ListCrossAccountAuthorizationsRequest.nextToken,
            outputKey: \ListCrossAccountAuthorizationsResponse.nextToken,
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
    public func listCrossAccountAuthorizationsPaginator(
        _ input: ListCrossAccountAuthorizationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListCrossAccountAuthorizationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listCrossAccountAuthorizations,
            inputKey: \ListCrossAccountAuthorizationsRequest.nextToken,
            outputKey: \ListCrossAccountAuthorizationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a collection of Readiness Checks.
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
    public func listReadinessChecksPaginator<Result>(
        _ input: ListReadinessChecksRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListReadinessChecksResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listReadinessChecks,
            inputKey: \ListReadinessChecksRequest.nextToken,
            outputKey: \ListReadinessChecksResponse.nextToken,
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
    public func listReadinessChecksPaginator(
        _ input: ListReadinessChecksRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListReadinessChecksResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listReadinessChecks,
            inputKey: \ListReadinessChecksRequest.nextToken,
            outputKey: \ListReadinessChecksResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a collection of Recovery Groups.
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
    public func listRecoveryGroupsPaginator<Result>(
        _ input: ListRecoveryGroupsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListRecoveryGroupsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listRecoveryGroups,
            inputKey: \ListRecoveryGroupsRequest.nextToken,
            outputKey: \ListRecoveryGroupsResponse.nextToken,
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
    public func listRecoveryGroupsPaginator(
        _ input: ListRecoveryGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListRecoveryGroupsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listRecoveryGroups,
            inputKey: \ListRecoveryGroupsRequest.nextToken,
            outputKey: \ListRecoveryGroupsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a collection of Resource Sets.
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
    public func listResourceSetsPaginator<Result>(
        _ input: ListResourceSetsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListResourceSetsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listResourceSets,
            inputKey: \ListResourceSetsRequest.nextToken,
            outputKey: \ListResourceSetsResponse.nextToken,
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
    public func listResourceSetsPaginator(
        _ input: ListResourceSetsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListResourceSetsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listResourceSets,
            inputKey: \ListResourceSetsRequest.nextToken,
            outputKey: \ListResourceSetsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a collection of rules that are applied as part of Readiness Checks.
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
    public func listRulesPaginator<Result>(
        _ input: ListRulesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListRulesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listRules,
            inputKey: \ListRulesRequest.nextToken,
            outputKey: \ListRulesResponse.nextToken,
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
    public func listRulesPaginator(
        _ input: ListRulesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListRulesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listRules,
            inputKey: \ListRulesRequest.nextToken,
            outputKey: \ListRulesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension Route53RecoveryReadiness.GetCellReadinessSummaryRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Route53RecoveryReadiness.GetCellReadinessSummaryRequest {
        return .init(
            cellName: self.cellName,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Route53RecoveryReadiness.GetReadinessCheckResourceStatusRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Route53RecoveryReadiness.GetReadinessCheckResourceStatusRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            readinessCheckName: self.readinessCheckName,
            resourceIdentifier: self.resourceIdentifier
        )
    }
}

extension Route53RecoveryReadiness.GetReadinessCheckStatusRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Route53RecoveryReadiness.GetReadinessCheckStatusRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            readinessCheckName: self.readinessCheckName
        )
    }
}

extension Route53RecoveryReadiness.GetRecoveryGroupReadinessSummaryRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Route53RecoveryReadiness.GetRecoveryGroupReadinessSummaryRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            recoveryGroupName: self.recoveryGroupName
        )
    }
}

extension Route53RecoveryReadiness.ListCellsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Route53RecoveryReadiness.ListCellsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Route53RecoveryReadiness.ListCrossAccountAuthorizationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Route53RecoveryReadiness.ListCrossAccountAuthorizationsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Route53RecoveryReadiness.ListReadinessChecksRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Route53RecoveryReadiness.ListReadinessChecksRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Route53RecoveryReadiness.ListRecoveryGroupsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Route53RecoveryReadiness.ListRecoveryGroupsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Route53RecoveryReadiness.ListResourceSetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Route53RecoveryReadiness.ListResourceSetsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Route53RecoveryReadiness.ListRulesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Route53RecoveryReadiness.ListRulesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceType: self.resourceType
        )
    }
}