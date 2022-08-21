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
extension AppSync {
    // MARK: Async API Calls

    /// Maps an endpoint to your custom domain.
    public func associateApi(_ input: AssociateApiRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateApiResponse {
        return try await self.client.execute(operation: "AssociateApi", path: "/v1/domainnames/{domainName}/apiassociation", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a cache for the GraphQL API.
    public func createApiCache(_ input: CreateApiCacheRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateApiCacheResponse {
        return try await self.client.execute(operation: "CreateApiCache", path: "/v1/apis/{apiId}/ApiCaches", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a unique key that you can distribute to clients who invoke your API.
    public func createApiKey(_ input: CreateApiKeyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateApiKeyResponse {
        return try await self.client.execute(operation: "CreateApiKey", path: "/v1/apis/{apiId}/apikeys", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a DataSource object.
    public func createDataSource(_ input: CreateDataSourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDataSourceResponse {
        return try await self.client.execute(operation: "CreateDataSource", path: "/v1/apis/{apiId}/datasources", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a custom DomainName object.
    public func createDomainName(_ input: CreateDomainNameRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDomainNameResponse {
        return try await self.client.execute(operation: "CreateDomainName", path: "/v1/domainnames", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a Function object. A function is a reusable entity. You can use multiple functions to compose the resolver logic.
    public func createFunction(_ input: CreateFunctionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFunctionResponse {
        return try await self.client.execute(operation: "CreateFunction", path: "/v1/apis/{apiId}/functions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a GraphqlApi object.
    public func createGraphqlApi(_ input: CreateGraphqlApiRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGraphqlApiResponse {
        return try await self.client.execute(operation: "CreateGraphqlApi", path: "/v1/apis", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a Resolver object. A resolver converts incoming requests into a format that a data source can understand, and converts the data source's responses into GraphQL.
    public func createResolver(_ input: CreateResolverRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateResolverResponse {
        return try await self.client.execute(operation: "CreateResolver", path: "/v1/apis/{apiId}/types/{typeName}/resolvers", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a Type object.
    public func createType(_ input: CreateTypeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTypeResponse {
        return try await self.client.execute(operation: "CreateType", path: "/v1/apis/{apiId}/types", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an ApiCache object.
    public func deleteApiCache(_ input: DeleteApiCacheRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteApiCacheResponse {
        return try await self.client.execute(operation: "DeleteApiCache", path: "/v1/apis/{apiId}/ApiCaches", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an API key.
    public func deleteApiKey(_ input: DeleteApiKeyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteApiKeyResponse {
        return try await self.client.execute(operation: "DeleteApiKey", path: "/v1/apis/{apiId}/apikeys/{id}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a DataSource object.
    public func deleteDataSource(_ input: DeleteDataSourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDataSourceResponse {
        return try await self.client.execute(operation: "DeleteDataSource", path: "/v1/apis/{apiId}/datasources/{name}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a custom DomainName object.
    public func deleteDomainName(_ input: DeleteDomainNameRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDomainNameResponse {
        return try await self.client.execute(operation: "DeleteDomainName", path: "/v1/domainnames/{domainName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a Function.
    public func deleteFunction(_ input: DeleteFunctionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteFunctionResponse {
        return try await self.client.execute(operation: "DeleteFunction", path: "/v1/apis/{apiId}/functions/{functionId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a GraphqlApi object.
    public func deleteGraphqlApi(_ input: DeleteGraphqlApiRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteGraphqlApiResponse {
        return try await self.client.execute(operation: "DeleteGraphqlApi", path: "/v1/apis/{apiId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a Resolver object.
    public func deleteResolver(_ input: DeleteResolverRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteResolverResponse {
        return try await self.client.execute(operation: "DeleteResolver", path: "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a Type object.
    public func deleteType(_ input: DeleteTypeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTypeResponse {
        return try await self.client.execute(operation: "DeleteType", path: "/v1/apis/{apiId}/types/{typeName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes an ApiAssociation object from a custom domain.
    public func disassociateApi(_ input: DisassociateApiRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateApiResponse {
        return try await self.client.execute(operation: "DisassociateApi", path: "/v1/domainnames/{domainName}/apiassociation", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Evaluates a given template and returns the response. The mapping template can be a request or response template. Request templates take the incoming request after a GraphQL operation is parsed and convert it into a request configuration for the selected data source operation. Response templates interpret responses from the data source and map it to the shape of the GraphQL field output type. Mapping templates are written in the Apache Velocity Template Language (VTL).
    public func evaluateMappingTemplate(_ input: EvaluateMappingTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EvaluateMappingTemplateResponse {
        return try await self.client.execute(operation: "EvaluateMappingTemplate", path: "/v1/dataplane-evaluatetemplate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Flushes an ApiCache object.
    public func flushApiCache(_ input: FlushApiCacheRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> FlushApiCacheResponse {
        return try await self.client.execute(operation: "FlushApiCache", path: "/v1/apis/{apiId}/FlushCache", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves an ApiAssociation object.
    public func getApiAssociation(_ input: GetApiAssociationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetApiAssociationResponse {
        return try await self.client.execute(operation: "GetApiAssociation", path: "/v1/domainnames/{domainName}/apiassociation", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves an ApiCache object.
    public func getApiCache(_ input: GetApiCacheRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetApiCacheResponse {
        return try await self.client.execute(operation: "GetApiCache", path: "/v1/apis/{apiId}/ApiCaches", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a DataSource object.
    public func getDataSource(_ input: GetDataSourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDataSourceResponse {
        return try await self.client.execute(operation: "GetDataSource", path: "/v1/apis/{apiId}/datasources/{name}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a custom DomainName object.
    public func getDomainName(_ input: GetDomainNameRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDomainNameResponse {
        return try await self.client.execute(operation: "GetDomainName", path: "/v1/domainnames/{domainName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get a Function.
    public func getFunction(_ input: GetFunctionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetFunctionResponse {
        return try await self.client.execute(operation: "GetFunction", path: "/v1/apis/{apiId}/functions/{functionId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a GraphqlApi object.
    public func getGraphqlApi(_ input: GetGraphqlApiRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetGraphqlApiResponse {
        return try await self.client.execute(operation: "GetGraphqlApi", path: "/v1/apis/{apiId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the introspection schema for a GraphQL API.
    public func getIntrospectionSchema(_ input: GetIntrospectionSchemaRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetIntrospectionSchemaResponse {
        return try await self.client.execute(operation: "GetIntrospectionSchema", path: "/v1/apis/{apiId}/schema", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a Resolver object.
    public func getResolver(_ input: GetResolverRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetResolverResponse {
        return try await self.client.execute(operation: "GetResolver", path: "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the current status of a schema creation operation.
    public func getSchemaCreationStatus(_ input: GetSchemaCreationStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSchemaCreationStatusResponse {
        return try await self.client.execute(operation: "GetSchemaCreationStatus", path: "/v1/apis/{apiId}/schemacreation", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a Type object.
    public func getType(_ input: GetTypeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTypeResponse {
        return try await self.client.execute(operation: "GetType", path: "/v1/apis/{apiId}/types/{typeName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the API keys for a given API.  API keys are deleted automatically 60 days after they expire. However, they may still be included in the response until they have actually been deleted. You can safely call DeleteApiKey to manually delete a key before it's automatically deleted.
    public func listApiKeys(_ input: ListApiKeysRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListApiKeysResponse {
        return try await self.client.execute(operation: "ListApiKeys", path: "/v1/apis/{apiId}/apikeys", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the data sources for a given API.
    public func listDataSources(_ input: ListDataSourcesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDataSourcesResponse {
        return try await self.client.execute(operation: "ListDataSources", path: "/v1/apis/{apiId}/datasources", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists multiple custom domain names.
    public func listDomainNames(_ input: ListDomainNamesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDomainNamesResponse {
        return try await self.client.execute(operation: "ListDomainNames", path: "/v1/domainnames", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List multiple functions.
    public func listFunctions(_ input: ListFunctionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListFunctionsResponse {
        return try await self.client.execute(operation: "ListFunctions", path: "/v1/apis/{apiId}/functions", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists your GraphQL APIs.
    public func listGraphqlApis(_ input: ListGraphqlApisRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListGraphqlApisResponse {
        return try await self.client.execute(operation: "ListGraphqlApis", path: "/v1/apis", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the resolvers for a given API and type.
    public func listResolvers(_ input: ListResolversRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListResolversResponse {
        return try await self.client.execute(operation: "ListResolvers", path: "/v1/apis/{apiId}/types/{typeName}/resolvers", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the resolvers that are associated with a specific function.
    public func listResolversByFunction(_ input: ListResolversByFunctionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListResolversByFunctionResponse {
        return try await self.client.execute(operation: "ListResolversByFunction", path: "/v1/apis/{apiId}/functions/{functionId}/resolvers", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags for a resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/v1/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the types for a given API.
    public func listTypes(_ input: ListTypesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTypesResponse {
        return try await self.client.execute(operation: "ListTypes", path: "/v1/apis/{apiId}/types", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds a new schema to your GraphQL API. This operation is asynchronous. Use  to determine when it has completed.
    public func startSchemaCreation(_ input: StartSchemaCreationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartSchemaCreationResponse {
        return try await self.client.execute(operation: "StartSchemaCreation", path: "/v1/apis/{apiId}/schemacreation", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Tags a resource with user-supplied tags.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/v1/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Untags a resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/v1/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the cache for the GraphQL API.
    public func updateApiCache(_ input: UpdateApiCacheRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateApiCacheResponse {
        return try await self.client.execute(operation: "UpdateApiCache", path: "/v1/apis/{apiId}/ApiCaches/update", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an API key. You can update the key as long as it's not deleted.
    public func updateApiKey(_ input: UpdateApiKeyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateApiKeyResponse {
        return try await self.client.execute(operation: "UpdateApiKey", path: "/v1/apis/{apiId}/apikeys/{id}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a DataSource object.
    public func updateDataSource(_ input: UpdateDataSourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDataSourceResponse {
        return try await self.client.execute(operation: "UpdateDataSource", path: "/v1/apis/{apiId}/datasources/{name}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a custom DomainName object.
    public func updateDomainName(_ input: UpdateDomainNameRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDomainNameResponse {
        return try await self.client.execute(operation: "UpdateDomainName", path: "/v1/domainnames/{domainName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a Function object.
    public func updateFunction(_ input: UpdateFunctionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateFunctionResponse {
        return try await self.client.execute(operation: "UpdateFunction", path: "/v1/apis/{apiId}/functions/{functionId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a GraphqlApi object.
    public func updateGraphqlApi(_ input: UpdateGraphqlApiRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateGraphqlApiResponse {
        return try await self.client.execute(operation: "UpdateGraphqlApi", path: "/v1/apis/{apiId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a Resolver object.
    public func updateResolver(_ input: UpdateResolverRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateResolverResponse {
        return try await self.client.execute(operation: "UpdateResolver", path: "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a Type object.
    public func updateType(_ input: UpdateTypeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateTypeResponse {
        return try await self.client.execute(operation: "UpdateType", path: "/v1/apis/{apiId}/types/{typeName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
