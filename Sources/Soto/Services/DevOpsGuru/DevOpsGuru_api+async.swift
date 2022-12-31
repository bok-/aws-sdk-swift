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
extension DevOpsGuru {
    // MARK: Async API Calls

    ///  Adds a notification channel to DevOps Guru. A notification channel is used to notify you
    /// 			about important DevOps Guru events, such as when an insight is generated.
    /// 		       If you use an Amazon SNS topic in another account, you must attach a policy to it that grants DevOps Guru permission
    /// 				to it notifications. DevOps Guru adds the required policy on your behalf to send notifications using Amazon SNS in your account. DevOps Guru only supports standard SNS topics.
    /// 				For more information, see Permissions
    /// 				for cross account Amazon SNS topics.
    /// 				     If you use an Amazon SNS topic in another account, you must attach a policy to it that grants DevOps Guru permission to it notifications. DevOps Guru adds the required policy on your behalf to send notifications using Amazon SNS in your account. For more information, see Permissions for cross account Amazon SNS topics.
    /// 				     If you use an Amazon SNS topic that is encrypted by an Amazon Web Services Key Management Service customer-managed key (CMK), then you must add permissions
    /// 				to the CMK. For more information, see Permissions for
    /// 				Amazon Web Services KMS–encrypted Amazon SNS topics.
    public func addNotificationChannel(_ input: AddNotificationChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddNotificationChannelResponse {
        return try await self.client.execute(operation: "AddNotificationChannel", path: "/channels", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the insight along with the associated anomalies, events and recommendations.
    public func deleteInsight(_ input: DeleteInsightRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteInsightResponse {
        return try await self.client.execute(operation: "DeleteInsight", path: "/insights/{Id}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns the number of open reactive insights, the number of open proactive insights,
    /// 			and the number of metrics analyzed in your Amazon Web Services account. Use these numbers to gauge the
    /// 			health of operations in your Amazon Web Services account.
    public func describeAccountHealth(_ input: DescribeAccountHealthRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccountHealthResponse {
        return try await self.client.execute(operation: "DescribeAccountHealth", path: "/accounts/health", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  For the time range passed in, returns the number of open reactive insight that were
    /// 			created, the number of open proactive insights that were created, and the Mean Time to Recover (MTTR) for all
    /// 			closed reactive insights.
    public func describeAccountOverview(_ input: DescribeAccountOverviewRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccountOverviewResponse {
        return try await self.client.execute(operation: "DescribeAccountOverview", path: "/accounts/overview", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns details about an anomaly that you specify using its ID.
    public func describeAnomaly(_ input: DescribeAnomalyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAnomalyResponse {
        return try await self.client.execute(operation: "DescribeAnomaly", path: "/anomalies/{Id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the integration status of services that are integrated with DevOps Guru as Consumer
    /// 			via EventBridge. The one service that can be integrated with DevOps Guru is Amazon CodeGuru
    /// 			Profiler, which can produce proactive recommendations which can be stored and viewed in
    /// 			DevOps Guru.
    public func describeEventSourcesConfig(_ input: DescribeEventSourcesConfigRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEventSourcesConfigResponse {
        return try await self.client.execute(operation: "DescribeEventSourcesConfig", path: "/event-sources", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns the most recent feedback submitted in the current Amazon Web Services account and Region.
    ///
    public func describeFeedback(_ input: DescribeFeedbackRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFeedbackResponse {
        return try await self.client.execute(operation: "DescribeFeedback", path: "/feedback", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns details about an insight that you specify using its ID.
    public func describeInsight(_ input: DescribeInsightRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInsightResponse {
        return try await self.client.execute(operation: "DescribeInsight", path: "/insights/{Id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns active insights, predictive insights, and resource hours analyzed in last
    /// 			hour.
    public func describeOrganizationHealth(_ input: DescribeOrganizationHealthRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOrganizationHealthResponse {
        return try await self.client.execute(operation: "DescribeOrganizationHealth", path: "/organization/health", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an overview of your organization's history based on the specified time range.
    /// 			The overview includes the total reactive and proactive insights.
    public func describeOrganizationOverview(_ input: DescribeOrganizationOverviewRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOrganizationOverviewResponse {
        return try await self.client.execute(operation: "DescribeOrganizationOverview", path: "/organization/overview", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides an overview of your system's health. If additional member accounts are part
    /// 			of your organization, you can filter those accounts using the AccountIds
    /// 			field.
    public func describeOrganizationResourceCollectionHealth(_ input: DescribeOrganizationResourceCollectionHealthRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOrganizationResourceCollectionHealthResponse {
        return try await self.client.execute(operation: "DescribeOrganizationResourceCollectionHealth", path: "/organization/health/resource-collection", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns the number of open proactive insights, open reactive insights, and the Mean Time to Recover (MTTR)
    /// 			for all closed insights in resource collections in your account. You specify the type of
    /// 			Amazon Web Services resources collection. The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and  Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze  	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag key. You can specify up to 500 Amazon Web Services CloudFormation stacks.
    public func describeResourceCollectionHealth(_ input: DescribeResourceCollectionHealthRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourceCollectionHealthResponse {
        return try await self.client.execute(operation: "DescribeResourceCollectionHealth", path: "/accounts/health/resource-collection/{ResourceCollectionType}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns the integration status of services that are integrated with DevOps Guru.
    /// 			The one service that can be integrated with DevOps Guru  	is Amazon Web Services Systems Manager, which can be used to create an OpsItem for each generated insight.
    public func describeServiceIntegration(_ input: DescribeServiceIntegrationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServiceIntegrationResponse {
        return try await self.client.execute(operation: "DescribeServiceIntegration", path: "/service-integrations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an estimate of the monthly cost for DevOps Guru to analyze your Amazon Web Services resources.
    /// 			For more information,
    /// 			see Estimate your
    /// 			Amazon DevOps Guru costs and
    /// 			Amazon DevOps Guru pricing.
    public func getCostEstimation(_ input: GetCostEstimationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCostEstimationResponse {
        return try await self.client.execute(operation: "GetCostEstimation", path: "/cost-estimation", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns lists Amazon Web Services resources that are of the specified resource collection type.
    /// 			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and  Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze  	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag key. You can specify up to 500 Amazon Web Services CloudFormation stacks.
    public func getResourceCollection(_ input: GetResourceCollectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetResourceCollectionResponse {
        return try await self.client.execute(operation: "GetResourceCollection", path: "/resource-collections/{ResourceCollectionType}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of the anomalies that belong to an insight that you specify using its
    /// 			ID.
    public func listAnomaliesForInsight(_ input: ListAnomaliesForInsightRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAnomaliesForInsightResponse {
        return try await self.client.execute(operation: "ListAnomaliesForInsight", path: "/anomalies/insight/{InsightId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 			Returns the list of log groups that contain log anomalies.
    ///
    public func listAnomalousLogGroups(_ input: ListAnomalousLogGroupsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAnomalousLogGroupsResponse {
        return try await self.client.execute(operation: "ListAnomalousLogGroups", path: "/list-log-anomalies", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of the events emitted by the resources that are evaluated by DevOps Guru.
    /// 			You can use filters to specify which events are returned.
    public func listEvents(_ input: ListEventsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListEventsResponse {
        return try await self.client.execute(operation: "ListEvents", path: "/events", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of insights in your Amazon Web Services account. You can specify which insights are
    /// 			returned by their start time and status (ONGOING, CLOSED, or
    /// 				ANY).
    public func listInsights(_ input: ListInsightsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListInsightsResponse {
        return try await self.client.execute(operation: "ListInsights", path: "/insights", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 			Returns the list of all log groups that are being monitored and tagged by DevOps Guru.
    ///
    public func listMonitoredResources(_ input: ListMonitoredResourcesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListMonitoredResourcesResponse {
        return try await self.client.execute(operation: "ListMonitoredResources", path: "/monitoredResources", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of notification channels configured for DevOps Guru. Each notification
    /// 			channel is used to notify you when DevOps Guru generates an insight that contains information
    /// 			about how to improve your operations. The one  	supported notification channel is Amazon Simple Notification Service (Amazon SNS).
    public func listNotificationChannels(_ input: ListNotificationChannelsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListNotificationChannelsResponse {
        return try await self.client.execute(operation: "ListNotificationChannels", path: "/channels", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of insights associated with the account or OU Id.
    public func listOrganizationInsights(_ input: ListOrganizationInsightsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListOrganizationInsightsResponse {
        return try await self.client.execute(operation: "ListOrganizationInsights", path: "/organization/insights", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of a specified insight's recommendations. Each recommendation includes
    /// 			a list of related metrics and a list of related events.
    public func listRecommendations(_ input: ListRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListRecommendationsResponse {
        return try await self.client.execute(operation: "ListRecommendations", path: "/recommendations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Collects customer feedback about the specified insight.
    public func putFeedback(_ input: PutFeedbackRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutFeedbackResponse {
        return try await self.client.execute(operation: "PutFeedback", path: "/feedback", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Removes a notification channel from DevOps Guru. A notification channel is used to notify
    /// 			you when DevOps Guru generates an insight that contains information about how to improve your
    /// 			operations.
    public func removeNotificationChannel(_ input: RemoveNotificationChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveNotificationChannelResponse {
        return try await self.client.execute(operation: "RemoveNotificationChannel", path: "/channels/{Id}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of insights in your Amazon Web Services account. You can specify which insights are
    /// 			returned by their start time, one or more statuses (ONGOING or CLOSED), one or more severities
    /// 				(LOW, MEDIUM, and HIGH), and type
    /// 				(REACTIVE or PROACTIVE).
    /// 		        Use the Filters parameter to specify status and severity search
    /// 			parameters. Use the Type parameter to specify REACTIVE or
    /// 				PROACTIVE in your search.
    public func searchInsights(_ input: SearchInsightsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchInsightsResponse {
        return try await self.client.execute(operation: "SearchInsights", path: "/insights/search", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of insights in your organization. You can specify which insights are
    /// 			returned by their start time, one or more statuses (ONGOING,
    /// 				CLOSED, and CLOSED), one or more severities
    /// 				(LOW, MEDIUM, and HIGH), and type
    /// 				(REACTIVE or PROACTIVE).
    /// 		        Use the Filters parameter to specify status and severity search
    /// 			parameters. Use the Type parameter to specify REACTIVE or
    /// 				PROACTIVE in your search.
    public func searchOrganizationInsights(_ input: SearchOrganizationInsightsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchOrganizationInsightsResponse {
        return try await self.client.execute(operation: "SearchOrganizationInsights", path: "/organization/insights/search", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts the creation of an estimate of the monthly cost to analyze your Amazon Web Services
    /// 			resources.
    public func startCostEstimation(_ input: StartCostEstimationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartCostEstimationResponse {
        return try await self.client.execute(operation: "StartCostEstimation", path: "/cost-estimation", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Enables or disables integration with a service that can be integrated with DevOps Guru. The
    /// 			one service that can be integrated with DevOps Guru is Amazon CodeGuru Profiler, which
    /// 			can produce proactive recommendations which can be stored and viewed in DevOps Guru.
    public func updateEventSourcesConfig(_ input: UpdateEventSourcesConfigRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateEventSourcesConfigResponse {
        return try await self.client.execute(operation: "UpdateEventSourcesConfig", path: "/event-sources", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates the collection of resources that DevOps Guru analyzes.
    /// 			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and  Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze  	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag key. You can specify up to 500 Amazon Web Services CloudFormation stacks. This method also creates the IAM role required for
    /// 			you to use DevOps Guru.
    public func updateResourceCollection(_ input: UpdateResourceCollectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateResourceCollectionResponse {
        return try await self.client.execute(operation: "UpdateResourceCollection", path: "/resource-collections", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Enables or disables integration with a service that can be integrated with DevOps Guru. The
    /// 			one service that can be integrated with DevOps Guru is Amazon Web Services Systems Manager, which can be used to create
    /// 			an OpsItem for each generated insight.
    public func updateServiceIntegration(_ input: UpdateServiceIntegrationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateServiceIntegrationResponse {
        return try await self.client.execute(operation: "UpdateServiceIntegration", path: "/service-integrations", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension DevOpsGuru {
    ///  Provides an overview of your system's health. If additional member accounts are part
    ///  			of your organization, you can filter those accounts using the AccountIds
    ///  			field.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeOrganizationResourceCollectionHealthPaginator(
        _ input: DescribeOrganizationResourceCollectionHealthRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeOrganizationResourceCollectionHealthRequest, DescribeOrganizationResourceCollectionHealthResponse> {
        return .init(
            input: input,
            command: self.describeOrganizationResourceCollectionHealth,
            inputKey: \DescribeOrganizationResourceCollectionHealthRequest.nextToken,
            outputKey: \DescribeOrganizationResourceCollectionHealthResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns the number of open proactive insights, open reactive insights, and the Mean Time to Recover (MTTR)
    ///  			for all closed insights in resource collections in your account. You specify the type of
    ///  			Amazon Web Services resources collection. The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and  Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze  	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag key. You can specify up to 500 Amazon Web Services CloudFormation stacks.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeResourceCollectionHealthPaginator(
        _ input: DescribeResourceCollectionHealthRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeResourceCollectionHealthRequest, DescribeResourceCollectionHealthResponse> {
        return .init(
            input: input,
            command: self.describeResourceCollectionHealth,
            inputKey: \DescribeResourceCollectionHealthRequest.nextToken,
            outputKey: \DescribeResourceCollectionHealthResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns an estimate of the monthly cost for DevOps Guru to analyze your Amazon Web Services resources.
    ///  			For more information,
    ///  			see Estimate your
    ///  			Amazon DevOps Guru costs and
    ///  			Amazon DevOps Guru pricing.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getCostEstimationPaginator(
        _ input: GetCostEstimationRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetCostEstimationRequest, GetCostEstimationResponse> {
        return .init(
            input: input,
            command: self.getCostEstimation,
            inputKey: \GetCostEstimationRequest.nextToken,
            outputKey: \GetCostEstimationResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns lists Amazon Web Services resources that are of the specified resource collection type.
    ///  			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and  Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze  	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag key. You can specify up to 500 Amazon Web Services CloudFormation stacks.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getResourceCollectionPaginator(
        _ input: GetResourceCollectionRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetResourceCollectionRequest, GetResourceCollectionResponse> {
        return .init(
            input: input,
            command: self.getResourceCollection,
            inputKey: \GetResourceCollectionRequest.nextToken,
            outputKey: \GetResourceCollectionResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns a list of the anomalies that belong to an insight that you specify using its
    ///  			ID.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAnomaliesForInsightPaginator(
        _ input: ListAnomaliesForInsightRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAnomaliesForInsightRequest, ListAnomaliesForInsightResponse> {
        return .init(
            input: input,
            command: self.listAnomaliesForInsight,
            inputKey: \ListAnomaliesForInsightRequest.nextToken,
            outputKey: \ListAnomaliesForInsightResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  			Returns the list of log groups that contain log anomalies.
    ///
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAnomalousLogGroupsPaginator(
        _ input: ListAnomalousLogGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAnomalousLogGroupsRequest, ListAnomalousLogGroupsResponse> {
        return .init(
            input: input,
            command: self.listAnomalousLogGroups,
            inputKey: \ListAnomalousLogGroupsRequest.nextToken,
            outputKey: \ListAnomalousLogGroupsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns a list of the events emitted by the resources that are evaluated by DevOps Guru.
    ///  			You can use filters to specify which events are returned.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listEventsPaginator(
        _ input: ListEventsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListEventsRequest, ListEventsResponse> {
        return .init(
            input: input,
            command: self.listEvents,
            inputKey: \ListEventsRequest.nextToken,
            outputKey: \ListEventsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns a list of insights in your Amazon Web Services account. You can specify which insights are
    ///  			returned by their start time and status (ONGOING, CLOSED, or
    ///  				ANY).
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listInsightsPaginator(
        _ input: ListInsightsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListInsightsRequest, ListInsightsResponse> {
        return .init(
            input: input,
            command: self.listInsights,
            inputKey: \ListInsightsRequest.nextToken,
            outputKey: \ListInsightsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  			Returns the list of all log groups that are being monitored and tagged by DevOps Guru.
    ///
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listMonitoredResourcesPaginator(
        _ input: ListMonitoredResourcesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListMonitoredResourcesRequest, ListMonitoredResourcesResponse> {
        return .init(
            input: input,
            command: self.listMonitoredResources,
            inputKey: \ListMonitoredResourcesRequest.nextToken,
            outputKey: \ListMonitoredResourcesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns a list of notification channels configured for DevOps Guru. Each notification
    ///  			channel is used to notify you when DevOps Guru generates an insight that contains information
    ///  			about how to improve your operations. The one  	supported notification channel is Amazon Simple Notification Service (Amazon SNS).
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listNotificationChannelsPaginator(
        _ input: ListNotificationChannelsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListNotificationChannelsRequest, ListNotificationChannelsResponse> {
        return .init(
            input: input,
            command: self.listNotificationChannels,
            inputKey: \ListNotificationChannelsRequest.nextToken,
            outputKey: \ListNotificationChannelsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of insights associated with the account or OU Id.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listOrganizationInsightsPaginator(
        _ input: ListOrganizationInsightsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListOrganizationInsightsRequest, ListOrganizationInsightsResponse> {
        return .init(
            input: input,
            command: self.listOrganizationInsights,
            inputKey: \ListOrganizationInsightsRequest.nextToken,
            outputKey: \ListOrganizationInsightsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns a list of a specified insight's recommendations. Each recommendation includes
    ///  			a list of related metrics and a list of related events.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRecommendationsPaginator(
        _ input: ListRecommendationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRecommendationsRequest, ListRecommendationsResponse> {
        return .init(
            input: input,
            command: self.listRecommendations,
            inputKey: \ListRecommendationsRequest.nextToken,
            outputKey: \ListRecommendationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns a list of insights in your Amazon Web Services account. You can specify which insights are
    ///  			returned by their start time, one or more statuses (ONGOING or CLOSED), one or more severities
    ///  				(LOW, MEDIUM, and HIGH), and type
    ///  				(REACTIVE or PROACTIVE).
    ///  		        Use the Filters parameter to specify status and severity search
    ///  			parameters. Use the Type parameter to specify REACTIVE or
    ///  				PROACTIVE in your search.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func searchInsightsPaginator(
        _ input: SearchInsightsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SearchInsightsRequest, SearchInsightsResponse> {
        return .init(
            input: input,
            command: self.searchInsights,
            inputKey: \SearchInsightsRequest.nextToken,
            outputKey: \SearchInsightsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns a list of insights in your organization. You can specify which insights are
    ///  			returned by their start time, one or more statuses (ONGOING,
    ///  				CLOSED, and CLOSED), one or more severities
    ///  				(LOW, MEDIUM, and HIGH), and type
    ///  				(REACTIVE or PROACTIVE).
    ///  		        Use the Filters parameter to specify status and severity search
    ///  			parameters. Use the Type parameter to specify REACTIVE or
    ///  				PROACTIVE in your search.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func searchOrganizationInsightsPaginator(
        _ input: SearchOrganizationInsightsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SearchOrganizationInsightsRequest, SearchOrganizationInsightsResponse> {
        return .init(
            input: input,
            command: self.searchOrganizationInsights,
            inputKey: \SearchOrganizationInsightsRequest.nextToken,
            outputKey: \SearchOrganizationInsightsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
