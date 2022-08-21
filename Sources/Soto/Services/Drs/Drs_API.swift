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

/// Service object for interacting with AWS Drs service.
///
/// AWS Elastic Disaster Recovery Service.
public struct Drs: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Drs client
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
            service: "drs",
            serviceProtocol: .restjson,
            apiVersion: "2020-02-26",
            endpoint: endpoint,
            errorType: DrsErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Create an extended source server in the target Account based on the source server in staging account.
    public func createExtendedSourceServer(_ input: CreateExtendedSourceServerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateExtendedSourceServerResponse> {
        return self.client.execute(operation: "CreateExtendedSourceServer", path: "/CreateExtendedSourceServer", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new ReplicationConfigurationTemplate.
    public func createReplicationConfigurationTemplate(_ input: CreateReplicationConfigurationTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReplicationConfigurationTemplate> {
        return self.client.execute(operation: "CreateReplicationConfigurationTemplate", path: "/CreateReplicationConfigurationTemplate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a single Job by ID.
    public func deleteJob(_ input: DeleteJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteJobResponse> {
        return self.client.execute(operation: "DeleteJob", path: "/DeleteJob", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a single Recovery Instance by ID. This deletes the Recovery Instance resource from Elastic Disaster Recovery. The Recovery Instance must be disconnected first in order to delete it.
    @discardableResult public func deleteRecoveryInstance(_ input: DeleteRecoveryInstanceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteRecoveryInstance", path: "/DeleteRecoveryInstance", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a single Replication Configuration Template by ID
    public func deleteReplicationConfigurationTemplate(_ input: DeleteReplicationConfigurationTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteReplicationConfigurationTemplateResponse> {
        return self.client.execute(operation: "DeleteReplicationConfigurationTemplate", path: "/DeleteReplicationConfigurationTemplate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a single Source Server by ID. The Source Server must be disconnected first.
    public func deleteSourceServer(_ input: DeleteSourceServerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSourceServerResponse> {
        return self.client.execute(operation: "DeleteSourceServer", path: "/DeleteSourceServer", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a detailed Job log with pagination.
    public func describeJobLogItems(_ input: DescribeJobLogItemsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeJobLogItemsResponse> {
        return self.client.execute(operation: "DescribeJobLogItems", path: "/DescribeJobLogItems", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of Jobs. Use the JobsID and fromDate and toDate filters to limit which jobs are returned. The response is sorted by creationDataTime - latest date first. Jobs are created by the StartRecovery, TerminateRecoveryInstances and StartFailbackLaunch APIs. Jobs are also created by DiagnosticLaunch and TerminateDiagnosticInstances, which are APIs available only to *Support* and only used in response to relevant support tickets.
    public func describeJobs(_ input: DescribeJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeJobsResponse> {
        return self.client.execute(operation: "DescribeJobs", path: "/DescribeJobs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all Recovery Instances or multiple Recovery Instances by ID.
    public func describeRecoveryInstances(_ input: DescribeRecoveryInstancesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecoveryInstancesResponse> {
        return self.client.execute(operation: "DescribeRecoveryInstances", path: "/DescribeRecoveryInstances", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all Recovery Snapshots for a single Source Server.
    public func describeRecoverySnapshots(_ input: DescribeRecoverySnapshotsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecoverySnapshotsResponse> {
        return self.client.execute(operation: "DescribeRecoverySnapshots", path: "/DescribeRecoverySnapshots", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all ReplicationConfigurationTemplates, filtered by Source Server IDs.
    public func describeReplicationConfigurationTemplates(_ input: DescribeReplicationConfigurationTemplatesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReplicationConfigurationTemplatesResponse> {
        return self.client.execute(operation: "DescribeReplicationConfigurationTemplates", path: "/DescribeReplicationConfigurationTemplates", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all Source Servers or multiple Source Servers filtered by ID.
    public func describeSourceServers(_ input: DescribeSourceServersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSourceServersResponse> {
        return self.client.execute(operation: "DescribeSourceServers", path: "/DescribeSourceServers", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disconnect a Recovery Instance from Elastic Disaster Recovery. Data replication is stopped immediately. All AWS resources created by Elastic Disaster Recovery for enabling the replication of the Recovery Instance will be terminated / deleted within 90 minutes. If the agent on the Recovery Instance has not been prevented from communicating with the Elastic Disaster Recovery service, then it will receive a command to uninstall itself (within approximately 10 minutes). The following properties of the Recovery Instance will be changed immediately: dataReplicationInfo.dataReplicationState will be set to DISCONNECTED; The totalStorageBytes property for each of dataReplicationInfo.replicatedDisks will be set to zero; dataReplicationInfo.lagDuration and dataReplicationInfo.lagDuration will be nullified.
    @discardableResult public func disconnectRecoveryInstance(_ input: DisconnectRecoveryInstanceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DisconnectRecoveryInstance", path: "/DisconnectRecoveryInstance", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disconnects a specific Source Server from Elastic Disaster Recovery. Data replication is stopped immediately. All AWS resources created by Elastic Disaster Recovery for enabling the replication of the Source Server will be terminated / deleted within 90 minutes. You cannot disconnect a Source Server if it has a Recovery Instance. If the agent on the Source Server has not been prevented from communicating with the Elastic Disaster Recovery service, then it will receive a command to uninstall itself (within approximately 10 minutes). The following properties of the SourceServer will be changed immediately: dataReplicationInfo.dataReplicationState will be set to DISCONNECTED; The totalStorageBytes property for each of dataReplicationInfo.replicatedDisks will be set to zero; dataReplicationInfo.lagDuration and dataReplicationInfo.lagDuration will be nullified.
    public func disconnectSourceServer(_ input: DisconnectSourceServerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SourceServer> {
        return self.client.execute(operation: "DisconnectSourceServer", path: "/DisconnectSourceServer", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all Failback ReplicationConfigurations, filtered by Recovery Instance ID.
    public func getFailbackReplicationConfiguration(_ input: GetFailbackReplicationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFailbackReplicationConfigurationResponse> {
        return self.client.execute(operation: "GetFailbackReplicationConfiguration", path: "/GetFailbackReplicationConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a LaunchConfiguration, filtered by Source Server IDs.
    public func getLaunchConfiguration(_ input: GetLaunchConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<LaunchConfiguration> {
        return self.client.execute(operation: "GetLaunchConfiguration", path: "/GetLaunchConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a ReplicationConfiguration, filtered by Source Server ID.
    public func getReplicationConfiguration(_ input: GetReplicationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReplicationConfiguration> {
        return self.client.execute(operation: "GetReplicationConfiguration", path: "/GetReplicationConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Initialize Elastic Disaster Recovery.
    public func initializeService(_ input: InitializeServiceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InitializeServiceResponse> {
        return self.client.execute(operation: "InitializeService", path: "/InitializeService", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of source servers on a staging account that are extensible, which means that: a. The source server is not already extended into this Account. b. The source server on the Account we’re reading from is not an extension of another source server.
    public func listExtensibleSourceServers(_ input: ListExtensibleSourceServersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListExtensibleSourceServersResponse> {
        return self.client.execute(operation: "ListExtensibleSourceServers", path: "/ListExtensibleSourceServers", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an array of staging accounts for existing extended source servers.
    public func listStagingAccounts(_ input: ListStagingAccountsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListStagingAccountsResponse> {
        return self.client.execute(operation: "ListStagingAccounts", path: "/ListStagingAccounts", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List all tags for your Elastic Disaster Recovery resources.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Causes the data replication initiation sequence to begin immediately upon next Handshake for the specified Source Server ID, regardless of when the previous initiation started. This command will work only if the Source Server is stalled or is in a DISCONNECTED or STOPPED state.
    public func retryDataReplication(_ input: RetryDataReplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SourceServer> {
        return self.client.execute(operation: "RetryDataReplication", path: "/RetryDataReplication", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Initiates a Job for launching the machine that is being failed back to from the specified Recovery Instance. This will run conversion on the failback client and will reboot your machine, thus completing the failback process.
    public func startFailbackLaunch(_ input: StartFailbackLaunchRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartFailbackLaunchResponse> {
        return self.client.execute(operation: "StartFailbackLaunch", path: "/StartFailbackLaunch", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Launches Recovery Instances for the specified Source Servers. For each Source Server you may choose a point in time snapshot to launch from, or use an on demand snapshot.
    public func startRecovery(_ input: StartRecoveryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartRecoveryResponse> {
        return self.client.execute(operation: "StartRecovery", path: "/StartRecovery", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops the failback process for a specified Recovery Instance. This changes the Failback State of the Recovery Instance back to FAILBACK_NOT_STARTED.
    @discardableResult public func stopFailback(_ input: StopFailbackRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "StopFailback", path: "/StopFailback", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds or overwrites only the specified tags for the specified Elastic Disaster Recovery resource or resources. When you specify an existing tag key, the value is overwritten with the new value. Each resource can have a maximum of 50 tags. Each tag consists of a key and optional value.
    @discardableResult public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Initiates a Job for terminating the EC2 resources associated with the specified Recovery Instances, and then will delete the Recovery Instances from the Elastic Disaster Recovery service.
    public func terminateRecoveryInstances(_ input: TerminateRecoveryInstancesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TerminateRecoveryInstancesResponse> {
        return self.client.execute(operation: "TerminateRecoveryInstances", path: "/TerminateRecoveryInstances", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified set of tags from the specified set of Elastic Disaster Recovery resources.
    @discardableResult public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Allows you to update the failback replication configuration of a Recovery Instance by ID.
    @discardableResult public func updateFailbackReplicationConfiguration(_ input: UpdateFailbackReplicationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UpdateFailbackReplicationConfiguration", path: "/UpdateFailbackReplicationConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a LaunchConfiguration by Source Server ID.
    public func updateLaunchConfiguration(_ input: UpdateLaunchConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<LaunchConfiguration> {
        return self.client.execute(operation: "UpdateLaunchConfiguration", path: "/UpdateLaunchConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Allows you to update a ReplicationConfiguration by Source Server ID.
    public func updateReplicationConfiguration(_ input: UpdateReplicationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReplicationConfiguration> {
        return self.client.execute(operation: "UpdateReplicationConfiguration", path: "/UpdateReplicationConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a ReplicationConfigurationTemplate by ID.
    public func updateReplicationConfigurationTemplate(_ input: UpdateReplicationConfigurationTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReplicationConfigurationTemplate> {
        return self.client.execute(operation: "UpdateReplicationConfigurationTemplate", path: "/UpdateReplicationConfigurationTemplate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension Drs {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Drs, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
