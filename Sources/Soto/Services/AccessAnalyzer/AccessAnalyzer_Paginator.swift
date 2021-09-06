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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

import SotoCore

// MARK: Paginators

extension AccessAnalyzer {
    ///  Retrieves a list of access preview findings generated by the specified access preview.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listAccessPreviewFindingsPaginator<Result>(
        _ input: ListAccessPreviewFindingsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListAccessPreviewFindingsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listAccessPreviewFindings,
            inputKey: \ListAccessPreviewFindingsRequest.nextToken,
            outputKey: \ListAccessPreviewFindingsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listAccessPreviewFindingsPaginator(
        _ input: ListAccessPreviewFindingsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListAccessPreviewFindingsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAccessPreviewFindings,
            inputKey: \ListAccessPreviewFindingsRequest.nextToken,
            outputKey: \ListAccessPreviewFindingsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves a list of access previews for the specified analyzer.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listAccessPreviewsPaginator<Result>(
        _ input: ListAccessPreviewsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListAccessPreviewsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listAccessPreviews,
            inputKey: \ListAccessPreviewsRequest.nextToken,
            outputKey: \ListAccessPreviewsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listAccessPreviewsPaginator(
        _ input: ListAccessPreviewsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListAccessPreviewsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAccessPreviews,
            inputKey: \ListAccessPreviewsRequest.nextToken,
            outputKey: \ListAccessPreviewsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves a list of resources of the specified type that have been analyzed by the specified analyzer..
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listAnalyzedResourcesPaginator<Result>(
        _ input: ListAnalyzedResourcesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListAnalyzedResourcesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listAnalyzedResources,
            inputKey: \ListAnalyzedResourcesRequest.nextToken,
            outputKey: \ListAnalyzedResourcesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listAnalyzedResourcesPaginator(
        _ input: ListAnalyzedResourcesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListAnalyzedResourcesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAnalyzedResources,
            inputKey: \ListAnalyzedResourcesRequest.nextToken,
            outputKey: \ListAnalyzedResourcesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves a list of analyzers.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listAnalyzersPaginator<Result>(
        _ input: ListAnalyzersRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListAnalyzersResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listAnalyzers,
            inputKey: \ListAnalyzersRequest.nextToken,
            outputKey: \ListAnalyzersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listAnalyzersPaginator(
        _ input: ListAnalyzersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListAnalyzersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAnalyzers,
            inputKey: \ListAnalyzersRequest.nextToken,
            outputKey: \ListAnalyzersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves a list of archive rules created for the specified analyzer.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listArchiveRulesPaginator<Result>(
        _ input: ListArchiveRulesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListArchiveRulesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listArchiveRules,
            inputKey: \ListArchiveRulesRequest.nextToken,
            outputKey: \ListArchiveRulesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listArchiveRulesPaginator(
        _ input: ListArchiveRulesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListArchiveRulesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listArchiveRules,
            inputKey: \ListArchiveRulesRequest.nextToken,
            outputKey: \ListArchiveRulesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves a list of findings generated by the specified analyzer. To learn about filter keys that you can use to retrieve a list of findings, see IAM Access Analyzer filter keys in the IAM User Guide.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listFindingsPaginator<Result>(
        _ input: ListFindingsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListFindingsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listFindings,
            inputKey: \ListFindingsRequest.nextToken,
            outputKey: \ListFindingsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listFindingsPaginator(
        _ input: ListFindingsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListFindingsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listFindings,
            inputKey: \ListFindingsRequest.nextToken,
            outputKey: \ListFindingsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all of the policy generations requested in the last seven days.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listPolicyGenerationsPaginator<Result>(
        _ input: ListPolicyGenerationsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListPolicyGenerationsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listPolicyGenerations,
            inputKey: \ListPolicyGenerationsRequest.nextToken,
            outputKey: \ListPolicyGenerationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listPolicyGenerationsPaginator(
        _ input: ListPolicyGenerationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListPolicyGenerationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPolicyGenerations,
            inputKey: \ListPolicyGenerationsRequest.nextToken,
            outputKey: \ListPolicyGenerationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Requests the validation of a policy and returns a list of findings. The findings help you identify issues and provide actionable recommendations to resolve the issue and enable you to author functional policies that meet security best practices.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func validatePolicyPaginator<Result>(
        _ input: ValidatePolicyRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ValidatePolicyResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: validatePolicy,
            inputKey: \ValidatePolicyRequest.nextToken,
            outputKey: \ValidatePolicyResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func validatePolicyPaginator(
        _ input: ValidatePolicyRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ValidatePolicyResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: validatePolicy,
            inputKey: \ValidatePolicyRequest.nextToken,
            outputKey: \ValidatePolicyResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension AccessAnalyzer.ListAccessPreviewFindingsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AccessAnalyzer.ListAccessPreviewFindingsRequest {
        return .init(
            accessPreviewId: self.accessPreviewId,
            analyzerArn: self.analyzerArn,
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension AccessAnalyzer.ListAccessPreviewsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AccessAnalyzer.ListAccessPreviewsRequest {
        return .init(
            analyzerArn: self.analyzerArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension AccessAnalyzer.ListAnalyzedResourcesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AccessAnalyzer.ListAnalyzedResourcesRequest {
        return .init(
            analyzerArn: self.analyzerArn,
            maxResults: self.maxResults,
            nextToken: token,
            resourceType: self.resourceType
        )
    }
}

extension AccessAnalyzer.ListAnalyzersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AccessAnalyzer.ListAnalyzersRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            type: self.type
        )
    }
}

extension AccessAnalyzer.ListArchiveRulesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AccessAnalyzer.ListArchiveRulesRequest {
        return .init(
            analyzerName: self.analyzerName,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension AccessAnalyzer.ListFindingsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AccessAnalyzer.ListFindingsRequest {
        return .init(
            analyzerArn: self.analyzerArn,
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token,
            sort: self.sort
        )
    }
}

extension AccessAnalyzer.ListPolicyGenerationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AccessAnalyzer.ListPolicyGenerationsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            principalArn: self.principalArn
        )
    }
}

extension AccessAnalyzer.ValidatePolicyRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AccessAnalyzer.ValidatePolicyRequest {
        return .init(
            locale: self.locale,
            maxResults: self.maxResults,
            nextToken: token,
            policyDocument: self.policyDocument,
            policyType: self.policyType
        )
    }
}
