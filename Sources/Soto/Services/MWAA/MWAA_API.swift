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

/// Service object for interacting with AWS MWAA service.
///
/// Amazon Managed Workflows for Apache Airflow This section contains the Amazon Managed Workflows for Apache Airflow (MWAA) API reference documentation. For more information, see What Is Amazon MWAA?.  Endpoints     api.airflow.{region}.amazonaws.com - This endpoint is used for environment management.    CreateEnvironment     DeleteEnvironment     GetEnvironment     ListEnvironments     ListTagsForResource     TagResource     UntagResource     UpdateEnvironment       env.airflow.{region}.amazonaws.com - This endpoint is used to operate the Airflow environment.     CreateCliToken     CreateWebLoginToken       ops.airflow.{region}.amazonaws.com - This endpoint is used to push environment metrics that track environment health.     PublishMetrics       Regions  For a list of regions that Amazon MWAA supports, see Region availability in the Amazon MWAA User Guide.
public struct MWAA: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the MWAA client
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
            service: "mwaa",
            signingName: "airflow",
            serviceProtocol: .restjson,
            apiVersion: "2020-07-01",
            endpoint: endpoint,
            errorType: MWAAErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Creates a CLI token for the Airflow CLI. To learn more, see Creating an Apache Airflow CLI token.
    public func createCliToken(_ input: CreateCliTokenRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCliTokenResponse> {
        return self.client.execute(operation: "CreateCliToken", path: "/clitoken/{Name}", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "env.", logger: logger, on: eventLoop)
    }

    /// Creates an Amazon Managed Workflows for Apache Airflow (MWAA) environment.
    public func createEnvironment(_ input: CreateEnvironmentInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEnvironmentOutput> {
        return self.client.execute(operation: "CreateEnvironment", path: "/environments/{Name}", httpMethod: .PUT, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Creates a web login token for the Airflow Web UI. To learn more, see Creating an Apache Airflow web login token.
    public func createWebLoginToken(_ input: CreateWebLoginTokenRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateWebLoginTokenResponse> {
        return self.client.execute(operation: "CreateWebLoginToken", path: "/webtoken/{Name}", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "env.", logger: logger, on: eventLoop)
    }

    /// Deletes an Amazon Managed Workflows for Apache Airflow (MWAA) environment.
    public func deleteEnvironment(_ input: DeleteEnvironmentInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEnvironmentOutput> {
        return self.client.execute(operation: "DeleteEnvironment", path: "/environments/{Name}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Describes an Amazon Managed Workflows for Apache Airflow (MWAA) environment.
    public func getEnvironment(_ input: GetEnvironmentInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetEnvironmentOutput> {
        return self.client.execute(operation: "GetEnvironment", path: "/environments/{Name}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Lists the Amazon Managed Workflows for Apache Airflow (MWAA) environments.
    public func listEnvironments(_ input: ListEnvironmentsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListEnvironmentsOutput> {
        return self.client.execute(operation: "ListEnvironments", path: "/environments", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Lists the key-value tag pairs associated to the Amazon Managed Workflows for Apache Airflow (MWAA) environment. For example, "Environment": "Staging".
    public func listTagsForResource(_ input: ListTagsForResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceOutput> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    ///  Internal only. Publishes environment health metrics to Amazon CloudWatch.
    public func publishMetrics(_ input: PublishMetricsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PublishMetricsOutput> {
        return self.client.execute(operation: "PublishMetrics", path: "/metrics/environments/{EnvironmentName}", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "ops.", logger: logger, on: eventLoop)
    }

    /// Associates key-value tag pairs to your Amazon Managed Workflows for Apache Airflow (MWAA) environment.
    public func tagResource(_ input: TagResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceOutput> {
        return self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Removes key-value tag pairs associated to your Amazon Managed Workflows for Apache Airflow (MWAA) environment. For example, "Environment": "Staging".
    public func untagResource(_ input: UntagResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceOutput> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Updates an Amazon Managed Workflows for Apache Airflow (MWAA) environment.
    public func updateEnvironment(_ input: UpdateEnvironmentInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateEnvironmentOutput> {
        return self.client.execute(operation: "UpdateEnvironment", path: "/environments/{Name}", httpMethod: .PATCH, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }
}

extension MWAA {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: MWAA, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
