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
extension Appflow {
    ///   Returns a list of connector-profile details matching the provided connector-profile names and connector-types. Both input lists are optional, and you can use them to filter the result.  If no names or connector-types are provided, returns all connector profiles in a paginated form. If there is no match, this operation returns an empty list.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeConnectorProfilesPaginator(
        _ input: DescribeConnectorProfilesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeConnectorProfilesRequest, DescribeConnectorProfilesResponse> {
        return .init(
            input: input,
            command: describeConnectorProfiles,
            inputKey: \DescribeConnectorProfilesRequest.nextToken,
            outputKey: \DescribeConnectorProfilesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Describes the connectors vended by Amazon AppFlow for specified connector types. If you don't specify a connector type, this operation describes all connectors vended by Amazon AppFlow. If there are more connectors than can be returned in one page, the response contains a nextToken object, which can be be passed in to the next call to the DescribeConnectors API operation to retrieve the next page.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeConnectorsPaginator(
        _ input: DescribeConnectorsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeConnectorsRequest, DescribeConnectorsResponse> {
        return .init(
            input: input,
            command: describeConnectors,
            inputKey: \DescribeConnectorsRequest.nextToken,
            outputKey: \DescribeConnectorsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Fetches the execution history of the flow.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeFlowExecutionRecordsPaginator(
        _ input: DescribeFlowExecutionRecordsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeFlowExecutionRecordsRequest, DescribeFlowExecutionRecordsResponse> {
        return .init(
            input: input,
            command: describeFlowExecutionRecords,
            inputKey: \DescribeFlowExecutionRecordsRequest.nextToken,
            outputKey: \DescribeFlowExecutionRecordsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns the list of all registered custom connectors in your Amazon Web Services account. This API lists only custom connectors registered in this account, not the Amazon Web Services authored connectors.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listConnectorsPaginator(
        _ input: ListConnectorsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListConnectorsRequest, ListConnectorsResponse> {
        return .init(
            input: input,
            command: listConnectors,
            inputKey: \ListConnectorsRequest.nextToken,
            outputKey: \ListConnectorsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Lists all of the flows associated with your account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listFlowsPaginator(
        _ input: ListFlowsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListFlowsRequest, ListFlowsResponse> {
        return .init(
            input: input,
            command: listFlows,
            inputKey: \ListFlowsRequest.nextToken,
            outputKey: \ListFlowsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
