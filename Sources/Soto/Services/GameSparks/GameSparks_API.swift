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

@_exported import SotoCore

/// Service object for interacting with AWS GameSparks service.
public struct GameSparks: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the GameSparks client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "gamesparks",
            serviceProtocol: .restjson,
            apiVersion: "2021-08-17",
            endpoint: endpoint,
            errorType: GameSparksErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    ///  Creates a new game with an empty configuration. After creating your game, you can update the configuration using UpdateGameConfiguration or ImportGameConfiguration.
    public func createGame(_ input: CreateGameRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateGameResult> {
        return self.client.execute(operation: "CreateGame", path: "/game", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a snapshot of the game configuration.
    public func createSnapshot(_ input: CreateSnapshotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSnapshotResult> {
        return self.client.execute(operation: "CreateSnapshot", path: "/game/{GameName}/snapshot", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new stage for stage-by-stage game development and deployment.
    public func createStage(_ input: CreateStageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateStageResult> {
        return self.client.execute(operation: "CreateStage", path: "/game/{GameName}/stage", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a game.
    public func deleteGame(_ input: DeleteGameRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteGameResult> {
        return self.client.execute(operation: "DeleteGame", path: "/game/{GameName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a stage from a game, along with the associated game runtime.
    public func deleteStage(_ input: DeleteStageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteStageResult> {
        return self.client.execute(operation: "DeleteStage", path: "/game/{GameName}/stage/{StageName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disconnects a player from the game runtime.  If a player has multiple connections, this operation attempts to close all of them.
    public func disconnectPlayer(_ input: DisconnectPlayerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisconnectPlayerResult> {
        return self.client.execute(operation: "DisconnectPlayer", path: "/runtime/game/{GameName}/stage/{StageName}/player/{PlayerId}/disconnect", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Exports a game configuration snapshot.
    public func exportSnapshot(_ input: ExportSnapshotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportSnapshotResult> {
        return self.client.execute(operation: "ExportSnapshot", path: "/game/{GameName}/snapshot/{SnapshotId}/export", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets details about a specified extension.
    public func getExtension(_ input: GetExtensionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetExtensionResult> {
        return self.client.execute(operation: "GetExtension", path: "/extension/{Namespace}/{Name}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets details about a specified extension version.
    public func getExtensionVersion(_ input: GetExtensionVersionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetExtensionVersionResult> {
        return self.client.execute(operation: "GetExtensionVersion", path: "/extension/{Namespace}/{Name}/version/{ExtensionVersion}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets details about a game.
    public func getGame(_ input: GetGameRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetGameResult> {
        return self.client.execute(operation: "GetGame", path: "/game/{GameName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the configuration of the game.
    public func getGameConfiguration(_ input: GetGameConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetGameConfigurationResult> {
        return self.client.execute(operation: "GetGameConfiguration", path: "/game/{GameName}/configuration", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets details about a job that is generating code for a snapshot.
    public func getGeneratedCodeJob(_ input: GetGeneratedCodeJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetGeneratedCodeJobResult> {
        return self.client.execute(operation: "GetGeneratedCodeJob", path: "/game/{GameName}/snapshot/{SnapshotId}/generated-sdk-code-job/{JobId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the status of a player's connection to the game runtime.  It's possible for a single player to have multiple connections to the game runtime. If a player is not connected, this operation returns an empty list.
    public func getPlayerConnectionStatus(_ input: GetPlayerConnectionStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPlayerConnectionStatusResult> {
        return self.client.execute(operation: "GetPlayerConnectionStatus", path: "/runtime/game/{GameName}/stage/{StageName}/player/{PlayerId}/connection", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a copy of the game configuration in a snapshot.
    public func getSnapshot(_ input: GetSnapshotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSnapshotResult> {
        return self.client.execute(operation: "GetSnapshot", path: "/game/{GameName}/snapshot/{SnapshotId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about a stage.
    public func getStage(_ input: GetStageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetStageResult> {
        return self.client.execute(operation: "GetStage", path: "/game/{GameName}/stage/{StageName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about a stage deployment.
    public func getStageDeployment(_ input: GetStageDeploymentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetStageDeploymentResult> {
        return self.client.execute(operation: "GetStageDeployment", path: "/game/{GameName}/stage/{StageName}/deployment", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Imports a game configuration.  This operation replaces the current configuration of the game with the provided input. This is not a reversible operation. If you want to preserve the previous configuration, use CreateSnapshot to make a new snapshot before importing.
    public func importGameConfiguration(_ input: ImportGameConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportGameConfigurationResult> {
        return self.client.execute(operation: "ImportGameConfiguration", path: "/game/{GameName}/configuration", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a paginated list of available versions for the extension.  Each time an API change is made to an extension, the version is incremented. The list retrieved by this operation shows the versions that are currently available.
    public func listExtensionVersions(_ input: ListExtensionVersionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListExtensionVersionsResult> {
        return self.client.execute(operation: "ListExtensionVersions", path: "/extension/{Namespace}/{Name}/version", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a paginated list of available extensions.  Extensions provide features that games can use from scripts.
    public func listExtensions(_ input: ListExtensionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListExtensionsResult> {
        return self.client.execute(operation: "ListExtensions", path: "/extension", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a paginated list of games.
    public func listGames(_ input: ListGamesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListGamesResult> {
        return self.client.execute(operation: "ListGames", path: "/game", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a paginated list of code generation jobs for a snapshot.
    public func listGeneratedCodeJobs(_ input: ListGeneratedCodeJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListGeneratedCodeJobsResult> {
        return self.client.execute(operation: "ListGeneratedCodeJobs", path: "/game/{GameName}/snapshot/{SnapshotId}/generated-sdk-code-jobs", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a paginated list of snapshot summaries from the game.
    public func listSnapshots(_ input: ListSnapshotsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSnapshotsResult> {
        return self.client.execute(operation: "ListSnapshots", path: "/game/{GameName}/snapshot", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a paginated list of stage deployment summaries from the game.
    public func listStageDeployments(_ input: ListStageDeploymentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListStageDeploymentsResult> {
        return self.client.execute(operation: "ListStageDeployments", path: "/game/{GameName}/stage/{StageName}/deployments", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a paginated list of stage summaries from the game.
    public func listStages(_ input: ListStagesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListStagesResult> {
        return self.client.execute(operation: "ListStages", path: "/game/{GameName}/stage", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags associated with a GameSparks resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResult> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Starts an asynchronous process that generates client code for system-defined and custom messages. The resulting code is collected as a .zip file and uploaded to a pre-signed Amazon S3 URL.
    public func startGeneratedCodeJob(_ input: StartGeneratedCodeJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartGeneratedCodeJobResult> {
        return self.client.execute(operation: "StartGeneratedCodeJob", path: "/game/{GameName}/snapshot/{SnapshotId}/generated-sdk-code-job", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deploys a snapshot to the stage and creates a new game runtime.  After you call this operation, you can check the deployment status by using GetStageDeployment.   If there are any players connected to the previous game runtime, then both runtimes persist. Existing connections to the previous runtime are maintained. When players disconnect and reconnect, they connect to the new runtime. After there are no connections to the previous game runtime, it is deleted.
    public func startStageDeployment(_ input: StartStageDeploymentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartStageDeploymentResult> {
        return self.client.execute(operation: "StartStageDeployment", path: "/game/{GameName}/stage/{StageName}/deployment", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds tags to a GameSparks resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResult> {
        return self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes tags from a GameSparks resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResult> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates details of the game.
    public func updateGame(_ input: UpdateGameRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateGameResult> {
        return self.client.execute(operation: "UpdateGame", path: "/game/{GameName}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates one or more sections of the game configuration.
    public func updateGameConfiguration(_ input: UpdateGameConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateGameConfigurationResult> {
        return self.client.execute(operation: "UpdateGameConfiguration", path: "/game/{GameName}/configuration", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the metadata of a GameSparks snapshot.
    public func updateSnapshot(_ input: UpdateSnapshotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateSnapshotResult> {
        return self.client.execute(operation: "UpdateSnapshot", path: "/game/{GameName}/snapshot/{SnapshotId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the metadata of a stage.
    public func updateStage(_ input: UpdateStageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateStageResult> {
        return self.client.execute(operation: "UpdateStage", path: "/game/{GameName}/stage/{StageName}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension GameSparks {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: GameSparks, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
