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

/// Service object for interacting with AWS Amplify service.
///
/// Amplify enables developers to develop and deploy cloud-powered mobile and web apps. The Amplify Console provides a continuous delivery and hosting service for web applications. For more information, see the Amplify Console User Guide. The Amplify Framework is a comprehensive set of SDKs, libraries, tools, and documentation for client app development. For more information, see the Amplify Framework.
public struct Amplify: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Amplify client
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
            service: "amplify",
            serviceProtocol: .restjson,
            apiVersion: "2017-07-25",
            endpoint: endpoint,
            errorType: AmplifyErrorType.self,
            xmlNamespace: "http://amplify.amazonaws.com",
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    ///  Creates a new Amplify app.
    public func createApp(_ input: CreateAppRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAppResult> {
        return self.client.execute(operation: "CreateApp", path: "/apps", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a new backend environment for an Amplify app.
    public func createBackendEnvironment(_ input: CreateBackendEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBackendEnvironmentResult> {
        return self.client.execute(operation: "CreateBackendEnvironment", path: "/apps/{appId}/backendenvironments", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a new branch for an Amplify app.
    public func createBranch(_ input: CreateBranchRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBranchResult> {
        return self.client.execute(operation: "CreateBranch", path: "/apps/{appId}/branches", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a deployment for a manually deployed Amplify app. Manually deployed apps are not connected to a repository.
    public func createDeployment(_ input: CreateDeploymentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDeploymentResult> {
        return self.client.execute(operation: "CreateDeployment", path: "/apps/{appId}/branches/{branchName}/deployments", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a new domain association for an Amplify app. This action associates a custom domain with the Amplify app
    public func createDomainAssociation(_ input: CreateDomainAssociationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDomainAssociationResult> {
        return self.client.execute(operation: "CreateDomainAssociation", path: "/apps/{appId}/domains", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a new webhook on an Amplify app.
    public func createWebhook(_ input: CreateWebhookRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateWebhookResult> {
        return self.client.execute(operation: "CreateWebhook", path: "/apps/{appId}/webhooks", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes an existing Amplify app specified by an app ID.
    public func deleteApp(_ input: DeleteAppRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAppResult> {
        return self.client.execute(operation: "DeleteApp", path: "/apps/{appId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes a backend environment for an Amplify app.
    public func deleteBackendEnvironment(_ input: DeleteBackendEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteBackendEnvironmentResult> {
        return self.client.execute(operation: "DeleteBackendEnvironment", path: "/apps/{appId}/backendenvironments/{environmentName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes a branch for an Amplify app.
    public func deleteBranch(_ input: DeleteBranchRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteBranchResult> {
        return self.client.execute(operation: "DeleteBranch", path: "/apps/{appId}/branches/{branchName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes a domain association for an Amplify app.
    public func deleteDomainAssociation(_ input: DeleteDomainAssociationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDomainAssociationResult> {
        return self.client.execute(operation: "DeleteDomainAssociation", path: "/apps/{appId}/domains/{domainName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes a job for a branch of an Amplify app.
    public func deleteJob(_ input: DeleteJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteJobResult> {
        return self.client.execute(operation: "DeleteJob", path: "/apps/{appId}/branches/{branchName}/jobs/{jobId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes a webhook.
    public func deleteWebhook(_ input: DeleteWebhookRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteWebhookResult> {
        return self.client.execute(operation: "DeleteWebhook", path: "/webhooks/{webhookId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns the website access logs for a specific time range using a presigned URL.
    public func generateAccessLogs(_ input: GenerateAccessLogsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GenerateAccessLogsResult> {
        return self.client.execute(operation: "GenerateAccessLogs", path: "/apps/{appId}/accesslogs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns an existing Amplify app by appID.
    public func getApp(_ input: GetAppRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAppResult> {
        return self.client.execute(operation: "GetApp", path: "/apps/{appId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns the artifact info that corresponds to an artifact id.
    public func getArtifactUrl(_ input: GetArtifactUrlRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetArtifactUrlResult> {
        return self.client.execute(operation: "GetArtifactUrl", path: "/artifacts/{artifactId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a backend environment for an Amplify app.
    public func getBackendEnvironment(_ input: GetBackendEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetBackendEnvironmentResult> {
        return self.client.execute(operation: "GetBackendEnvironment", path: "/apps/{appId}/backendenvironments/{environmentName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a branch for an Amplify app.
    public func getBranch(_ input: GetBranchRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetBranchResult> {
        return self.client.execute(operation: "GetBranch", path: "/apps/{appId}/branches/{branchName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns the domain information for an Amplify app.
    public func getDomainAssociation(_ input: GetDomainAssociationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDomainAssociationResult> {
        return self.client.execute(operation: "GetDomainAssociation", path: "/apps/{appId}/domains/{domainName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a job for a branch of an Amplify app.
    public func getJob(_ input: GetJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetJobResult> {
        return self.client.execute(operation: "GetJob", path: "/apps/{appId}/branches/{branchName}/jobs/{jobId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns the webhook information that corresponds to a specified webhook ID.
    public func getWebhook(_ input: GetWebhookRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetWebhookResult> {
        return self.client.execute(operation: "GetWebhook", path: "/webhooks/{webhookId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of the existing Amplify apps.
    public func listApps(_ input: ListAppsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAppsResult> {
        return self.client.execute(operation: "ListApps", path: "/apps", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of artifacts for a specified app, branch, and job.
    public func listArtifacts(_ input: ListArtifactsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListArtifactsResult> {
        return self.client.execute(operation: "ListArtifacts", path: "/apps/{appId}/branches/{branchName}/jobs/{jobId}/artifacts", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Lists the backend environments for an Amplify app.
    public func listBackendEnvironments(_ input: ListBackendEnvironmentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListBackendEnvironmentsResult> {
        return self.client.execute(operation: "ListBackendEnvironments", path: "/apps/{appId}/backendenvironments", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Lists the branches of an Amplify app.
    public func listBranches(_ input: ListBranchesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListBranchesResult> {
        return self.client.execute(operation: "ListBranches", path: "/apps/{appId}/branches", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns the domain associations for an Amplify app.
    public func listDomainAssociations(_ input: ListDomainAssociationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDomainAssociationsResult> {
        return self.client.execute(operation: "ListDomainAssociations", path: "/apps/{appId}/domains", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Lists the jobs for a branch of an Amplify app.
    public func listJobs(_ input: ListJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListJobsResult> {
        return self.client.execute(operation: "ListJobs", path: "/apps/{appId}/branches/{branchName}/jobs", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of tags for a specified Amazon Resource Name (ARN).
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of webhooks for an Amplify app.
    public func listWebhooks(_ input: ListWebhooksRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListWebhooksResult> {
        return self.client.execute(operation: "ListWebhooks", path: "/apps/{appId}/webhooks", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Starts a deployment for a manually deployed app. Manually deployed apps are not connected to a repository.
    public func startDeployment(_ input: StartDeploymentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartDeploymentResult> {
        return self.client.execute(operation: "StartDeployment", path: "/apps/{appId}/branches/{branchName}/deployments/start", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Starts a new job for a branch of an Amplify app.
    public func startJob(_ input: StartJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartJobResult> {
        return self.client.execute(operation: "StartJob", path: "/apps/{appId}/branches/{branchName}/jobs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Stops a job that is in progress for a branch of an Amplify app.
    public func stopJob(_ input: StopJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopJobResult> {
        return self.client.execute(operation: "StopJob", path: "/apps/{appId}/branches/{branchName}/jobs/{jobId}/stop", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Tags the resource with a tag key and value.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Untags a resource with a specified Amazon Resource Name (ARN).
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates an existing Amplify app.
    public func updateApp(_ input: UpdateAppRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAppResult> {
        return self.client.execute(operation: "UpdateApp", path: "/apps/{appId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates a branch for an Amplify app.
    public func updateBranch(_ input: UpdateBranchRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateBranchResult> {
        return self.client.execute(operation: "UpdateBranch", path: "/apps/{appId}/branches/{branchName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a new domain association for an Amplify app.
    public func updateDomainAssociation(_ input: UpdateDomainAssociationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDomainAssociationResult> {
        return self.client.execute(operation: "UpdateDomainAssociation", path: "/apps/{appId}/domains/{domainName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates a webhook.
    public func updateWebhook(_ input: UpdateWebhookRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateWebhookResult> {
        return self.client.execute(operation: "UpdateWebhook", path: "/webhooks/{webhookId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension Amplify {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Amplify, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
