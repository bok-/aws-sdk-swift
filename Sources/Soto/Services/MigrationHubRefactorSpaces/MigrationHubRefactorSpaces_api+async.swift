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
extension MigrationHubRefactorSpaces {
    // MARK: Async API Calls

    /// Creates an Amazon Web Services Migration Hub Refactor Spaces application. The account that owns the environment also owns the applications created inside the environment, regardless of the account that creates the application. Refactor Spaces provisions an Amazon API Gateway, API Gateway VPC link, and Network Load Balancer for the application proxy inside your account.
    public func createApplication(_ input: CreateApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateApplicationResponse {
        return try await self.client.execute(operation: "CreateApplication", path: "/environments/{EnvironmentIdentifier}/applications", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an Amazon Web Services Migration Hub Refactor Spaces environment. The caller owns the environment resource, and all Refactor Spaces applications, services, and routes created within the environment. They are referred to as the environment owner. The environment owner has cross-account visibility and control of Refactor Spaces resources that are added to the environment by other accounts that the environment is shared with. When creating an environment, Refactor Spaces provisions a transit gateway in your account.
    public func createEnvironment(_ input: CreateEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEnvironmentResponse {
        return try await self.client.execute(operation: "CreateEnvironment", path: "/environments", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an Amazon Web Services Migration Hub Refactor Spaces route. The account owner of the service resource is always the environment owner, regardless of which account creates the route. Routes target a service in the application. If an application does not have any routes, then the first route must be created as a DEFAULT RouteType. When created, the default route defaults to an active state so state is not a required input. However, like all other state values the state of the default route can be updated after creation, but only when all other routes are also inactive. Conversely, no route can be active without the default route also being active. When you create a route, Refactor Spaces configures the Amazon API Gateway to send traffic to the target service as follows:   If the service has a URL endpoint, and the endpoint resolves to a private IP address, Refactor Spaces routes traffic using the API Gateway VPC link.    If the service has a URL endpoint, and the endpoint resolves to a public IP address, Refactor Spaces routes traffic over the public internet.   If the service has an Lambda function endpoint, then Refactor Spaces configures the Lambda function's resource policy to allow the application's API Gateway to invoke the function.   A one-time health check is performed on the service when either the route is updated from inactive to active, or when it is created with an active state. If the health check fails, the route transitions the route state to FAILED, an error code of SERVICE_ENDPOINT_HEALTH_CHECK_FAILURE is provided, and no traffic is sent to the service. For Lambda functions, the Lambda function state is checked. If the function is not active, the function configuration is updated so that Lambda resources are provisioned. If the Lambda state is Failed, then the route creation fails. For more information, see the GetFunctionConfiguration's State response parameter in the Lambda Developer Guide. For Lambda endpoints, a check is performed to determine that a Lambda function with the specified ARN exists. If it does not exist, the health check fails. For public URLs, a connection is opened to the public endpoint. If the URL is not reachable, the health check fails.  For private URLS, a target group is created on the Elastic Load Balancing and the target group health check is run. The HealthCheckProtocol, HealthCheckPort, and HealthCheckPath are the same protocol, port, and path specified in the URL or health URL, if used. All other settings use the default values, as described in Health checks for your target groups. The health check is considered successful if at least one target within the target group transitions to a healthy state. Services can have HTTP or HTTPS URL endpoints. For HTTPS URLs, publicly-signed certificates are supported. Private Certificate Authorities (CAs) are permitted only if the CA's domain is also publicly resolvable.
    public func createRoute(_ input: CreateRouteRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRouteResponse {
        return try await self.client.execute(operation: "CreateRoute", path: "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/routes", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an Amazon Web Services Migration Hub Refactor Spaces service. The account owner of the service is always the environment owner, regardless of which account in the environment creates the service. Services have either a URL endpoint in a virtual private cloud (VPC), or a Lambda function endpoint.  If an Amazon Web Services resource is launched in a service VPC, and you want it to be accessible to all of an environment’s services with VPCs and routes, apply the RefactorSpacesSecurityGroup to the resource. Alternatively, to add more cross-account constraints, apply your own security group.
    public func createService(_ input: CreateServiceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateServiceResponse {
        return try await self.client.execute(operation: "CreateService", path: "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/services", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an Amazon Web Services Migration Hub Refactor Spaces application. Before you can delete an application, you must first delete any services or routes within the application.
    public func deleteApplication(_ input: DeleteApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteApplicationResponse {
        return try await self.client.execute(operation: "DeleteApplication", path: "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an Amazon Web Services Migration Hub Refactor Spaces environment. Before you can delete an environment, you must first delete any applications and services within the environment.
    public func deleteEnvironment(_ input: DeleteEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEnvironmentResponse {
        return try await self.client.execute(operation: "DeleteEnvironment", path: "/environments/{EnvironmentIdentifier}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the resource policy set for the environment.
    public func deleteResourcePolicy(_ input: DeleteResourcePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteResourcePolicyResponse {
        return try await self.client.execute(operation: "DeleteResourcePolicy", path: "/resourcepolicy/{Identifier}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an Amazon Web Services Migration Hub Refactor Spaces route.
    public func deleteRoute(_ input: DeleteRouteRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRouteResponse {
        return try await self.client.execute(operation: "DeleteRoute", path: "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/routes/{RouteIdentifier}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an Amazon Web Services Migration Hub Refactor Spaces service.
    public func deleteService(_ input: DeleteServiceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteServiceResponse {
        return try await self.client.execute(operation: "DeleteService", path: "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/services/{ServiceIdentifier}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets an Amazon Web Services Migration Hub Refactor Spaces application.
    public func getApplication(_ input: GetApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetApplicationResponse {
        return try await self.client.execute(operation: "GetApplication", path: "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets an Amazon Web Services Migration Hub Refactor Spaces environment.
    public func getEnvironment(_ input: GetEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetEnvironmentResponse {
        return try await self.client.execute(operation: "GetEnvironment", path: "/environments/{EnvironmentIdentifier}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the resource-based permission policy that is set for the given environment.
    public func getResourcePolicy(_ input: GetResourcePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetResourcePolicyResponse {
        return try await self.client.execute(operation: "GetResourcePolicy", path: "/resourcepolicy/{Identifier}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets an Amazon Web Services Migration Hub Refactor Spaces route.
    public func getRoute(_ input: GetRouteRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRouteResponse {
        return try await self.client.execute(operation: "GetRoute", path: "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/routes/{RouteIdentifier}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets an Amazon Web Services Migration Hub Refactor Spaces service.
    public func getService(_ input: GetServiceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetServiceResponse {
        return try await self.client.execute(operation: "GetService", path: "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/services/{ServiceIdentifier}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all the Amazon Web Services Migration Hub Refactor Spaces applications within an environment.
    public func listApplications(_ input: ListApplicationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListApplicationsResponse {
        return try await self.client.execute(operation: "ListApplications", path: "/environments/{EnvironmentIdentifier}/applications", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all Amazon Web Services Migration Hub Refactor Spaces service virtual private clouds (VPCs) that are part of the environment.
    public func listEnvironmentVpcs(_ input: ListEnvironmentVpcsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListEnvironmentVpcsResponse {
        return try await self.client.execute(operation: "ListEnvironmentVpcs", path: "/environments/{EnvironmentIdentifier}/vpcs", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists Amazon Web Services Migration Hub Refactor Spaces environments owned by a caller account or shared with the caller account.
    public func listEnvironments(_ input: ListEnvironmentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListEnvironmentsResponse {
        return try await self.client.execute(operation: "ListEnvironments", path: "/environments", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all the Amazon Web Services Migration Hub Refactor Spaces routes within an application.
    public func listRoutes(_ input: ListRoutesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListRoutesResponse {
        return try await self.client.execute(operation: "ListRoutes", path: "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/routes", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all the Amazon Web Services Migration Hub Refactor Spaces services within an application.
    public func listServices(_ input: ListServicesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListServicesResponse {
        return try await self.client.execute(operation: "ListServices", path: "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/services", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags of a resource. The caller account must be the same as the resource’s OwnerAccountId. Listing tags in other accounts is not supported.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Attaches a resource-based permission policy to the Amazon Web Services Migration Hub Refactor Spaces environment. The policy must contain the same actions and condition statements as the arn:aws:ram::aws:permission/AWSRAMDefaultPermissionRefactorSpacesEnvironment permission in Resource Access Manager. The policy must not contain new lines or blank lines.
    public func putResourcePolicy(_ input: PutResourcePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutResourcePolicyResponse {
        return try await self.client.execute(operation: "PutResourcePolicy", path: "/resourcepolicy", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the tags of a given resource. Tags are metadata which can be used to manage a resource. To tag a resource, the caller account must be the same as the resource’s OwnerAccountId. Tagging resources in other accounts is not supported.  Amazon Web Services Migration Hub Refactor Spaces does not propagate tags to orchestrated resources, such as an environment’s transit gateway.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds to or modifies the tags of the given resource. Tags are metadata which can be used to manage a resource. To untag a resource, the caller account must be the same as the resource’s OwnerAccountId. Untagging resources across accounts is not supported.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates an Amazon Web Services Migration Hub Refactor Spaces route.
    public func updateRoute(_ input: UpdateRouteRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateRouteResponse {
        return try await self.client.execute(operation: "UpdateRoute", path: "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/routes/{RouteIdentifier}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension MigrationHubRefactorSpaces {
    ///  Lists all the Amazon Web Services Migration Hub Refactor Spaces applications within an environment.
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

    ///  Lists all Amazon Web Services Migration Hub Refactor Spaces service virtual private clouds (VPCs) that are part of the environment.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listEnvironmentVpcsPaginator(
        _ input: ListEnvironmentVpcsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListEnvironmentVpcsRequest, ListEnvironmentVpcsResponse> {
        return .init(
            input: input,
            command: self.listEnvironmentVpcs,
            inputKey: \ListEnvironmentVpcsRequest.nextToken,
            outputKey: \ListEnvironmentVpcsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists Amazon Web Services Migration Hub Refactor Spaces environments owned by a caller account or shared with the caller account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listEnvironmentsPaginator(
        _ input: ListEnvironmentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListEnvironmentsRequest, ListEnvironmentsResponse> {
        return .init(
            input: input,
            command: self.listEnvironments,
            inputKey: \ListEnvironmentsRequest.nextToken,
            outputKey: \ListEnvironmentsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all the Amazon Web Services Migration Hub Refactor Spaces routes within an application.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRoutesPaginator(
        _ input: ListRoutesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRoutesRequest, ListRoutesResponse> {
        return .init(
            input: input,
            command: self.listRoutes,
            inputKey: \ListRoutesRequest.nextToken,
            outputKey: \ListRoutesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all the Amazon Web Services Migration Hub Refactor Spaces services within an application.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listServicesPaginator(
        _ input: ListServicesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListServicesRequest, ListServicesResponse> {
        return .init(
            input: input,
            command: self.listServices,
            inputKey: \ListServicesRequest.nextToken,
            outputKey: \ListServicesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
