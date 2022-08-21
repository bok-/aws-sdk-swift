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

extension Location {
    ///  Retrieves the device position history from a tracker resource within a specified range of time.  Device positions are deleted after 30 days.
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
    public func getDevicePositionHistoryPaginator<Result>(
        _ input: GetDevicePositionHistoryRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetDevicePositionHistoryResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getDevicePositionHistory,
            inputKey: \GetDevicePositionHistoryRequest.nextToken,
            outputKey: \GetDevicePositionHistoryResponse.nextToken,
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
    public func getDevicePositionHistoryPaginator(
        _ input: GetDevicePositionHistoryRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetDevicePositionHistoryResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getDevicePositionHistory,
            inputKey: \GetDevicePositionHistoryRequest.nextToken,
            outputKey: \GetDevicePositionHistoryResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  A batch request to retrieve all device positions.
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
    public func listDevicePositionsPaginator<Result>(
        _ input: ListDevicePositionsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListDevicePositionsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listDevicePositions,
            inputKey: \ListDevicePositionsRequest.nextToken,
            outputKey: \ListDevicePositionsResponse.nextToken,
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
    public func listDevicePositionsPaginator(
        _ input: ListDevicePositionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListDevicePositionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDevicePositions,
            inputKey: \ListDevicePositionsRequest.nextToken,
            outputKey: \ListDevicePositionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists geofence collections in your AWS account.
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
    public func listGeofenceCollectionsPaginator<Result>(
        _ input: ListGeofenceCollectionsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListGeofenceCollectionsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listGeofenceCollections,
            inputKey: \ListGeofenceCollectionsRequest.nextToken,
            outputKey: \ListGeofenceCollectionsResponse.nextToken,
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
    public func listGeofenceCollectionsPaginator(
        _ input: ListGeofenceCollectionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListGeofenceCollectionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listGeofenceCollections,
            inputKey: \ListGeofenceCollectionsRequest.nextToken,
            outputKey: \ListGeofenceCollectionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists geofences stored in a given geofence collection.
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
    public func listGeofencesPaginator<Result>(
        _ input: ListGeofencesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListGeofencesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listGeofences,
            inputKey: \ListGeofencesRequest.nextToken,
            outputKey: \ListGeofencesResponse.nextToken,
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
    public func listGeofencesPaginator(
        _ input: ListGeofencesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListGeofencesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listGeofences,
            inputKey: \ListGeofencesRequest.nextToken,
            outputKey: \ListGeofencesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists map resources in your AWS account.
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
    public func listMapsPaginator<Result>(
        _ input: ListMapsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListMapsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listMaps,
            inputKey: \ListMapsRequest.nextToken,
            outputKey: \ListMapsResponse.nextToken,
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
    public func listMapsPaginator(
        _ input: ListMapsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListMapsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listMaps,
            inputKey: \ListMapsRequest.nextToken,
            outputKey: \ListMapsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists place index resources in your AWS account.
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
    public func listPlaceIndexesPaginator<Result>(
        _ input: ListPlaceIndexesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListPlaceIndexesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listPlaceIndexes,
            inputKey: \ListPlaceIndexesRequest.nextToken,
            outputKey: \ListPlaceIndexesResponse.nextToken,
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
    public func listPlaceIndexesPaginator(
        _ input: ListPlaceIndexesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListPlaceIndexesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPlaceIndexes,
            inputKey: \ListPlaceIndexesRequest.nextToken,
            outputKey: \ListPlaceIndexesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists route calculator resources in your AWS account.
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
    public func listRouteCalculatorsPaginator<Result>(
        _ input: ListRouteCalculatorsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListRouteCalculatorsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listRouteCalculators,
            inputKey: \ListRouteCalculatorsRequest.nextToken,
            outputKey: \ListRouteCalculatorsResponse.nextToken,
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
    public func listRouteCalculatorsPaginator(
        _ input: ListRouteCalculatorsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListRouteCalculatorsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listRouteCalculators,
            inputKey: \ListRouteCalculatorsRequest.nextToken,
            outputKey: \ListRouteCalculatorsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists geofence collections currently associated to the given tracker resource.
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
    public func listTrackerConsumersPaginator<Result>(
        _ input: ListTrackerConsumersRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListTrackerConsumersResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listTrackerConsumers,
            inputKey: \ListTrackerConsumersRequest.nextToken,
            outputKey: \ListTrackerConsumersResponse.nextToken,
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
    public func listTrackerConsumersPaginator(
        _ input: ListTrackerConsumersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListTrackerConsumersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTrackerConsumers,
            inputKey: \ListTrackerConsumersRequest.nextToken,
            outputKey: \ListTrackerConsumersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists tracker resources in your AWS account.
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
    public func listTrackersPaginator<Result>(
        _ input: ListTrackersRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListTrackersResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listTrackers,
            inputKey: \ListTrackersRequest.nextToken,
            outputKey: \ListTrackersResponse.nextToken,
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
    public func listTrackersPaginator(
        _ input: ListTrackersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListTrackersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTrackers,
            inputKey: \ListTrackersRequest.nextToken,
            outputKey: \ListTrackersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension Location.GetDevicePositionHistoryRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Location.GetDevicePositionHistoryRequest {
        return .init(
            deviceId: self.deviceId,
            endTimeExclusive: self.endTimeExclusive,
            maxResults: self.maxResults,
            nextToken: token,
            startTimeInclusive: self.startTimeInclusive,
            trackerName: self.trackerName
        )
    }
}

extension Location.ListDevicePositionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Location.ListDevicePositionsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            trackerName: self.trackerName
        )
    }
}

extension Location.ListGeofenceCollectionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Location.ListGeofenceCollectionsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Location.ListGeofencesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Location.ListGeofencesRequest {
        return .init(
            collectionName: self.collectionName,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Location.ListMapsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Location.ListMapsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Location.ListPlaceIndexesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Location.ListPlaceIndexesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Location.ListRouteCalculatorsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Location.ListRouteCalculatorsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Location.ListTrackerConsumersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Location.ListTrackerConsumersRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            trackerName: self.trackerName
        )
    }
}

extension Location.ListTrackersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Location.ListTrackersRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
