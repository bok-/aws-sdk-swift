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

/// Service object for interacting with AWS ChimeSDKMeetings service.
///
/// The Amazon Chime SDK meetings APIs in this section allow software developers to create Amazon Chime SDK meetings, set the AWS Regions for meetings, create and manage users, and send and  receive meeting notifications. For more information about the meeting APIs, see Amazon Chime SDK meetings.
public struct ChimeSDKMeetings: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ChimeSDKMeetings client
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
            service: "meetings-chime",
            signingName: "chime",
            serviceProtocol: .restjson,
            apiVersion: "2021-07-15",
            endpoint: endpoint,
            variantEndpoints: [
                [.fips]: .init(endpoints: [
                    "us-east-1": "meetings-chime-fips.us-east-1.amazonaws.com",
                    "us-gov-east-1": "meetings-chime-fips.us-gov-east-1.amazonaws.com",
                    "us-gov-west-1": "meetings-chime-fips.us-gov-west-1.amazonaws.com",
                    "us-west-2": "meetings-chime-fips.us-west-2.amazonaws.com"
                ])
            ],
            errorType: ChimeSDKMeetingsErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Creates up to 100 attendees for an active Amazon Chime SDK meeting. For more information about the Amazon Chime SDK, see  Using the Amazon Chime SDK in the Amazon Chime Developer Guide.
    public func batchCreateAttendee(_ input: BatchCreateAttendeeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchCreateAttendeeResponse> {
        return self.client.execute(operation: "BatchCreateAttendee", path: "/meetings/{MeetingId}/attendees?operation=batch-create", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates AttendeeCapabilities except the capabilities listed in an ExcludedAttendeeIds table.   You use the capabilities with a set of values that control what the capabilities can do, such as SendReceive data. For more information about those values, see  .   When using capabilities, be aware of these corner cases:   You can't set content capabilities to SendReceive or Receive unless you also set video capabilities to SendReceive  or Receive. If you don't set the video capability to receive, the response will contain an HTTP 400 Bad Request status code. However, you can set your video capability  to receive and you set your content capability to not receive.                       When you change an audio capability from None or Receive to Send or SendReceive ,  and if the attendee left their microphone unmuted, audio will flow from the attendee to the other meeting participants.   When you change a video or content capability from None or Receive to Send or SendReceive ,  and if the attendee turned on their video or content streams, remote attendess can receive those streams, but only after media renegotiation between the client and the Amazon Chime back-end server.
    @discardableResult public func batchUpdateAttendeeCapabilitiesExcept(_ input: BatchUpdateAttendeeCapabilitiesExceptRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "BatchUpdateAttendeeCapabilitiesExcept", path: "/meetings/{MeetingId}/attendees/capabilities?operation=batch-update-except", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a new attendee for an active Amazon Chime SDK meeting. For more information about the Amazon Chime SDK, see  Using the Amazon Chime SDK in the  Amazon Chime Developer Guide.
    public func createAttendee(_ input: CreateAttendeeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAttendeeResponse> {
        return self.client.execute(operation: "CreateAttendee", path: "/meetings/{MeetingId}/attendees", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new Amazon Chime SDK meeting in the specified media Region with no initial attendees. For more information about specifying media Regions, see  Amazon Chime SDK Media Regions in the Amazon Chime Developer Guide. For more information about the Amazon Chime SDK, see  Using the Amazon Chime SDK in the  Amazon Chime Developer Guide.
    public func createMeeting(_ input: CreateMeetingRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMeetingResponse> {
        return self.client.execute(operation: "CreateMeeting", path: "/meetings", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a new Amazon Chime SDK meeting in the specified media Region, with attendees. For more information about specifying media Regions, see  Amazon Chime SDK Media Regions in the Amazon Chime Developer Guide. For more information about the Amazon Chime SDK, see  Using the Amazon Chime SDK in the Amazon Chime Developer Guide.
    public func createMeetingWithAttendees(_ input: CreateMeetingWithAttendeesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMeetingWithAttendeesResponse> {
        return self.client.execute(operation: "CreateMeetingWithAttendees", path: "/meetings?operation=create-attendees", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an attendee from the specified Amazon Chime SDK meeting and deletes their  JoinToken. Attendees are automatically deleted when a Amazon Chime SDK meeting is deleted. For more information about the Amazon Chime SDK, see  Using the Amazon Chime SDK in the Amazon Chime Developer Guide.
    @discardableResult public func deleteAttendee(_ input: DeleteAttendeeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteAttendee", path: "/meetings/{MeetingId}/attendees/{AttendeeId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified Amazon Chime SDK meeting. The operation deletes all attendees, disconnects all clients, and prevents new clients from  joining the meeting. For more information about the Amazon Chime SDK, see  Using the Amazon Chime SDK in the  Amazon Chime Developer Guide.
    @discardableResult public func deleteMeeting(_ input: DeleteMeetingRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteMeeting", path: "/meetings/{MeetingId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Gets the Amazon Chime SDK attendee details for a specified meeting ID and attendee ID. For more information about the Amazon Chime SDK, see  Using the Amazon Chime SDK in the Amazon Chime Developer Guide.
    public func getAttendee(_ input: GetAttendeeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAttendeeResponse> {
        return self.client.execute(operation: "GetAttendee", path: "/meetings/{MeetingId}/attendees/{AttendeeId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the Amazon Chime SDK meeting details for the specified meeting ID. For more information about the Amazon Chime SDK, see  Using the Amazon Chime SDK in the Amazon Chime Developer Guide.
    public func getMeeting(_ input: GetMeetingRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetMeetingResponse> {
        return self.client.execute(operation: "GetMeeting", path: "/meetings/{MeetingId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Lists the attendees for the specified Amazon Chime SDK meeting. For more information about the Amazon Chime SDK, see  Using the Amazon Chime SDK in the Amazon Chime Developer Guide.
    public func listAttendees(_ input: ListAttendeesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAttendeesResponse> {
        return self.client.execute(operation: "ListAttendees", path: "/meetings/{MeetingId}/attendees", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of the tags available for the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts transcription for the specified meetingId.
    @discardableResult public func startMeetingTranscription(_ input: StartMeetingTranscriptionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "StartMeetingTranscription", path: "/meetings/{MeetingId}/transcription?operation=start", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops transcription for the specified meetingId.
    @discardableResult public func stopMeetingTranscription(_ input: StopMeetingTranscriptionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "StopMeetingTranscription", path: "/meetings/{MeetingId}/transcription?operation=stop", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The resource that supports tags.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/tags?operation=tag-resource", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the specified tags from the specified resources. When you specify a tag key, the action removes both that key and its associated value. The operation succeeds even if you  attempt to remove tags from a resource that were already removed. Note the following:   To remove tags from a resource, you need the necessary permissions for the service that the resource belongs to as well as permissions for removing tags. For more information,  see the documentation for the service whose resource you want to untag.   You can only tag resources that are located in the specified AWS Region for the calling AWS account.     Minimum permissions   In addition to the tag:UntagResources permission required by this operation, you must also have the remove tags permission defined by the service that created the resource.  For example, to remove the tags from an Amazon EC2 instance using the UntagResources operation, you must have both of the following permissions:   tag:UntagResource    ChimeSDKMeetings:DeleteTags
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/tags?operation=untag-resource", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The capabilties that you want to update.  You use the capabilities with a set of values that control what the capabilities can do, such as SendReceive data. For more information about those values, see  .   When using capabilities, be aware of these corner cases:   You can't set content capabilities to SendReceive or Receive unless you also set video capabilities to SendReceive  or Receive. If you don't set the video capability to receive, the response will contain an HTTP 400 Bad Request status code. However, you can set your video capability  to receive and you set your content capability to not receive.                       When you change an audio capability from None or Receive to Send or SendReceive ,  and if the attendee left their microphone unmuted, audio will flow from the attendee to the other meeting participants.   When you change a video or content capability from None or Receive to Send or SendReceive ,  and if the attendee turned on their video or content streams, remote attendess can receive those streams, but only after media renegotiation between the client and the Amazon Chime back-end server.
    public func updateAttendeeCapabilities(_ input: UpdateAttendeeCapabilitiesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAttendeeCapabilitiesResponse> {
        return self.client.execute(operation: "UpdateAttendeeCapabilities", path: "/meetings/{MeetingId}/attendees/{AttendeeId}/capabilities", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension ChimeSDKMeetings {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: ChimeSDKMeetings, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

extension ChimeSDKMeetings {
    ///   Lists the attendees for the specified Amazon Chime SDK meeting. For more information about the Amazon Chime SDK, see  Using the Amazon Chime SDK in the Amazon Chime Developer Guide.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listAttendeesPaginator<Result>(
        _ input: ListAttendeesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListAttendeesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listAttendees,
            inputKey: \ListAttendeesRequest.nextToken,
            outputKey: \ListAttendeesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listAttendeesPaginator(
        _ input: ListAttendeesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListAttendeesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listAttendees,
            inputKey: \ListAttendeesRequest.nextToken,
            outputKey: \ListAttendeesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension ChimeSDKMeetings.ListAttendeesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ChimeSDKMeetings.ListAttendeesRequest {
        return .init(
            maxResults: self.maxResults,
            meetingId: self.meetingId,
            nextToken: token
        )
    }
}