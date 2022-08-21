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
extension ApiGatewayV2 {
    // MARK: Async API Calls

    /// Creates an Api resource.
    public func createApi(_ input: CreateApiRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateApiResponse {
        return try await self.client.execute(operation: "CreateApi", path: "/v2/apis", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an API mapping.
    public func createApiMapping(_ input: CreateApiMappingRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateApiMappingResponse {
        return try await self.client.execute(operation: "CreateApiMapping", path: "/v2/domainnames/{DomainName}/apimappings", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an Authorizer for an API.
    public func createAuthorizer(_ input: CreateAuthorizerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAuthorizerResponse {
        return try await self.client.execute(operation: "CreateAuthorizer", path: "/v2/apis/{ApiId}/authorizers", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a Deployment for an API.
    public func createDeployment(_ input: CreateDeploymentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDeploymentResponse {
        return try await self.client.execute(operation: "CreateDeployment", path: "/v2/apis/{ApiId}/deployments", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a domain name.
    public func createDomainName(_ input: CreateDomainNameRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDomainNameResponse {
        return try await self.client.execute(operation: "CreateDomainName", path: "/v2/domainnames", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an Integration.
    public func createIntegration(_ input: CreateIntegrationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateIntegrationResult {
        return try await self.client.execute(operation: "CreateIntegration", path: "/v2/apis/{ApiId}/integrations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an IntegrationResponses.
    public func createIntegrationResponse(_ input: CreateIntegrationResponseRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateIntegrationResponseResponse {
        return try await self.client.execute(operation: "CreateIntegrationResponse", path: "/v2/apis/{ApiId}/integrations/{IntegrationId}/integrationresponses", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a Model for an API.
    public func createModel(_ input: CreateModelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateModelResponse {
        return try await self.client.execute(operation: "CreateModel", path: "/v2/apis/{ApiId}/models", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a Route for an API.
    public func createRoute(_ input: CreateRouteRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRouteResult {
        return try await self.client.execute(operation: "CreateRoute", path: "/v2/apis/{ApiId}/routes", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a RouteResponse for a Route.
    public func createRouteResponse(_ input: CreateRouteResponseRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRouteResponseResponse {
        return try await self.client.execute(operation: "CreateRouteResponse", path: "/v2/apis/{ApiId}/routes/{RouteId}/routeresponses", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a Stage for an API.
    public func createStage(_ input: CreateStageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateStageResponse {
        return try await self.client.execute(operation: "CreateStage", path: "/v2/apis/{ApiId}/stages", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a VPC link.
    public func createVpcLink(_ input: CreateVpcLinkRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVpcLinkResponse {
        return try await self.client.execute(operation: "CreateVpcLink", path: "/v2/vpclinks", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the AccessLogSettings for a Stage. To disable access logging for a Stage, delete its AccessLogSettings.
    public func deleteAccessLogSettings(_ input: DeleteAccessLogSettingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteAccessLogSettings", path: "/v2/apis/{ApiId}/stages/{StageName}/accesslogsettings", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an Api resource.
    public func deleteApi(_ input: DeleteApiRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteApi", path: "/v2/apis/{ApiId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an API mapping.
    public func deleteApiMapping(_ input: DeleteApiMappingRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteApiMapping", path: "/v2/domainnames/{DomainName}/apimappings/{ApiMappingId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an Authorizer.
    public func deleteAuthorizer(_ input: DeleteAuthorizerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteAuthorizer", path: "/v2/apis/{ApiId}/authorizers/{AuthorizerId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a CORS configuration.
    public func deleteCorsConfiguration(_ input: DeleteCorsConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteCorsConfiguration", path: "/v2/apis/{ApiId}/cors", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a Deployment.
    public func deleteDeployment(_ input: DeleteDeploymentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteDeployment", path: "/v2/apis/{ApiId}/deployments/{DeploymentId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a domain name.
    public func deleteDomainName(_ input: DeleteDomainNameRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteDomainName", path: "/v2/domainnames/{DomainName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an Integration.
    public func deleteIntegration(_ input: DeleteIntegrationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteIntegration", path: "/v2/apis/{ApiId}/integrations/{IntegrationId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an IntegrationResponses.
    public func deleteIntegrationResponse(_ input: DeleteIntegrationResponseRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteIntegrationResponse", path: "/v2/apis/{ApiId}/integrations/{IntegrationId}/integrationresponses/{IntegrationResponseId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a Model.
    public func deleteModel(_ input: DeleteModelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteModel", path: "/v2/apis/{ApiId}/models/{ModelId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a Route.
    public func deleteRoute(_ input: DeleteRouteRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteRoute", path: "/v2/apis/{ApiId}/routes/{RouteId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a route request parameter.
    public func deleteRouteRequestParameter(_ input: DeleteRouteRequestParameterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteRouteRequestParameter", path: "/v2/apis/{ApiId}/routes/{RouteId}/requestparameters/{RequestParameterKey}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a RouteResponse.
    public func deleteRouteResponse(_ input: DeleteRouteResponseRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteRouteResponse", path: "/v2/apis/{ApiId}/routes/{RouteId}/routeresponses/{RouteResponseId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the RouteSettings for a stage.
    public func deleteRouteSettings(_ input: DeleteRouteSettingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteRouteSettings", path: "/v2/apis/{ApiId}/stages/{StageName}/routesettings/{RouteKey}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a Stage.
    public func deleteStage(_ input: DeleteStageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteStage", path: "/v2/apis/{ApiId}/stages/{StageName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a VPC link.
    public func deleteVpcLink(_ input: DeleteVpcLinkRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVpcLinkResponse {
        return try await self.client.execute(operation: "DeleteVpcLink", path: "/v2/vpclinks/{VpcLinkId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func exportApi(_ input: ExportApiRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportApiResponse {
        return try await self.client.execute(operation: "ExportApi", path: "/v2/apis/{ApiId}/exports/{Specification}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets an Api resource.
    public func getApi(_ input: GetApiRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetApiResponse {
        return try await self.client.execute(operation: "GetApi", path: "/v2/apis/{ApiId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets an API mapping.
    public func getApiMapping(_ input: GetApiMappingRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetApiMappingResponse {
        return try await self.client.execute(operation: "GetApiMapping", path: "/v2/domainnames/{DomainName}/apimappings/{ApiMappingId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets API mappings.
    public func getApiMappings(_ input: GetApiMappingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetApiMappingsResponse {
        return try await self.client.execute(operation: "GetApiMappings", path: "/v2/domainnames/{DomainName}/apimappings", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a collection of Api resources.
    public func getApis(_ input: GetApisRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetApisResponse {
        return try await self.client.execute(operation: "GetApis", path: "/v2/apis", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets an Authorizer.
    public func getAuthorizer(_ input: GetAuthorizerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAuthorizerResponse {
        return try await self.client.execute(operation: "GetAuthorizer", path: "/v2/apis/{ApiId}/authorizers/{AuthorizerId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the Authorizers for an API.
    public func getAuthorizers(_ input: GetAuthorizersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAuthorizersResponse {
        return try await self.client.execute(operation: "GetAuthorizers", path: "/v2/apis/{ApiId}/authorizers", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a Deployment.
    public func getDeployment(_ input: GetDeploymentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDeploymentResponse {
        return try await self.client.execute(operation: "GetDeployment", path: "/v2/apis/{ApiId}/deployments/{DeploymentId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the Deployments for an API.
    public func getDeployments(_ input: GetDeploymentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDeploymentsResponse {
        return try await self.client.execute(operation: "GetDeployments", path: "/v2/apis/{ApiId}/deployments", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a domain name.
    public func getDomainName(_ input: GetDomainNameRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDomainNameResponse {
        return try await self.client.execute(operation: "GetDomainName", path: "/v2/domainnames/{DomainName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the domain names for an AWS account.
    public func getDomainNames(_ input: GetDomainNamesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDomainNamesResponse {
        return try await self.client.execute(operation: "GetDomainNames", path: "/v2/domainnames", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets an Integration.
    public func getIntegration(_ input: GetIntegrationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetIntegrationResult {
        return try await self.client.execute(operation: "GetIntegration", path: "/v2/apis/{ApiId}/integrations/{IntegrationId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets an IntegrationResponses.
    public func getIntegrationResponse(_ input: GetIntegrationResponseRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetIntegrationResponseResponse {
        return try await self.client.execute(operation: "GetIntegrationResponse", path: "/v2/apis/{ApiId}/integrations/{IntegrationId}/integrationresponses/{IntegrationResponseId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the IntegrationResponses for an Integration.
    public func getIntegrationResponses(_ input: GetIntegrationResponsesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetIntegrationResponsesResponse {
        return try await self.client.execute(operation: "GetIntegrationResponses", path: "/v2/apis/{ApiId}/integrations/{IntegrationId}/integrationresponses", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the Integrations for an API.
    public func getIntegrations(_ input: GetIntegrationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetIntegrationsResponse {
        return try await self.client.execute(operation: "GetIntegrations", path: "/v2/apis/{ApiId}/integrations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a Model.
    public func getModel(_ input: GetModelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetModelResponse {
        return try await self.client.execute(operation: "GetModel", path: "/v2/apis/{ApiId}/models/{ModelId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a model template.
    public func getModelTemplate(_ input: GetModelTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetModelTemplateResponse {
        return try await self.client.execute(operation: "GetModelTemplate", path: "/v2/apis/{ApiId}/models/{ModelId}/template", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the Models for an API.
    public func getModels(_ input: GetModelsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetModelsResponse {
        return try await self.client.execute(operation: "GetModels", path: "/v2/apis/{ApiId}/models", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a Route.
    public func getRoute(_ input: GetRouteRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRouteResult {
        return try await self.client.execute(operation: "GetRoute", path: "/v2/apis/{ApiId}/routes/{RouteId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a RouteResponse.
    public func getRouteResponse(_ input: GetRouteResponseRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRouteResponseResponse {
        return try await self.client.execute(operation: "GetRouteResponse", path: "/v2/apis/{ApiId}/routes/{RouteId}/routeresponses/{RouteResponseId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the RouteResponses for a Route.
    public func getRouteResponses(_ input: GetRouteResponsesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRouteResponsesResponse {
        return try await self.client.execute(operation: "GetRouteResponses", path: "/v2/apis/{ApiId}/routes/{RouteId}/routeresponses", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the Routes for an API.
    public func getRoutes(_ input: GetRoutesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRoutesResponse {
        return try await self.client.execute(operation: "GetRoutes", path: "/v2/apis/{ApiId}/routes", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a Stage.
    public func getStage(_ input: GetStageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetStageResponse {
        return try await self.client.execute(operation: "GetStage", path: "/v2/apis/{ApiId}/stages/{StageName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the Stages for an API.
    public func getStages(_ input: GetStagesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetStagesResponse {
        return try await self.client.execute(operation: "GetStages", path: "/v2/apis/{ApiId}/stages", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a collection of Tag resources.
    public func getTags(_ input: GetTagsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTagsResponse {
        return try await self.client.execute(operation: "GetTags", path: "/v2/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a VPC link.
    public func getVpcLink(_ input: GetVpcLinkRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetVpcLinkResponse {
        return try await self.client.execute(operation: "GetVpcLink", path: "/v2/vpclinks/{VpcLinkId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a collection of VPC links.
    public func getVpcLinks(_ input: GetVpcLinksRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetVpcLinksResponse {
        return try await self.client.execute(operation: "GetVpcLinks", path: "/v2/vpclinks", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Imports an API.
    public func importApi(_ input: ImportApiRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImportApiResponse {
        return try await self.client.execute(operation: "ImportApi", path: "/v2/apis", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Puts an Api resource.
    public func reimportApi(_ input: ReimportApiRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReimportApiResponse {
        return try await self.client.execute(operation: "ReimportApi", path: "/v2/apis/{ApiId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Resets all authorizer cache entries on a stage. Supported only for HTTP APIs.
    public func resetAuthorizersCache(_ input: ResetAuthorizersCacheRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "ResetAuthorizersCache", path: "/v2/apis/{ApiId}/stages/{StageName}/cache/authorizers", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new Tag resource to represent a tag.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/v2/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a Tag.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UntagResource", path: "/v2/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an Api resource.
    public func updateApi(_ input: UpdateApiRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateApiResponse {
        return try await self.client.execute(operation: "UpdateApi", path: "/v2/apis/{ApiId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The API mapping.
    public func updateApiMapping(_ input: UpdateApiMappingRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateApiMappingResponse {
        return try await self.client.execute(operation: "UpdateApiMapping", path: "/v2/domainnames/{DomainName}/apimappings/{ApiMappingId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an Authorizer.
    public func updateAuthorizer(_ input: UpdateAuthorizerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAuthorizerResponse {
        return try await self.client.execute(operation: "UpdateAuthorizer", path: "/v2/apis/{ApiId}/authorizers/{AuthorizerId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a Deployment.
    public func updateDeployment(_ input: UpdateDeploymentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDeploymentResponse {
        return try await self.client.execute(operation: "UpdateDeployment", path: "/v2/apis/{ApiId}/deployments/{DeploymentId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a domain name.
    public func updateDomainName(_ input: UpdateDomainNameRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDomainNameResponse {
        return try await self.client.execute(operation: "UpdateDomainName", path: "/v2/domainnames/{DomainName}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an Integration.
    public func updateIntegration(_ input: UpdateIntegrationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateIntegrationResult {
        return try await self.client.execute(operation: "UpdateIntegration", path: "/v2/apis/{ApiId}/integrations/{IntegrationId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an IntegrationResponses.
    public func updateIntegrationResponse(_ input: UpdateIntegrationResponseRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateIntegrationResponseResponse {
        return try await self.client.execute(operation: "UpdateIntegrationResponse", path: "/v2/apis/{ApiId}/integrations/{IntegrationId}/integrationresponses/{IntegrationResponseId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a Model.
    public func updateModel(_ input: UpdateModelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateModelResponse {
        return try await self.client.execute(operation: "UpdateModel", path: "/v2/apis/{ApiId}/models/{ModelId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a Route.
    public func updateRoute(_ input: UpdateRouteRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateRouteResult {
        return try await self.client.execute(operation: "UpdateRoute", path: "/v2/apis/{ApiId}/routes/{RouteId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a RouteResponse.
    public func updateRouteResponse(_ input: UpdateRouteResponseRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateRouteResponseResponse {
        return try await self.client.execute(operation: "UpdateRouteResponse", path: "/v2/apis/{ApiId}/routes/{RouteId}/routeresponses/{RouteResponseId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a Stage.
    public func updateStage(_ input: UpdateStageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateStageResponse {
        return try await self.client.execute(operation: "UpdateStage", path: "/v2/apis/{ApiId}/stages/{StageName}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a VPC link.
    public func updateVpcLink(_ input: UpdateVpcLinkRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateVpcLinkResponse {
        return try await self.client.execute(operation: "UpdateVpcLink", path: "/v2/vpclinks/{VpcLinkId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
