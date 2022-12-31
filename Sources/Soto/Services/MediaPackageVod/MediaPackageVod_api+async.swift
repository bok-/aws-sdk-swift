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

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension MediaPackageVod {
    // MARK: Async API Calls

    /// Changes the packaging group's properities to configure log subscription
    public func configureLogs(_ input: ConfigureLogsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ConfigureLogsResponse {
        return try await self.client.execute(operation: "ConfigureLogs", path: "/packaging_groups/{Id}/configure_logs", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new MediaPackage VOD Asset resource.
    public func createAsset(_ input: CreateAssetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAssetResponse {
        return try await self.client.execute(operation: "CreateAsset", path: "/assets", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new MediaPackage VOD PackagingConfiguration resource.
    public func createPackagingConfiguration(_ input: CreatePackagingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePackagingConfigurationResponse {
        return try await self.client.execute(operation: "CreatePackagingConfiguration", path: "/packaging_configurations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new MediaPackage VOD PackagingGroup resource.
    public func createPackagingGroup(_ input: CreatePackagingGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePackagingGroupResponse {
        return try await self.client.execute(operation: "CreatePackagingGroup", path: "/packaging_groups", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an existing MediaPackage VOD Asset resource.
    public func deleteAsset(_ input: DeleteAssetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAssetResponse {
        return try await self.client.execute(operation: "DeleteAsset", path: "/assets/{Id}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a MediaPackage VOD PackagingConfiguration resource.
    public func deletePackagingConfiguration(_ input: DeletePackagingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePackagingConfigurationResponse {
        return try await self.client.execute(operation: "DeletePackagingConfiguration", path: "/packaging_configurations/{Id}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a MediaPackage VOD PackagingGroup resource.
    public func deletePackagingGroup(_ input: DeletePackagingGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePackagingGroupResponse {
        return try await self.client.execute(operation: "DeletePackagingGroup", path: "/packaging_groups/{Id}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a description of a MediaPackage VOD Asset resource.
    public func describeAsset(_ input: DescribeAssetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetResponse {
        return try await self.client.execute(operation: "DescribeAsset", path: "/assets/{Id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a description of a MediaPackage VOD PackagingConfiguration resource.
    public func describePackagingConfiguration(_ input: DescribePackagingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePackagingConfigurationResponse {
        return try await self.client.execute(operation: "DescribePackagingConfiguration", path: "/packaging_configurations/{Id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a description of a MediaPackage VOD PackagingGroup resource.
    public func describePackagingGroup(_ input: DescribePackagingGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePackagingGroupResponse {
        return try await self.client.execute(operation: "DescribePackagingGroup", path: "/packaging_groups/{Id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a collection of MediaPackage VOD Asset resources.
    public func listAssets(_ input: ListAssetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAssetsResponse {
        return try await self.client.execute(operation: "ListAssets", path: "/assets", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a collection of MediaPackage VOD PackagingConfiguration resources.
    public func listPackagingConfigurations(_ input: ListPackagingConfigurationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPackagingConfigurationsResponse {
        return try await self.client.execute(operation: "ListPackagingConfigurations", path: "/packaging_configurations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a collection of MediaPackage VOD PackagingGroup resources.
    public func listPackagingGroups(_ input: ListPackagingGroupsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPackagingGroupsResponse {
        return try await self.client.execute(operation: "ListPackagingGroups", path: "/packaging_groups", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of the tags assigned to the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds tags to the specified resource. You can specify one or more tags to add.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes tags from the specified resource. You can specify one or more tags to remove.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a specific packaging group. You can't change the id attribute or any other system-generated attributes.
    public func updatePackagingGroup(_ input: UpdatePackagingGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdatePackagingGroupResponse {
        return try await self.client.execute(operation: "UpdatePackagingGroup", path: "/packaging_groups/{Id}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension MediaPackageVod {
    ///  Returns a collection of MediaPackage VOD Asset resources.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAssetsPaginator(
        _ input: ListAssetsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAssetsRequest, ListAssetsResponse> {
        return .init(
            input: input,
            command: self.listAssets,
            inputKey: \ListAssetsRequest.nextToken,
            outputKey: \ListAssetsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a collection of MediaPackage VOD PackagingConfiguration resources.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPackagingConfigurationsPaginator(
        _ input: ListPackagingConfigurationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPackagingConfigurationsRequest, ListPackagingConfigurationsResponse> {
        return .init(
            input: input,
            command: self.listPackagingConfigurations,
            inputKey: \ListPackagingConfigurationsRequest.nextToken,
            outputKey: \ListPackagingConfigurationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a collection of MediaPackage VOD PackagingGroup resources.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPackagingGroupsPaginator(
        _ input: ListPackagingGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPackagingGroupsRequest, ListPackagingGroupsResponse> {
        return .init(
            input: input,
            command: self.listPackagingGroups,
            inputKey: \ListPackagingGroupsRequest.nextToken,
            outputKey: \ListPackagingGroupsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
