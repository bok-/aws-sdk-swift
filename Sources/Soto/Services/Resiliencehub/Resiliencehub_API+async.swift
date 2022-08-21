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
extension Resiliencehub {
    // MARK: Async API Calls

    /// Adds the resource mapping for the draft application version.
    public func addDraftAppVersionResourceMappings(_ input: AddDraftAppVersionResourceMappingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddDraftAppVersionResourceMappingsResponse {
        return try await self.client.execute(operation: "AddDraftAppVersionResourceMappings", path: "/add-draft-app-version-resource-mappings", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a Resilience Hub application. A Resilience Hub application is a collection of Amazon Web Services resources structured to prevent and recover Amazon Web Services application disruptions. To describe a Resilience Hub application, you provide an application name, resources from one or more–up to five–CloudFormation stacks, and an appropriate resiliency policy.
    ///  After you create a Resilience Hub application, you publish it so that you can run a resiliency assessment on it. You can then use recommendations from the assessment to improve resiliency by running another assessment, comparing results, and then iterating the process until you achieve your goals for recovery time objective (RTO) and recovery point objective (RPO).
    public func createApp(_ input: CreateAppRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAppResponse {
        return try await self.client.execute(operation: "CreateApp", path: "/create-app", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new recommendation template.
    public func createRecommendationTemplate(_ input: CreateRecommendationTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRecommendationTemplateResponse {
        return try await self.client.execute(operation: "CreateRecommendationTemplate", path: "/create-recommendation-template", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a resiliency policy for an application.
    public func createResiliencyPolicy(_ input: CreateResiliencyPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateResiliencyPolicyResponse {
        return try await self.client.execute(operation: "CreateResiliencyPolicy", path: "/create-resiliency-policy", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an AWS Resilience Hub application. This is a destructive action that can't be undone.
    public func deleteApp(_ input: DeleteAppRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAppResponse {
        return try await self.client.execute(operation: "DeleteApp", path: "/delete-app", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an AWS Resilience Hub application assessment. This is a destructive action that can't be undone.
    public func deleteAppAssessment(_ input: DeleteAppAssessmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAppAssessmentResponse {
        return try await self.client.execute(operation: "DeleteAppAssessment", path: "/delete-app-assessment", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a recommendation template. This is a destructive action that can't be undone.
    public func deleteRecommendationTemplate(_ input: DeleteRecommendationTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRecommendationTemplateResponse {
        return try await self.client.execute(operation: "DeleteRecommendationTemplate", path: "/delete-recommendation-template", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a resiliency policy. This is a destructive action that can't be undone.
    public func deleteResiliencyPolicy(_ input: DeleteResiliencyPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteResiliencyPolicyResponse {
        return try await self.client.execute(operation: "DeleteResiliencyPolicy", path: "/delete-resiliency-policy", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes an AWS Resilience Hub application.
    public func describeApp(_ input: DescribeAppRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAppResponse {
        return try await self.client.execute(operation: "DescribeApp", path: "/describe-app", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes an assessment for an AWS Resilience Hub application.
    public func describeAppAssessment(_ input: DescribeAppAssessmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAppAssessmentResponse {
        return try await self.client.execute(operation: "DescribeAppAssessment", path: "/describe-app-assessment", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the resolution status for the specified resolution identifier for an application version. If resolutionId is not specified, the current resolution status is returned.
    public func describeAppVersionResourcesResolutionStatus(_ input: DescribeAppVersionResourcesResolutionStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAppVersionResourcesResolutionStatusResponse {
        return try await self.client.execute(operation: "DescribeAppVersionResourcesResolutionStatus", path: "/describe-app-version-resources-resolution-status", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes details about an AWS Resilience Hub
    public func describeAppVersionTemplate(_ input: DescribeAppVersionTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAppVersionTemplateResponse {
        return try await self.client.execute(operation: "DescribeAppVersionTemplate", path: "/describe-app-version-template", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the status of importing resources to an application version.
    public func describeDraftAppVersionResourcesImportStatus(_ input: DescribeDraftAppVersionResourcesImportStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDraftAppVersionResourcesImportStatusResponse {
        return try await self.client.execute(operation: "DescribeDraftAppVersionResourcesImportStatus", path: "/describe-draft-app-version-resources-import-status", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes a specified resiliency policy for an AWS Resilience Hub application. The returned policy object includes creation time, data location constraints, the Amazon Resource Name (ARN) for the policy, tags, tier, and more.
    public func describeResiliencyPolicy(_ input: DescribeResiliencyPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResiliencyPolicyResponse {
        return try await self.client.execute(operation: "DescribeResiliencyPolicy", path: "/describe-resiliency-policy", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Imports resources from sources such as a CloudFormation stack, resource-groups, or application registry app to a draft application version.
    public func importResourcesToDraftAppVersion(_ input: ImportResourcesToDraftAppVersionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImportResourcesToDraftAppVersionResponse {
        return try await self.client.execute(operation: "ImportResourcesToDraftAppVersion", path: "/import-resources-to-draft-app-version", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the alarm recommendations for a AWS Resilience Hub application.
    public func listAlarmRecommendations(_ input: ListAlarmRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAlarmRecommendationsResponse {
        return try await self.client.execute(operation: "ListAlarmRecommendations", path: "/list-alarm-recommendations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the assessments for an AWS Resilience Hub application. You can use request parameters to refine the results for the response object.
    public func listAppAssessments(_ input: ListAppAssessmentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAppAssessmentsResponse {
        return try await self.client.execute(operation: "ListAppAssessments", path: "/list-app-assessments", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the compliances for an AWS Resilience Hub component.
    public func listAppComponentCompliances(_ input: ListAppComponentCompliancesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAppComponentCompliancesResponse {
        return try await self.client.execute(operation: "ListAppComponentCompliances", path: "/list-app-component-compliances", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the recommendations for an AWS Resilience Hub component.
    public func listAppComponentRecommendations(_ input: ListAppComponentRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAppComponentRecommendationsResponse {
        return try await self.client.execute(operation: "ListAppComponentRecommendations", path: "/list-app-component-recommendations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists how the resources in an application version are mapped/sourced from. Mappings can be physical resource identifiers, CloudFormation stacks, resource-groups, or an application registry app.
    public func listAppVersionResourceMappings(_ input: ListAppVersionResourceMappingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAppVersionResourceMappingsResponse {
        return try await self.client.execute(operation: "ListAppVersionResourceMappings", path: "/list-app-version-resource-mappings", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all the resources in an application version.
    public func listAppVersionResources(_ input: ListAppVersionResourcesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAppVersionResourcesResponse {
        return try await self.client.execute(operation: "ListAppVersionResources", path: "/list-app-version-resources", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the different versions for the Resilience Hub applications.
    public func listAppVersions(_ input: ListAppVersionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAppVersionsResponse {
        return try await self.client.execute(operation: "ListAppVersions", path: "/list-app-versions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists your Resilience Hub applications.
    public func listApps(_ input: ListAppsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAppsResponse {
        return try await self.client.execute(operation: "ListApps", path: "/list-apps", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the recommendation templates for the Resilience Hub applications.
    public func listRecommendationTemplates(_ input: ListRecommendationTemplatesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListRecommendationTemplatesResponse {
        return try await self.client.execute(operation: "ListRecommendationTemplates", path: "/list-recommendation-templates", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the resiliency policies for the Resilience Hub applications.
    public func listResiliencyPolicies(_ input: ListResiliencyPoliciesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListResiliencyPoliciesResponse {
        return try await self.client.execute(operation: "ListResiliencyPolicies", path: "/list-resiliency-policies", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the standard operating procedure (SOP) recommendations for the Resilience Hub applications.
    public func listSopRecommendations(_ input: ListSopRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSopRecommendationsResponse {
        return try await self.client.execute(operation: "ListSopRecommendations", path: "/list-sop-recommendations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the suggested resiliency policies for the Resilience Hub applications.
    public func listSuggestedResiliencyPolicies(_ input: ListSuggestedResiliencyPoliciesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSuggestedResiliencyPoliciesResponse {
        return try await self.client.execute(operation: "ListSuggestedResiliencyPolicies", path: "/list-suggested-resiliency-policies", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags for your resources in your Resilience Hub applications.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the test recommendations for the Resilience Hub application.
    public func listTestRecommendations(_ input: ListTestRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTestRecommendationsResponse {
        return try await self.client.execute(operation: "ListTestRecommendations", path: "/list-test-recommendations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the resources that are not currently supported in AWS Resilience Hub. An unsupported resource is a resource that exists in the object that was used to create an app, but is not supported by Resilience Hub.
    public func listUnsupportedAppVersionResources(_ input: ListUnsupportedAppVersionResourcesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListUnsupportedAppVersionResourcesResponse {
        return try await self.client.execute(operation: "ListUnsupportedAppVersionResources", path: "/list-unsupported-app-version-resources", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Publishes a new version of a specific Resilience Hub application.
    public func publishAppVersion(_ input: PublishAppVersionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PublishAppVersionResponse {
        return try await self.client.execute(operation: "PublishAppVersion", path: "/publish-app-version", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds or updates the app template for a draft version of a Resilience Hub app.
    public func putDraftAppVersionTemplate(_ input: PutDraftAppVersionTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutDraftAppVersionTemplateResponse {
        return try await self.client.execute(operation: "PutDraftAppVersionTemplate", path: "/put-draft-app-version-template", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes resource mappings from a draft application version.
    public func removeDraftAppVersionResourceMappings(_ input: RemoveDraftAppVersionResourceMappingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveDraftAppVersionResourceMappingsResponse {
        return try await self.client.execute(operation: "RemoveDraftAppVersionResourceMappings", path: "/remove-draft-app-version-resource-mappings", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Resolves the resources for an application version.
    public func resolveAppVersionResources(_ input: ResolveAppVersionResourcesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResolveAppVersionResourcesResponse {
        return try await self.client.execute(operation: "ResolveAppVersionResources", path: "/resolve-app-version-resources", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new application assessment for an application.
    public func startAppAssessment(_ input: StartAppAssessmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartAppAssessmentResponse {
        return try await self.client.execute(operation: "StartAppAssessment", path: "/start-app-assessment", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Applies one or more tags to a resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes one or more tags from a resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an application.
    public func updateApp(_ input: UpdateAppRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAppResponse {
        return try await self.client.execute(operation: "UpdateApp", path: "/update-app", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a resiliency policy.
    public func updateResiliencyPolicy(_ input: UpdateResiliencyPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateResiliencyPolicyResponse {
        return try await self.client.execute(operation: "UpdateResiliencyPolicy", path: "/update-resiliency-policy", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
