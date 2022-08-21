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
extension IoTTwinMaker {
    ///  Retrieves information about the history of a time series property value for a component, component type, entity, or workspace. You must specify a value for workspaceId. For entity-specific queries, specify values for componentName and  entityId. For cross-entity quries, specify a value for componentTypeId.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getPropertyValueHistoryPaginator(
        _ input: GetPropertyValueHistoryRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetPropertyValueHistoryRequest, GetPropertyValueHistoryResponse> {
        return .init(
            input: input,
            command: getPropertyValueHistory,
            inputKey: \GetPropertyValueHistoryRequest.nextToken,
            outputKey: \GetPropertyValueHistoryResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all component types in a workspace.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listComponentTypesPaginator(
        _ input: ListComponentTypesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListComponentTypesRequest, ListComponentTypesResponse> {
        return .init(
            input: input,
            command: listComponentTypes,
            inputKey: \ListComponentTypesRequest.nextToken,
            outputKey: \ListComponentTypesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all entities in a workspace.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listEntitiesPaginator(
        _ input: ListEntitiesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListEntitiesRequest, ListEntitiesResponse> {
        return .init(
            input: input,
            command: listEntities,
            inputKey: \ListEntitiesRequest.nextToken,
            outputKey: \ListEntitiesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all scenes in a workspace.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listScenesPaginator(
        _ input: ListScenesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListScenesRequest, ListScenesResponse> {
        return .init(
            input: input,
            command: listScenes,
            inputKey: \ListScenesRequest.nextToken,
            outputKey: \ListScenesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves information about workspaces in the current account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listWorkspacesPaginator(
        _ input: ListWorkspacesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListWorkspacesRequest, ListWorkspacesResponse> {
        return .init(
            input: input,
            command: listWorkspaces,
            inputKey: \ListWorkspacesRequest.nextToken,
            outputKey: \ListWorkspacesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
