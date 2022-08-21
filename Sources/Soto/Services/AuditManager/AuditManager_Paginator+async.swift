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

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension AuditManager {
    ///   Returns a list of changelogs from Audit Manager.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getChangeLogsPaginator(
        _ input: GetChangeLogsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetChangeLogsRequest, GetChangeLogsResponse> {
        return .init(
            input: input,
            command: getChangeLogs,
            inputKey: \GetChangeLogsRequest.nextToken,
            outputKey: \GetChangeLogsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns a list of delegations from an audit owner to a delegate.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getDelegationsPaginator(
        _ input: GetDelegationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetDelegationsRequest, GetDelegationsResponse> {
        return .init(
            input: input,
            command: getDelegations,
            inputKey: \GetDelegationsRequest.nextToken,
            outputKey: \GetDelegationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns all evidence from a specified evidence folder in Audit Manager.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getEvidenceByEvidenceFolderPaginator(
        _ input: GetEvidenceByEvidenceFolderRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetEvidenceByEvidenceFolderRequest, GetEvidenceByEvidenceFolderResponse> {
        return .init(
            input: input,
            command: getEvidenceByEvidenceFolder,
            inputKey: \GetEvidenceByEvidenceFolderRequest.nextToken,
            outputKey: \GetEvidenceByEvidenceFolderResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns the evidence folders from a specified assessment in Audit Manager.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getEvidenceFoldersByAssessmentPaginator(
        _ input: GetEvidenceFoldersByAssessmentRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetEvidenceFoldersByAssessmentRequest, GetEvidenceFoldersByAssessmentResponse> {
        return .init(
            input: input,
            command: getEvidenceFoldersByAssessment,
            inputKey: \GetEvidenceFoldersByAssessmentRequest.nextToken,
            outputKey: \GetEvidenceFoldersByAssessmentResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns a list of evidence folders that are associated with a specified control of an assessment in Audit Manager.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getEvidenceFoldersByAssessmentControlPaginator(
        _ input: GetEvidenceFoldersByAssessmentControlRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetEvidenceFoldersByAssessmentControlRequest, GetEvidenceFoldersByAssessmentControlResponse> {
        return .init(
            input: input,
            command: getEvidenceFoldersByAssessmentControl,
            inputKey: \GetEvidenceFoldersByAssessmentControlRequest.nextToken,
            outputKey: \GetEvidenceFoldersByAssessmentControlResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the latest analytics data for controls within a specific control domain and a specific active assessment.  Control insights are listed only if the control belongs to the control domain and assessment that was specified. Moreover, the control must have collected evidence on the lastUpdated date of controlInsightsByAssessment. If neither of these conditions are met, no data is listed for that control.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAssessmentControlInsightsByControlDomainPaginator(
        _ input: ListAssessmentControlInsightsByControlDomainRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAssessmentControlInsightsByControlDomainRequest, ListAssessmentControlInsightsByControlDomainResponse> {
        return .init(
            input: input,
            command: listAssessmentControlInsightsByControlDomain,
            inputKey: \ListAssessmentControlInsightsByControlDomainRequest.nextToken,
            outputKey: \ListAssessmentControlInsightsByControlDomainResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns a list of sent or received share requests for custom frameworks in Audit Manager.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAssessmentFrameworkShareRequestsPaginator(
        _ input: ListAssessmentFrameworkShareRequestsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAssessmentFrameworkShareRequestsRequest, ListAssessmentFrameworkShareRequestsResponse> {
        return .init(
            input: input,
            command: listAssessmentFrameworkShareRequests,
            inputKey: \ListAssessmentFrameworkShareRequestsRequest.nextToken,
            outputKey: \ListAssessmentFrameworkShareRequestsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns a list of the frameworks that are available in the Audit Manager framework library.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAssessmentFrameworksPaginator(
        _ input: ListAssessmentFrameworksRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAssessmentFrameworksRequest, ListAssessmentFrameworksResponse> {
        return .init(
            input: input,
            command: listAssessmentFrameworks,
            inputKey: \ListAssessmentFrameworksRequest.nextToken,
            outputKey: \ListAssessmentFrameworksResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns a list of assessment reports created in Audit Manager.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAssessmentReportsPaginator(
        _ input: ListAssessmentReportsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAssessmentReportsRequest, ListAssessmentReportsResponse> {
        return .init(
            input: input,
            command: listAssessmentReports,
            inputKey: \ListAssessmentReportsRequest.nextToken,
            outputKey: \ListAssessmentReportsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns a list of current and past assessments from Audit Manager.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAssessmentsPaginator(
        _ input: ListAssessmentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAssessmentsRequest, ListAssessmentsResponse> {
        return .init(
            input: input,
            command: listAssessments,
            inputKey: \ListAssessmentsRequest.nextToken,
            outputKey: \ListAssessmentsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the latest analytics data for control domains across all of your active assessments.   A control domain is listed only if at least one of the controls within that domain collected evidence on the lastUpdated date of controlDomainInsights. If this condition isn’t met, no data is listed for that control domain.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listControlDomainInsightsPaginator(
        _ input: ListControlDomainInsightsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListControlDomainInsightsRequest, ListControlDomainInsightsResponse> {
        return .init(
            input: input,
            command: listControlDomainInsights,
            inputKey: \ListControlDomainInsightsRequest.nextToken,
            outputKey: \ListControlDomainInsightsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists analytics data for control domains within a specified active assessment.  A control domain is listed only if at least one of the controls within that domain collected evidence on the lastUpdated date of controlDomainInsights. If this condition isn’t met, no data is listed for that domain.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listControlDomainInsightsByAssessmentPaginator(
        _ input: ListControlDomainInsightsByAssessmentRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListControlDomainInsightsByAssessmentRequest, ListControlDomainInsightsByAssessmentResponse> {
        return .init(
            input: input,
            command: listControlDomainInsightsByAssessment,
            inputKey: \ListControlDomainInsightsByAssessmentRequest.nextToken,
            outputKey: \ListControlDomainInsightsByAssessmentResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the latest analytics data for controls within a specific control domain across all active assessments.  Control insights are listed only if the control belongs to the control domain that was specified and the control collected evidence on the lastUpdated date of controlInsightsMetadata. If neither of these conditions are met, no data is listed for that control.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listControlInsightsByControlDomainPaginator(
        _ input: ListControlInsightsByControlDomainRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListControlInsightsByControlDomainRequest, ListControlInsightsByControlDomainResponse> {
        return .init(
            input: input,
            command: listControlInsightsByControlDomain,
            inputKey: \ListControlInsightsByControlDomainRequest.nextToken,
            outputKey: \ListControlInsightsByControlDomainResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns a list of controls from Audit Manager.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listControlsPaginator(
        _ input: ListControlsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListControlsRequest, ListControlsResponse> {
        return .init(
            input: input,
            command: listControls,
            inputKey: \ListControlsRequest.nextToken,
            outputKey: \ListControlsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns a list of keywords that are pre-mapped to the specified control data source.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listKeywordsForDataSourcePaginator(
        _ input: ListKeywordsForDataSourceRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListKeywordsForDataSourceRequest, ListKeywordsForDataSourceResponse> {
        return .init(
            input: input,
            command: listKeywordsForDataSource,
            inputKey: \ListKeywordsForDataSourceRequest.nextToken,
            outputKey: \ListKeywordsForDataSourceResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns a list of all Audit Manager notifications.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listNotificationsPaginator(
        _ input: ListNotificationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListNotificationsRequest, ListNotificationsResponse> {
        return .init(
            input: input,
            command: listNotifications,
            inputKey: \ListNotificationsRequest.nextToken,
            outputKey: \ListNotificationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
