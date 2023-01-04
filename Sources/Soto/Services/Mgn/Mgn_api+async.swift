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
extension Mgn {
    // MARK: Async API Calls

    /// Archive application.
    public func archiveApplication(_ input: ArchiveApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> Application {
        return try await self.client.execute(operation: "ArchiveApplication", path: "/ArchiveApplication", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Archive wave.
    public func archiveWave(_ input: ArchiveWaveRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> Wave {
        return try await self.client.execute(operation: "ArchiveWave", path: "/ArchiveWave", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Associate applications to wave.
    public func associateApplications(_ input: AssociateApplicationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateApplicationsResponse {
        return try await self.client.execute(operation: "AssociateApplications", path: "/AssociateApplications", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Associate source servers to application.
    public func associateSourceServers(_ input: AssociateSourceServersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateSourceServersResponse {
        return try await self.client.execute(operation: "AssociateSourceServers", path: "/AssociateSourceServers", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Allows the user to set the SourceServer.LifeCycle.state property for specific Source Server IDs to one of the following: READY_FOR_TEST or READY_FOR_CUTOVER. This command only works if the Source Server is already launchable (dataReplicationInfo.lagDuration is not null.)
    public func changeServerLifeCycleState(_ input: ChangeServerLifeCycleStateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SourceServer {
        return try await self.client.execute(operation: "ChangeServerLifeCycleState", path: "/ChangeServerLifeCycleState", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create application.
    public func createApplication(_ input: CreateApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> Application {
        return try await self.client.execute(operation: "CreateApplication", path: "/CreateApplication", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new Launch Configuration Template.
    public func createLaunchConfigurationTemplate(_ input: CreateLaunchConfigurationTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> LaunchConfigurationTemplate {
        return try await self.client.execute(operation: "CreateLaunchConfigurationTemplate", path: "/CreateLaunchConfigurationTemplate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new ReplicationConfigurationTemplate.
    public func createReplicationConfigurationTemplate(_ input: CreateReplicationConfigurationTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReplicationConfigurationTemplate {
        return try await self.client.execute(operation: "CreateReplicationConfigurationTemplate", path: "/CreateReplicationConfigurationTemplate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create wave.
    public func createWave(_ input: CreateWaveRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> Wave {
        return try await self.client.execute(operation: "CreateWave", path: "/CreateWave", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete application.
    public func deleteApplication(_ input: DeleteApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteApplicationResponse {
        return try await self.client.execute(operation: "DeleteApplication", path: "/DeleteApplication", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a single Job by ID.
    public func deleteJob(_ input: DeleteJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteJobResponse {
        return try await self.client.execute(operation: "DeleteJob", path: "/DeleteJob", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a single Launch Configuration Template by ID.
    public func deleteLaunchConfigurationTemplate(_ input: DeleteLaunchConfigurationTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLaunchConfigurationTemplateResponse {
        return try await self.client.execute(operation: "DeleteLaunchConfigurationTemplate", path: "/DeleteLaunchConfigurationTemplate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a single Replication Configuration Template by ID
    public func deleteReplicationConfigurationTemplate(_ input: DeleteReplicationConfigurationTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteReplicationConfigurationTemplateResponse {
        return try await self.client.execute(operation: "DeleteReplicationConfigurationTemplate", path: "/DeleteReplicationConfigurationTemplate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a single source server by ID.
    public func deleteSourceServer(_ input: DeleteSourceServerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSourceServerResponse {
        return try await self.client.execute(operation: "DeleteSourceServer", path: "/DeleteSourceServer", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a given vCenter client by ID.
    public func deleteVcenterClient(_ input: DeleteVcenterClientRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteVcenterClient", path: "/DeleteVcenterClient", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete wave.
    public func deleteWave(_ input: DeleteWaveRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteWaveResponse {
        return try await self.client.execute(operation: "DeleteWave", path: "/DeleteWave", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves detailed job log items with paging.
    public func describeJobLogItems(_ input: DescribeJobLogItemsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeJobLogItemsResponse {
        return try await self.client.execute(operation: "DescribeJobLogItems", path: "/DescribeJobLogItems", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of Jobs. Use the JobsID and fromDate and toData filters to limit which jobs are returned. The response is sorted by creationDataTime - latest date first. Jobs are normally created by the StartTest, StartCutover, and TerminateTargetInstances APIs. Jobs are also created by DiagnosticLaunch and TerminateDiagnosticInstances, which are APIs available only to *Support* and only used in response to relevant support tickets.
    public func describeJobs(_ input: DescribeJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeJobsResponse {
        return try await self.client.execute(operation: "DescribeJobs", path: "/DescribeJobs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all Launch Configuration Templates, filtered by Launch Configuration Template IDs
    public func describeLaunchConfigurationTemplates(_ input: DescribeLaunchConfigurationTemplatesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLaunchConfigurationTemplatesResponse {
        return try await self.client.execute(operation: "DescribeLaunchConfigurationTemplates", path: "/DescribeLaunchConfigurationTemplates", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all ReplicationConfigurationTemplates, filtered by Source Server IDs.
    public func describeReplicationConfigurationTemplates(_ input: DescribeReplicationConfigurationTemplatesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReplicationConfigurationTemplatesResponse {
        return try await self.client.execute(operation: "DescribeReplicationConfigurationTemplates", path: "/DescribeReplicationConfigurationTemplates", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves all SourceServers or multiple SourceServers by ID.
    public func describeSourceServers(_ input: DescribeSourceServersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSourceServersResponse {
        return try await self.client.execute(operation: "DescribeSourceServers", path: "/DescribeSourceServers", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of the installed vCenter clients.
    public func describeVcenterClients(_ input: DescribeVcenterClientsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVcenterClientsResponse {
        return try await self.client.execute(operation: "DescribeVcenterClients", path: "/DescribeVcenterClients", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociate applications from wave.
    public func disassociateApplications(_ input: DisassociateApplicationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateApplicationsResponse {
        return try await self.client.execute(operation: "DisassociateApplications", path: "/DisassociateApplications", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociate source servers from application.
    public func disassociateSourceServers(_ input: DisassociateSourceServersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateSourceServersResponse {
        return try await self.client.execute(operation: "DisassociateSourceServers", path: "/DisassociateSourceServers", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disconnects specific Source Servers from Application Migration Service. Data replication is stopped immediately. All AWS resources created by Application Migration Service for enabling the replication of these source servers will be terminated / deleted within 90 minutes. Launched Test or Cutover instances will NOT be terminated. If the agent on the source server has not been prevented from communicating with the Application Migration Service service, then it will receive a command to uninstall itself (within approximately 10 minutes). The following properties of the SourceServer will be changed immediately: dataReplicationInfo.dataReplicationState will be set to DISCONNECTED; The totalStorageBytes property for each of dataReplicationInfo.replicatedDisks will be set to zero; dataReplicationInfo.lagDuration and dataReplicationInfo.lagDuration will be nullified.
    public func disconnectFromService(_ input: DisconnectFromServiceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SourceServer {
        return try await self.client.execute(operation: "DisconnectFromService", path: "/DisconnectFromService", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Finalizes the cutover immediately for specific Source Servers. All AWS resources created by Application Migration Service for enabling the replication of these source servers will be terminated / deleted within 90 minutes. Launched Test or Cutover instances will NOT be terminated. The AWS Replication Agent will receive a command to uninstall itself (within 10 minutes). The following properties of the SourceServer will be changed immediately: dataReplicationInfo.dataReplicationState will be changed to DISCONNECTED; The SourceServer.lifeCycle.state will be changed to CUTOVER; The totalStorageBytes property fo each of dataReplicationInfo.replicatedDisks will be set to zero; dataReplicationInfo.lagDuration and dataReplicationInfo.lagDuration will be nullified.
    public func finalizeCutover(_ input: FinalizeCutoverRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SourceServer {
        return try await self.client.execute(operation: "FinalizeCutover", path: "/FinalizeCutover", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all LaunchConfigurations available, filtered by Source Server IDs.
    public func getLaunchConfiguration(_ input: GetLaunchConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> LaunchConfiguration {
        return try await self.client.execute(operation: "GetLaunchConfiguration", path: "/GetLaunchConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all ReplicationConfigurations, filtered by Source Server ID.
    public func getReplicationConfiguration(_ input: GetReplicationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReplicationConfiguration {
        return try await self.client.execute(operation: "GetReplicationConfiguration", path: "/GetReplicationConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Initialize Application Migration Service.
    public func initializeService(_ input: InitializeServiceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InitializeServiceResponse {
        return try await self.client.execute(operation: "InitializeService", path: "/InitializeService", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves all applications or multiple applications by ID.
    public func listApplications(_ input: ListApplicationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListApplicationsResponse {
        return try await self.client.execute(operation: "ListApplications", path: "/ListApplications", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List source server post migration custom actions.
    public func listSourceServerActions(_ input: ListSourceServerActionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSourceServerActionsResponse {
        return try await self.client.execute(operation: "ListSourceServerActions", path: "/ListSourceServerActions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List all tags for your Application Migration Service resources.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List template post migration custom actions.
    public func listTemplateActions(_ input: ListTemplateActionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTemplateActionsResponse {
        return try await self.client.execute(operation: "ListTemplateActions", path: "/ListTemplateActions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves all waves or multiple waves by ID.
    public func listWaves(_ input: ListWavesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListWavesResponse {
        return try await self.client.execute(operation: "ListWaves", path: "/ListWaves", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Archives specific Source Servers by setting the SourceServer.isArchived property to true for specified SourceServers by ID. This command only works for SourceServers with a lifecycle. state which equals DISCONNECTED or CUTOVER.
    public func markAsArchived(_ input: MarkAsArchivedRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SourceServer {
        return try await self.client.execute(operation: "MarkAsArchived", path: "/MarkAsArchived", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Put source server post migration custom action.
    public func putSourceServerAction(_ input: PutSourceServerActionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SourceServerActionDocument {
        return try await self.client.execute(operation: "PutSourceServerAction", path: "/PutSourceServerAction", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Put template post migration custom action.
    public func putTemplateAction(_ input: PutTemplateActionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TemplateActionDocument {
        return try await self.client.execute(operation: "PutTemplateAction", path: "/PutTemplateAction", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Remove source server post migration custom action.
    public func removeSourceServerAction(_ input: RemoveSourceServerActionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveSourceServerActionResponse {
        return try await self.client.execute(operation: "RemoveSourceServerAction", path: "/RemoveSourceServerAction", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Remove template post migration custom action.
    public func removeTemplateAction(_ input: RemoveTemplateActionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveTemplateActionResponse {
        return try await self.client.execute(operation: "RemoveTemplateAction", path: "/RemoveTemplateAction", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Causes the data replication initiation sequence to begin immediately upon next Handshake for specified SourceServer IDs, regardless of when the previous initiation started. This command will not work if the SourceServer is not stalled or is in a DISCONNECTED or STOPPED state.
    public func retryDataReplication(_ input: RetryDataReplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SourceServer {
        return try await self.client.execute(operation: "RetryDataReplication", path: "/RetryDataReplication", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Launches a Cutover Instance for specific Source Servers. This command starts a LAUNCH job whose initiatedBy property is StartCutover and changes the SourceServer.lifeCycle.state property to CUTTING_OVER.
    public func startCutover(_ input: StartCutoverRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartCutoverResponse {
        return try await self.client.execute(operation: "StartCutover", path: "/StartCutover", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts replication for SNAPSHOT_SHIPPING agents.
    public func startReplication(_ input: StartReplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SourceServer {
        return try await self.client.execute(operation: "StartReplication", path: "/StartReplication", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Launches a Test Instance for specific Source Servers. This command starts a LAUNCH job whose initiatedBy property is StartTest and changes the SourceServer.lifeCycle.state property to TESTING.
    public func startTest(_ input: StartTestRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartTestResponse {
        return try await self.client.execute(operation: "StartTest", path: "/StartTest", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds or overwrites only the specified tags for the specified Application Migration Service resource or resources. When you specify an existing tag key, the value is overwritten with the new value. Each resource can have a maximum of 50 tags. Each tag consists of a key and optional value.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts a job that terminates specific launched EC2 Test and Cutover instances. This command will not work for any Source Server with a lifecycle.state of TESTING, CUTTING_OVER, or CUTOVER.
    public func terminateTargetInstances(_ input: TerminateTargetInstancesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TerminateTargetInstancesResponse {
        return try await self.client.execute(operation: "TerminateTargetInstances", path: "/TerminateTargetInstances", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Unarchive application.
    public func unarchiveApplication(_ input: UnarchiveApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> Application {
        return try await self.client.execute(operation: "UnarchiveApplication", path: "/UnarchiveApplication", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Unarchive wave.
    public func unarchiveWave(_ input: UnarchiveWaveRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> Wave {
        return try await self.client.execute(operation: "UnarchiveWave", path: "/UnarchiveWave", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified set of tags from the specified set of Application Migration Service resources.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update application.
    public func updateApplication(_ input: UpdateApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> Application {
        return try await self.client.execute(operation: "UpdateApplication", path: "/UpdateApplication", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates multiple LaunchConfigurations by Source Server ID.
    public func updateLaunchConfiguration(_ input: UpdateLaunchConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> LaunchConfiguration {
        return try await self.client.execute(operation: "UpdateLaunchConfiguration", path: "/UpdateLaunchConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing Launch Configuration Template by ID.
    public func updateLaunchConfigurationTemplate(_ input: UpdateLaunchConfigurationTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> LaunchConfigurationTemplate {
        return try await self.client.execute(operation: "UpdateLaunchConfigurationTemplate", path: "/UpdateLaunchConfigurationTemplate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Allows you to update multiple ReplicationConfigurations by Source Server ID.
    public func updateReplicationConfiguration(_ input: UpdateReplicationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReplicationConfiguration {
        return try await self.client.execute(operation: "UpdateReplicationConfiguration", path: "/UpdateReplicationConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates multiple ReplicationConfigurationTemplates by ID.
    public func updateReplicationConfigurationTemplate(_ input: UpdateReplicationConfigurationTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReplicationConfigurationTemplate {
        return try await self.client.execute(operation: "UpdateReplicationConfigurationTemplate", path: "/UpdateReplicationConfigurationTemplate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Allows you to change between the AGENT_BASED replication type and the SNAPSHOT_SHIPPING replication type.
    public func updateSourceServerReplicationType(_ input: UpdateSourceServerReplicationTypeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SourceServer {
        return try await self.client.execute(operation: "UpdateSourceServerReplicationType", path: "/UpdateSourceServerReplicationType", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update wave.
    public func updateWave(_ input: UpdateWaveRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> Wave {
        return try await self.client.execute(operation: "UpdateWave", path: "/UpdateWave", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Mgn {
    ///  Retrieves detailed job log items with paging.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeJobLogItemsPaginator(
        _ input: DescribeJobLogItemsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeJobLogItemsRequest, DescribeJobLogItemsResponse> {
        return .init(
            input: input,
            command: self.describeJobLogItems,
            inputKey: \DescribeJobLogItemsRequest.nextToken,
            outputKey: \DescribeJobLogItemsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of Jobs. Use the JobsID and fromDate and toData filters to limit which jobs are returned. The response is sorted by creationDataTime - latest date first. Jobs are normally created by the StartTest, StartCutover, and TerminateTargetInstances APIs. Jobs are also created by DiagnosticLaunch and TerminateDiagnosticInstances, which are APIs available only to *Support* and only used in response to relevant support tickets.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeJobsPaginator(
        _ input: DescribeJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeJobsRequest, DescribeJobsResponse> {
        return .init(
            input: input,
            command: self.describeJobs,
            inputKey: \DescribeJobsRequest.nextToken,
            outputKey: \DescribeJobsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all Launch Configuration Templates, filtered by Launch Configuration Template IDs
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeLaunchConfigurationTemplatesPaginator(
        _ input: DescribeLaunchConfigurationTemplatesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeLaunchConfigurationTemplatesRequest, DescribeLaunchConfigurationTemplatesResponse> {
        return .init(
            input: input,
            command: self.describeLaunchConfigurationTemplates,
            inputKey: \DescribeLaunchConfigurationTemplatesRequest.nextToken,
            outputKey: \DescribeLaunchConfigurationTemplatesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all ReplicationConfigurationTemplates, filtered by Source Server IDs.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeReplicationConfigurationTemplatesPaginator(
        _ input: DescribeReplicationConfigurationTemplatesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeReplicationConfigurationTemplatesRequest, DescribeReplicationConfigurationTemplatesResponse> {
        return .init(
            input: input,
            command: self.describeReplicationConfigurationTemplates,
            inputKey: \DescribeReplicationConfigurationTemplatesRequest.nextToken,
            outputKey: \DescribeReplicationConfigurationTemplatesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves all SourceServers or multiple SourceServers by ID.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeSourceServersPaginator(
        _ input: DescribeSourceServersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeSourceServersRequest, DescribeSourceServersResponse> {
        return .init(
            input: input,
            command: self.describeSourceServers,
            inputKey: \DescribeSourceServersRequest.nextToken,
            outputKey: \DescribeSourceServersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of the installed vCenter clients.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeVcenterClientsPaginator(
        _ input: DescribeVcenterClientsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeVcenterClientsRequest, DescribeVcenterClientsResponse> {
        return .init(
            input: input,
            command: self.describeVcenterClients,
            inputKey: \DescribeVcenterClientsRequest.nextToken,
            outputKey: \DescribeVcenterClientsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves all applications or multiple applications by ID.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listApplicationsPaginator(
        _ input: ListApplicationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListApplicationsRequest, ListApplicationsResponse> {
        return .init(
            input: input,
            command: self.listApplications,
            inputKey: \ListApplicationsRequest.nextToken,
            outputKey: \ListApplicationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List source server post migration custom actions.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSourceServerActionsPaginator(
        _ input: ListSourceServerActionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSourceServerActionsRequest, ListSourceServerActionsResponse> {
        return .init(
            input: input,
            command: self.listSourceServerActions,
            inputKey: \ListSourceServerActionsRequest.nextToken,
            outputKey: \ListSourceServerActionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List template post migration custom actions.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTemplateActionsPaginator(
        _ input: ListTemplateActionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTemplateActionsRequest, ListTemplateActionsResponse> {
        return .init(
            input: input,
            command: self.listTemplateActions,
            inputKey: \ListTemplateActionsRequest.nextToken,
            outputKey: \ListTemplateActionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves all waves or multiple waves by ID.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listWavesPaginator(
        _ input: ListWavesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListWavesRequest, ListWavesResponse> {
        return .init(
            input: input,
            command: self.listWaves,
            inputKey: \ListWavesRequest.nextToken,
            outputKey: \ListWavesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)