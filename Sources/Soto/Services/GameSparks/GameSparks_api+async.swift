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
extension GameSparks {
    // MARK: Async API Calls

    ///  Creates a new game with an empty configuration. After creating your game, you can update the configuration using UpdateGameConfiguration or ImportGameConfiguration.
    public func createGame(_ input: CreateGameRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGameResult {
        return try await self.client.execute(operation: "CreateGame", path: "/game", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a snapshot of the game configuration.
    public func createSnapshot(_ input: CreateSnapshotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSnapshotResult {
        return try await self.client.execute(operation: "CreateSnapshot", path: "/game/{GameName}/snapshot", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new stage for stage-by-stage game development and deployment.
    public func createStage(_ input: CreateStageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateStageResult {
        return try await self.client.execute(operation: "CreateStage", path: "/game/{GameName}/stage", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a game.
    public func deleteGame(_ input: DeleteGameRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteGameResult {
        return try await self.client.execute(operation: "DeleteGame", path: "/game/{GameName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a stage from a game, along with the associated game runtime.
    public func deleteStage(_ input: DeleteStageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteStageResult {
        return try await self.client.execute(operation: "DeleteStage", path: "/game/{GameName}/stage/{StageName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disconnects a player from the game runtime.  If a player has multiple connections, this operation attempts to close all of them.
    public func disconnectPlayer(_ input: DisconnectPlayerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisconnectPlayerResult {
        return try await self.client.execute(operation: "DisconnectPlayer", path: "/runtime/game/{GameName}/stage/{StageName}/player/{PlayerId}/disconnect", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Exports a game configuration snapshot.
    public func exportSnapshot(_ input: ExportSnapshotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportSnapshotResult {
        return try await self.client.execute(operation: "ExportSnapshot", path: "/game/{GameName}/snapshot/{SnapshotId}/export", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets details about a specified extension.
    public func getExtension(_ input: GetExtensionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetExtensionResult {
        return try await self.client.execute(operation: "GetExtension", path: "/extension/{Namespace}/{Name}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets details about a specified extension version.
    public func getExtensionVersion(_ input: GetExtensionVersionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetExtensionVersionResult {
        return try await self.client.execute(operation: "GetExtensionVersion", path: "/extension/{Namespace}/{Name}/version/{ExtensionVersion}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets details about a game.
    public func getGame(_ input: GetGameRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetGameResult {
        return try await self.client.execute(operation: "GetGame", path: "/game/{GameName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the configuration of the game.
    public func getGameConfiguration(_ input: GetGameConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetGameConfigurationResult {
        return try await self.client.execute(operation: "GetGameConfiguration", path: "/game/{GameName}/configuration", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets details about a job that is generating code for a snapshot.
    public func getGeneratedCodeJob(_ input: GetGeneratedCodeJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetGeneratedCodeJobResult {
        return try await self.client.execute(operation: "GetGeneratedCodeJob", path: "/game/{GameName}/snapshot/{SnapshotId}/generated-sdk-code-job/{JobId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the status of a player's connection to the game runtime.  It's possible for a single player to have multiple connections to the game runtime. If a player is not connected, this operation returns an empty list.
    public func getPlayerConnectionStatus(_ input: GetPlayerConnectionStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPlayerConnectionStatusResult {
        return try await self.client.execute(operation: "GetPlayerConnectionStatus", path: "/runtime/game/{GameName}/stage/{StageName}/player/{PlayerId}/connection", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a copy of the game configuration in a snapshot.
    public func getSnapshot(_ input: GetSnapshotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSnapshotResult {
        return try await self.client.execute(operation: "GetSnapshot", path: "/game/{GameName}/snapshot/{SnapshotId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about a stage.
    public func getStage(_ input: GetStageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetStageResult {
        return try await self.client.execute(operation: "GetStage", path: "/game/{GameName}/stage/{StageName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about a stage deployment.
    public func getStageDeployment(_ input: GetStageDeploymentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetStageDeploymentResult {
        return try await self.client.execute(operation: "GetStageDeployment", path: "/game/{GameName}/stage/{StageName}/deployment", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Imports a game configuration.  This operation replaces the current configuration of the game with the provided input. This is not a reversible operation. If you want to preserve the previous configuration, use CreateSnapshot to make a new snapshot before importing.
    public func importGameConfiguration(_ input: ImportGameConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImportGameConfigurationResult {
        return try await self.client.execute(operation: "ImportGameConfiguration", path: "/game/{GameName}/configuration", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a paginated list of available versions for the extension.  Each time an API change is made to an extension, the version is incremented. The list retrieved by this operation shows the versions that are currently available.
    public func listExtensionVersions(_ input: ListExtensionVersionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListExtensionVersionsResult {
        return try await self.client.execute(operation: "ListExtensionVersions", path: "/extension/{Namespace}/{Name}/version", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a paginated list of available extensions.  Extensions provide features that games can use from scripts.
    public func listExtensions(_ input: ListExtensionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListExtensionsResult {
        return try await self.client.execute(operation: "ListExtensions", path: "/extension", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a paginated list of games.
    public func listGames(_ input: ListGamesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListGamesResult {
        return try await self.client.execute(operation: "ListGames", path: "/game", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a paginated list of code generation jobs for a snapshot.
    public func listGeneratedCodeJobs(_ input: ListGeneratedCodeJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListGeneratedCodeJobsResult {
        return try await self.client.execute(operation: "ListGeneratedCodeJobs", path: "/game/{GameName}/snapshot/{SnapshotId}/generated-sdk-code-jobs", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a paginated list of snapshot summaries from the game.
    public func listSnapshots(_ input: ListSnapshotsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSnapshotsResult {
        return try await self.client.execute(operation: "ListSnapshots", path: "/game/{GameName}/snapshot", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a paginated list of stage deployment summaries from the game.
    public func listStageDeployments(_ input: ListStageDeploymentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListStageDeploymentsResult {
        return try await self.client.execute(operation: "ListStageDeployments", path: "/game/{GameName}/stage/{StageName}/deployments", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a paginated list of stage summaries from the game.
    public func listStages(_ input: ListStagesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListStagesResult {
        return try await self.client.execute(operation: "ListStages", path: "/game/{GameName}/stage", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags associated with a GameSparks resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResult {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Starts an asynchronous process that generates client code for system-defined and custom messages. The resulting code is collected as a .zip file and uploaded to a pre-signed Amazon S3 URL.
    public func startGeneratedCodeJob(_ input: StartGeneratedCodeJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartGeneratedCodeJobResult {
        return try await self.client.execute(operation: "StartGeneratedCodeJob", path: "/game/{GameName}/snapshot/{SnapshotId}/generated-sdk-code-job", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deploys a snapshot to the stage and creates a new game runtime.  After you call this operation, you can check the deployment status by using GetStageDeployment.   If there are any players connected to the previous game runtime, then both runtimes persist. Existing connections to the previous runtime are maintained. When players disconnect and reconnect, they connect to the new runtime. After there are no connections to the previous game runtime, it is deleted.
    public func startStageDeployment(_ input: StartStageDeploymentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartStageDeploymentResult {
        return try await self.client.execute(operation: "StartStageDeployment", path: "/game/{GameName}/stage/{StageName}/deployment", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds tags to a GameSparks resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResult {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes tags from a GameSparks resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResult {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates details of the game.
    public func updateGame(_ input: UpdateGameRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateGameResult {
        return try await self.client.execute(operation: "UpdateGame", path: "/game/{GameName}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates one or more sections of the game configuration.
    public func updateGameConfiguration(_ input: UpdateGameConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateGameConfigurationResult {
        return try await self.client.execute(operation: "UpdateGameConfiguration", path: "/game/{GameName}/configuration", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the metadata of a GameSparks snapshot.
    public func updateSnapshot(_ input: UpdateSnapshotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateSnapshotResult {
        return try await self.client.execute(operation: "UpdateSnapshot", path: "/game/{GameName}/snapshot/{SnapshotId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the metadata of a stage.
    public func updateStage(_ input: UpdateStageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateStageResult {
        return try await self.client.execute(operation: "UpdateStage", path: "/game/{GameName}/stage/{StageName}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension GameSparks {
    ///  Gets a paginated list of available versions for the extension.  Each time an API change is made to an extension, the version is incremented. The list retrieved by this operation shows the versions that are currently available.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listExtensionVersionsPaginator(
        _ input: ListExtensionVersionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListExtensionVersionsRequest, ListExtensionVersionsResult> {
        return .init(
            input: input,
            command: self.listExtensionVersions,
            inputKey: \ListExtensionVersionsRequest.nextToken,
            outputKey: \ListExtensionVersionsResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets a paginated list of available extensions.  Extensions provide features that games can use from scripts.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listExtensionsPaginator(
        _ input: ListExtensionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListExtensionsRequest, ListExtensionsResult> {
        return .init(
            input: input,
            command: self.listExtensions,
            inputKey: \ListExtensionsRequest.nextToken,
            outputKey: \ListExtensionsResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets a paginated list of games.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listGamesPaginator(
        _ input: ListGamesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListGamesRequest, ListGamesResult> {
        return .init(
            input: input,
            command: self.listGames,
            inputKey: \ListGamesRequest.nextToken,
            outputKey: \ListGamesResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets a paginated list of code generation jobs for a snapshot.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listGeneratedCodeJobsPaginator(
        _ input: ListGeneratedCodeJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListGeneratedCodeJobsRequest, ListGeneratedCodeJobsResult> {
        return .init(
            input: input,
            command: self.listGeneratedCodeJobs,
            inputKey: \ListGeneratedCodeJobsRequest.nextToken,
            outputKey: \ListGeneratedCodeJobsResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets a paginated list of snapshot summaries from the game.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSnapshotsPaginator(
        _ input: ListSnapshotsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSnapshotsRequest, ListSnapshotsResult> {
        return .init(
            input: input,
            command: self.listSnapshots,
            inputKey: \ListSnapshotsRequest.nextToken,
            outputKey: \ListSnapshotsResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets a paginated list of stage deployment summaries from the game.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listStageDeploymentsPaginator(
        _ input: ListStageDeploymentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListStageDeploymentsRequest, ListStageDeploymentsResult> {
        return .init(
            input: input,
            command: self.listStageDeployments,
            inputKey: \ListStageDeploymentsRequest.nextToken,
            outputKey: \ListStageDeploymentsResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets a paginated list of stage summaries from the game.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listStagesPaginator(
        _ input: ListStagesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListStagesRequest, ListStagesResult> {
        return .init(
            input: input,
            command: self.listStages,
            inputKey: \ListStagesRequest.nextToken,
            outputKey: \ListStagesResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
