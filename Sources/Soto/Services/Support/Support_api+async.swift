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
extension Support {
    // MARK: Async API Calls

    /// Adds one or more attachments to an attachment set.  An attachment set is a temporary container for attachments that you add to a case or case communication. The set is available for 1 hour after it's created. The expiryTime returned in the response is when the set expires.     You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support API.    If you call the Amazon Web Services Support API from an account that does not have a Business, Enterprise On-Ramp, or Enterprise Support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see Amazon Web Services Support.
    public func addAttachmentsToSet(_ input: AddAttachmentsToSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddAttachmentsToSetResponse {
        return try await self.client.execute(operation: "AddAttachmentsToSet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds additional customer communication to an Amazon Web Services Support case. Use the caseId parameter to identify the case to which to add communication. You can list a set of email addresses to copy on the communication by using the ccEmailAddresses parameter. The communicationBody value contains the text of the communication.     You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support API.    If you call the Amazon Web Services Support API from an account that does not have a Business, Enterprise On-Ramp, or Enterprise Support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see Amazon Web Services Support.
    public func addCommunicationToCase(_ input: AddCommunicationToCaseRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddCommunicationToCaseResponse {
        return try await self.client.execute(operation: "AddCommunicationToCase", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a case in the Amazon Web Services Support Center. This operation is similar to how you create a case in the Amazon Web Services Support Center Create Case page. The Amazon Web Services Support API doesn't support requesting service limit increases. You can submit a service limit increase in the following ways:    Submit a request from the Amazon Web Services Support Center Create Case page.   Use the Service Quotas RequestServiceQuotaIncrease operation.   A successful CreateCase request returns an Amazon Web Services Support case number. You can use the DescribeCases operation and specify the case number to get existing Amazon Web Services Support cases. After you create a case, use the AddCommunicationToCase operation to add additional communication or attachments to an existing case. The caseId is separate from the displayId that appears in the Amazon Web Services Support Center. Use the DescribeCases operation to get the displayId.    You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support API.    If you call the Amazon Web Services Support API from an account that does not have a Business, Enterprise On-Ramp, or Enterprise Support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see Amazon Web Services Support.
    public func createCase(_ input: CreateCaseRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCaseResponse {
        return try await self.client.execute(operation: "CreateCase", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the attachment that has the specified ID. Attachments can include screenshots, error logs, or other files that describe your issue. Attachment IDs are generated by the case management system when you add an attachment to a case or case communication. Attachment IDs are returned in the AttachmentDetails objects that are returned by the DescribeCommunications operation.    You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support API.    If you call the Amazon Web Services Support API from an account that does not have a Business, Enterprise On-Ramp, or Enterprise Support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see Amazon Web Services Support.
    public func describeAttachment(_ input: DescribeAttachmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAttachmentResponse {
        return try await self.client.execute(operation: "DescribeAttachment", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of cases that you specify by passing one or more case IDs. You can use the afterTime and beforeTime parameters to filter the cases by date. You can set values for the includeResolvedCases and includeCommunications parameters to specify how much information to return. The response returns the following in JSON format:   One or more CaseDetails data types.   One or more nextToken values, which specify where to paginate the returned records represented by the CaseDetails objects.   Case data is available for 12 months after creation. If a case was created more than 12 months ago, a request might return an error.    You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support API.    If you call the Amazon Web Services Support API from an account that does not have a Business, Enterprise On-Ramp, or Enterprise Support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see Amazon Web Services Support.
    public func describeCases(_ input: DescribeCasesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCasesResponse {
        return try await self.client.execute(operation: "DescribeCases", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns communications and attachments for one or more support cases. Use the afterTime and beforeTime parameters to filter by date. You can use the caseId parameter to restrict the results to a specific case. Case data is available for 12 months after creation. If a case was created more than 12 months ago, a request for data might cause an error. You can use the maxResults and nextToken parameters to control the pagination of the results. Set maxResults to the number of cases that you want to display on each page, and use nextToken to specify the resumption of pagination.    You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support API.    If you call the Amazon Web Services Support API from an account that does not have a Business, Enterprise On-Ramp, or Enterprise Support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see Amazon Web Services Support.
    public func describeCommunications(_ input: DescribeCommunicationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCommunicationsResponse {
        return try await self.client.execute(operation: "DescribeCommunications", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the current list of Amazon Web Services services and a list of service categories for each service. You then use service names and categories in your CreateCase requests. Each Amazon Web Services service has its own set of categories. The service codes and category codes correspond to the values that appear in the Service and Category lists on the Amazon Web Services Support Center Create Case page. The values in those fields don't necessarily match the service codes and categories returned by the DescribeServices operation. Always use the service codes and categories that the DescribeServices operation returns, so that you have the most recent set of service and category codes.    You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support API.    If you call the Amazon Web Services Support API from an account that does not have a Business, Enterprise On-Ramp, or Enterprise Support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see Amazon Web Services Support.
    public func describeServices(_ input: DescribeServicesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServicesResponse {
        return try await self.client.execute(operation: "DescribeServices", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the list of severity levels that you can assign to a support case. The severity level for a case is also a field in the CaseDetails data type that you include for a CreateCase request.    You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support API.    If you call the Amazon Web Services Support API from an account that does not have a Business, Enterprise On-Ramp, or Enterprise Support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see Amazon Web Services Support.
    public func describeSeverityLevels(_ input: DescribeSeverityLevelsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSeverityLevelsResponse {
        return try await self.client.execute(operation: "DescribeSeverityLevels", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the refresh status of the Trusted Advisor checks that have the specified check IDs. You can get the check IDs by calling the DescribeTrustedAdvisorChecks operation. Some checks are refreshed automatically, and you can't return their refresh statuses by using the DescribeTrustedAdvisorCheckRefreshStatuses operation. If you call this operation for these checks, you might see an InvalidParameterValue error.    You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support API.    If you call the Amazon Web Services Support API from an account that does not have a Business, Enterprise On-Ramp, or Enterprise Support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see Amazon Web Services Support.
    public func describeTrustedAdvisorCheckRefreshStatuses(_ input: DescribeTrustedAdvisorCheckRefreshStatusesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrustedAdvisorCheckRefreshStatusesResponse {
        return try await self.client.execute(operation: "DescribeTrustedAdvisorCheckRefreshStatuses", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the results of the Trusted Advisor check that has the specified check ID. You can get the check IDs by calling the DescribeTrustedAdvisorChecks operation. The response contains a TrustedAdvisorCheckResult object, which contains these three objects:    TrustedAdvisorCategorySpecificSummary     TrustedAdvisorResourceDetail     TrustedAdvisorResourcesSummary    In addition, the response contains these fields:    status - The alert status of the check can be ok (green), warning (yellow), error (red), or not_available.    timestamp - The time of the last refresh of the check.    checkId - The unique identifier for the check.       You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support API.    If you call the Amazon Web Services Support API from an account that does not have a Business, Enterprise On-Ramp, or Enterprise Support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see Amazon Web Services Support.
    public func describeTrustedAdvisorCheckResult(_ input: DescribeTrustedAdvisorCheckResultRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrustedAdvisorCheckResultResponse {
        return try await self.client.execute(operation: "DescribeTrustedAdvisorCheckResult", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the results for the Trusted Advisor check summaries for the check IDs that you specified. You can get the check IDs by calling the DescribeTrustedAdvisorChecks operation. The response contains an array of TrustedAdvisorCheckSummary objects.    You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support API.    If you call the Amazon Web Services Support API from an account that does not have a Business, Enterprise On-Ramp, or Enterprise Support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see Amazon Web Services Support.
    public func describeTrustedAdvisorCheckSummaries(_ input: DescribeTrustedAdvisorCheckSummariesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrustedAdvisorCheckSummariesResponse {
        return try await self.client.execute(operation: "DescribeTrustedAdvisorCheckSummaries", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about all available Trusted Advisor checks, including the name, ID, category, description, and metadata. You must specify a language code. The Amazon Web Services Support API currently supports English ("en") and Japanese ("ja"). The response contains a TrustedAdvisorCheckDescription object for each check. You must set the Amazon Web Services Region to us-east-1.      You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support API.    If you call the Amazon Web Services Support API from an account that does not have a Business, Enterprise On-Ramp, or Enterprise Support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see Amazon Web Services Support.   The names and descriptions for Trusted Advisor checks are subject to change. We recommend that you specify the check ID in your code to uniquely identify a check.
    public func describeTrustedAdvisorChecks(_ input: DescribeTrustedAdvisorChecksRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrustedAdvisorChecksResponse {
        return try await self.client.execute(operation: "DescribeTrustedAdvisorChecks", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Refreshes the Trusted Advisor check that you specify using the check ID. You can get the check IDs by calling the DescribeTrustedAdvisorChecks operation.  Some checks are refreshed automatically. If you call the RefreshTrustedAdvisorCheck operation to refresh them, you might see the InvalidParameterValue error.  The response contains a TrustedAdvisorCheckRefreshStatus object.    You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support API.    If you call the Amazon Web Services Support API from an account that does not have a Business, Enterprise On-Ramp, or Enterprise Support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see Amazon Web Services Support.
    public func refreshTrustedAdvisorCheck(_ input: RefreshTrustedAdvisorCheckRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RefreshTrustedAdvisorCheckResponse {
        return try await self.client.execute(operation: "RefreshTrustedAdvisorCheck", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Resolves a support case. This operation takes a caseId and returns the initial and final state of the case.    You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support API.    If you call the Amazon Web Services Support API from an account that does not have a Business, Enterprise On-Ramp, or Enterprise Support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see Amazon Web Services Support.
    public func resolveCase(_ input: ResolveCaseRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResolveCaseResponse {
        return try await self.client.execute(operation: "ResolveCase", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Support {
    ///  Returns a list of cases that you specify by passing one or more case IDs. You can use the afterTime and beforeTime parameters to filter the cases by date. You can set values for the includeResolvedCases and includeCommunications parameters to specify how much information to return. The response returns the following in JSON format:   One or more CaseDetails data types.   One or more nextToken values, which specify where to paginate the returned records represented by the CaseDetails objects.   Case data is available for 12 months after creation. If a case was created more than 12 months ago, a request might return an error.    You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support API.    If you call the Amazon Web Services Support API from an account that does not have a Business, Enterprise On-Ramp, or Enterprise Support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see Amazon Web Services Support.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeCasesPaginator(
        _ input: DescribeCasesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeCasesRequest, DescribeCasesResponse> {
        return .init(
            input: input,
            command: self.describeCases,
            inputKey: \DescribeCasesRequest.nextToken,
            outputKey: \DescribeCasesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns communications and attachments for one or more support cases. Use the afterTime and beforeTime parameters to filter by date. You can use the caseId parameter to restrict the results to a specific case. Case data is available for 12 months after creation. If a case was created more than 12 months ago, a request for data might cause an error. You can use the maxResults and nextToken parameters to control the pagination of the results. Set maxResults to the number of cases that you want to display on each page, and use nextToken to specify the resumption of pagination.    You must have a Business, Enterprise On-Ramp, or Enterprise Support plan to use the Amazon Web Services Support API.    If you call the Amazon Web Services Support API from an account that does not have a Business, Enterprise On-Ramp, or Enterprise Support plan, the SubscriptionRequiredException error message appears. For information about changing your support plan, see Amazon Web Services Support.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeCommunicationsPaginator(
        _ input: DescribeCommunicationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeCommunicationsRequest, DescribeCommunicationsResponse> {
        return .init(
            input: input,
            command: self.describeCommunications,
            inputKey: \DescribeCommunicationsRequest.nextToken,
            outputKey: \DescribeCommunicationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
