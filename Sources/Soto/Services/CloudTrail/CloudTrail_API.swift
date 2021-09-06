//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

@_exported import SotoCore

/// Service object for interacting with AWS CloudTrail service.
///
/// CloudTrail This is the CloudTrail API Reference. It provides descriptions of actions, data types, common parameters, and common errors for CloudTrail. CloudTrail is a web service that records Amazon Web Services API calls for your Amazon Web Services account and delivers log files to an Amazon S3 bucket. The recorded information includes the identity of the user, the start time of the Amazon Web Services API call, the source IP address, the request parameters, and the response elements returned by the service.  As an alternative to the API, you can use one of the Amazon Web Services SDKs, which consist of libraries and sample code for various programming languages and platforms (Java, Ruby, .NET, iOS, Android, etc.). The SDKs provide programmatic access to CloudTrail. For example, the SDKs handle cryptographically signing requests, managing errors, and retrying requests automatically. For more information about the Amazon Web Services SDKs, including how to download and install them, see Tools to Build on Amazon Web Services.  See the CloudTrail User Guide for information about the data that is included with each Amazon Web Services API call listed in the log files.
public struct CloudTrail: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the CloudTrail client
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
            amzTarget: "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101",
            service: "cloudtrail",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2013-11-01",
            endpoint: endpoint,
            serviceEndpoints: ["us-gov-east-1": "cloudtrail.us-gov-east-1.amazonaws.com", "us-gov-west-1": "cloudtrail.us-gov-west-1.amazonaws.com"],
            errorType: CloudTrailErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Adds one or more tags to a trail, up to a limit of 50. Overwrites an existing tag's value when a new value is specified for an existing tag key. Tag key names must be unique for a trail; you cannot have two keys with the same name but different values. If you specify a key without a value, the tag will be created with the specified key and a value of null. You can tag a trail that applies to all Amazon Web Services Regions only from the Region in which the trail was created (also known as its home region).
    public func addTags(_ input: AddTagsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddTagsResponse> {
        return self.client.execute(operation: "AddTags", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a trail that specifies the settings for delivery of log data to an Amazon S3 bucket.
    public func createTrail(_ input: CreateTrailRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTrailResponse> {
        return self.client.execute(operation: "CreateTrail", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a trail. This operation must be called from the region in which the trail was created. DeleteTrail cannot be called on the shadow trails (replicated trails in other regions) of a trail that is enabled in all regions.
    public func deleteTrail(_ input: DeleteTrailRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTrailResponse> {
        return self.client.execute(operation: "DeleteTrail", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves settings for one or more trails associated with the current region for your account.
    public func describeTrails(_ input: DescribeTrailsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrailsResponse> {
        return self.client.execute(operation: "DescribeTrails", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the settings for the event selectors that you configured for your trail. The information returned for your event selectors includes the following:   If your event selector includes read-only events, write-only events, or all events. This applies to both management events and data events.   If your event selector includes management events.   If your event selector includes data events, the resources on which you are logging data events.   For more information, see Logging Data and Management Events for Trails  in the CloudTrail User Guide.
    public func getEventSelectors(_ input: GetEventSelectorsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetEventSelectorsResponse> {
        return self.client.execute(operation: "GetEventSelectors", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the settings for the Insights event selectors that you configured for your trail. GetInsightSelectors shows if CloudTrail Insights event logging is enabled on the trail, and if it is, which insight types are enabled. If you run GetInsightSelectors on a trail that does not have Insights events enabled, the operation throws the exception InsightNotEnabledException  For more information, see Logging CloudTrail Insights Events for Trails  in the CloudTrail User Guide.
    public func getInsightSelectors(_ input: GetInsightSelectorsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetInsightSelectorsResponse> {
        return self.client.execute(operation: "GetInsightSelectors", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns settings information for a specified trail.
    public func getTrail(_ input: GetTrailRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTrailResponse> {
        return self.client.execute(operation: "GetTrail", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a JSON-formatted list of information about the specified trail. Fields include information on delivery errors, Amazon SNS and Amazon S3 errors, and start and stop logging times for each trail. This operation returns trail status from a single region. To return trail status from all regions, you must call the operation on each region.
    public func getTrailStatus(_ input: GetTrailStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTrailStatusResponse> {
        return self.client.execute(operation: "GetTrailStatus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns all public keys whose private keys were used to sign the digest files within the specified time range. The public key is needed to validate digest files that were signed with its corresponding private key.  CloudTrail uses different private and public key pairs per region. Each digest file is signed with a private key unique to its region. When you validate a digest file from a specific region, you must look in the same region for its corresponding public key.
    public func listPublicKeys(_ input: ListPublicKeysRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPublicKeysResponse> {
        return self.client.execute(operation: "ListPublicKeys", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags for the trail in the current region.
    public func listTags(_ input: ListTagsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsResponse> {
        return self.client.execute(operation: "ListTags", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists trails that are in the current account.
    public func listTrails(_ input: ListTrailsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTrailsResponse> {
        return self.client.execute(operation: "ListTrails", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Looks up management events or CloudTrail Insights events that are captured by CloudTrail. You can look up events that occurred in a region within the last 90 days. Lookup supports the following attributes for management events:   Amazon Web Services access key   Event ID   Event name   Event source   Read only   Resource name   Resource type   User name   Lookup supports the following attributes for Insights events:   Event ID   Event name   Event source   All attributes are optional. The default number of results returned is 50, with a maximum of 50 possible. The response includes a token that you can use to get the next page of results.  The rate of lookup requests is limited to two per second, per account, per region. If this limit is exceeded, a throttling error occurs.
    public func lookupEvents(_ input: LookupEventsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<LookupEventsResponse> {
        return self.client.execute(operation: "LookupEvents", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Configures an event selector or advanced event selectors for your trail. Use event selectors or advanced event selectors to specify management and data event settings for your trail. By default, trails created without specific event selectors are configured to log all read and write management events, and no data events. When an event occurs in your account, CloudTrail evaluates the event selectors or advanced event selectors in all trails. For each trail, if the event matches any event selector, the trail processes and logs the event. If the event doesn't match any event selector, the trail doesn't log the event. Example   You create an event selector for a trail and specify that you want write-only events.   The EC2 GetConsoleOutput and RunInstances API operations occur in your account.   CloudTrail evaluates whether the events match your event selectors.   The RunInstances is a write-only event and it matches your event selector. The trail logs the event.   The GetConsoleOutput is a read-only event that doesn't match your event selector. The trail doesn't log the event.    The PutEventSelectors operation must be called from the region in which the trail was created; otherwise, an InvalidHomeRegionException exception is thrown. You can configure up to five event selectors for each trail. For more information, see Logging data and management events for trails  and Quotas in CloudTrail in the CloudTrail User Guide. You can add advanced event selectors, and conditions for your advanced event selectors, up to a maximum of 500 values for all conditions and selectors on a trail. You can use either AdvancedEventSelectors or EventSelectors, but not both. If you apply AdvancedEventSelectors to a trail, any existing EventSelectors are overwritten. For more information about advanced event selectors, see Logging data events for trails in the CloudTrail User Guide.
    public func putEventSelectors(_ input: PutEventSelectorsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutEventSelectorsResponse> {
        return self.client.execute(operation: "PutEventSelectors", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lets you enable Insights event logging by specifying the Insights selectors that you want to enable on an existing trail. You also use PutInsightSelectors to turn off Insights event logging, by passing an empty list of insight types. The valid Insights event type in this release is ApiCallRateInsight.
    public func putInsightSelectors(_ input: PutInsightSelectorsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutInsightSelectorsResponse> {
        return self.client.execute(operation: "PutInsightSelectors", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the specified tags from a trail.
    public func removeTags(_ input: RemoveTagsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveTagsResponse> {
        return self.client.execute(operation: "RemoveTags", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts the recording of Amazon Web Services API calls and log file delivery for a trail. For a trail that is enabled in all regions, this operation must be called from the region in which the trail was created. This operation cannot be called on the shadow trails (replicated trails in other regions) of a trail that is enabled in all regions.
    public func startLogging(_ input: StartLoggingRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartLoggingResponse> {
        return self.client.execute(operation: "StartLogging", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Suspends the recording of Amazon Web Services API calls and log file delivery for the specified trail. Under most circumstances, there is no need to use this action. You can update a trail without stopping it first. This action is the only way to stop recording. For a trail enabled in all regions, this operation must be called from the region in which the trail was created, or an InvalidHomeRegionException will occur. This operation cannot be called on the shadow trails (replicated trails in other regions) of a trail enabled in all regions.
    public func stopLogging(_ input: StopLoggingRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopLoggingResponse> {
        return self.client.execute(operation: "StopLogging", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates trail settings that control what events you are logging, and how to handle log files. Changes to a trail do not require stopping the CloudTrail service. Use this action to designate an existing bucket for log delivery. If the existing bucket has previously been a target for CloudTrail log files, an IAM policy exists for the bucket. UpdateTrail must be called from the region in which the trail was created; otherwise, an InvalidHomeRegionException is thrown.
    public func updateTrail(_ input: UpdateTrailRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateTrailResponse> {
        return self.client.execute(operation: "UpdateTrail", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension CloudTrail {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: CloudTrail, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
