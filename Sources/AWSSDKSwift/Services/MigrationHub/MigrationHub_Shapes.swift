// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension MigrationHub {

    public struct ProgressUpdateStreamSummary: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ProgressUpdateStreamName", required: false, type: .string)
        ]
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStreamName: String?

        public init(progressUpdateStreamName: String? = nil) {
            self.progressUpdateStreamName = progressUpdateStreamName
        }

        private enum CodingKeys: String, CodingKey {
            case progressUpdateStreamName = "ProgressUpdateStreamName"
        }
    }

    public struct ListDiscoveredResourcesRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string), 
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// The name of the MigrationTask.
        public let migrationTaskName: String
        /// The maximum number of results returned per page.
        public let maxResults: Int32?
        /// The name of the ProgressUpdateStream.
        public let progressUpdateStream: String
        /// If a NextToken was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in NextToken.
        public let nextToken: String?

        public init(migrationTaskName: String, maxResults: Int32? = nil, progressUpdateStream: String, nextToken: String? = nil) {
            self.migrationTaskName = migrationTaskName
            self.maxResults = maxResults
            self.progressUpdateStream = progressUpdateStream
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case migrationTaskName = "MigrationTaskName"
            case maxResults = "MaxResults"
            case progressUpdateStream = "ProgressUpdateStream"
            case nextToken = "NextToken"
        }
    }

    public struct DescribeMigrationTaskResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MigrationTask", required: false, type: .structure)
        ]
        /// Object encapsulating information about the migration task.
        public let migrationTask: MigrationTask?

        public init(migrationTask: MigrationTask? = nil) {
            self.migrationTask = migrationTask
        }

        private enum CodingKeys: String, CodingKey {
            case migrationTask = "MigrationTask"
        }
    }

    public struct DisassociateDiscoveredResourceResult: AWSShape {

    }

    public struct AssociateDiscoveredResourceResult: AWSShape {

    }

    public struct NotifyMigrationTaskStateResult: AWSShape {

    }

    public struct NotifyApplicationStateRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ApplicationId", required: true, type: .string), 
            AWSShapeMember(label: "DryRun", required: false, type: .boolean), 
            AWSShapeMember(label: "Status", required: true, type: .enum)
        ]
        /// The configurationId in ADS that uniquely identifies the grouped application.
        public let applicationId: String
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?
        /// Status of the application - Not Started, In-Progress, Complete.
        public let status: ApplicationStatus

        public init(applicationId: String, dryRun: Bool? = nil, status: ApplicationStatus) {
            self.applicationId = applicationId
            self.dryRun = dryRun
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case dryRun = "DryRun"
            case status = "Status"
        }
    }

    public struct DeleteProgressUpdateStreamRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DryRun", required: false, type: .boolean), 
            AWSShapeMember(label: "ProgressUpdateStreamName", required: true, type: .string)
        ]
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStreamName: String

        public init(dryRun: Bool? = nil, progressUpdateStreamName: String) {
            self.dryRun = dryRun
            self.progressUpdateStreamName = progressUpdateStreamName
        }

        private enum CodingKeys: String, CodingKey {
            case dryRun = "DryRun"
            case progressUpdateStreamName = "ProgressUpdateStreamName"
        }
    }

    public struct DescribeApplicationStateRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ApplicationId", required: true, type: .string)
        ]
        /// The configurationId in ADS that uniquely identifies the grouped application.
        public let applicationId: String

        public init(applicationId: String) {
            self.applicationId = applicationId
        }

        private enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
        }
    }

    public enum Status: String, CustomStringConvertible, Codable {
        case notStarted = "NOT_STARTED"
        case inProgress = "IN_PROGRESS"
        case failed = "FAILED"
        case completed = "COMPLETED"
        public var description: String { return self.rawValue }
    }

    public enum ResourceAttributeType: String, CustomStringConvertible, Codable {
        case ipv4Address = "IPV4_ADDRESS"
        case ipv6Address = "IPV6_ADDRESS"
        case macAddress = "MAC_ADDRESS"
        case fqdn = "FQDN"
        case vmManagerId = "VM_MANAGER_ID"
        case vmManagedObjectReference = "VM_MANAGED_OBJECT_REFERENCE"
        case vmName = "VM_NAME"
        case vmPath = "VM_PATH"
        case biosId = "BIOS_ID"
        case motherboardSerialNumber = "MOTHERBOARD_SERIAL_NUMBER"
        public var description: String { return self.rawValue }
    }

    public struct MigrationTaskSummary: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "StatusDetail", required: false, type: .string), 
            AWSShapeMember(label: "ProgressPercent", required: false, type: .integer), 
            AWSShapeMember(label: "MigrationTaskName", required: false, type: .string), 
            AWSShapeMember(label: "ProgressUpdateStream", required: false, type: .string), 
            AWSShapeMember(label: "UpdateDateTime", required: false, type: .timestamp), 
            AWSShapeMember(label: "Status", required: false, type: .enum)
        ]
        /// Detail information of what is being done within the overall status state.
        public let statusDetail: String?
        public let progressPercent: Int32?
        /// Unique identifier that references the migration task.
        public let migrationTaskName: String?
        /// An AWS resource used for access control. It should uniquely identify the migration tool as it is used for all updates made by the tool.
        public let progressUpdateStream: String?
        /// The timestamp when the task was gathered.
        public let updateDateTime: TimeStamp?
        /// Status of the task.
        public let status: Status?

        public init(statusDetail: String? = nil, progressPercent: Int32? = nil, migrationTaskName: String? = nil, progressUpdateStream: String? = nil, updateDateTime: TimeStamp? = nil, status: Status? = nil) {
            self.statusDetail = statusDetail
            self.progressPercent = progressPercent
            self.migrationTaskName = migrationTaskName
            self.progressUpdateStream = progressUpdateStream
            self.updateDateTime = updateDateTime
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case statusDetail = "StatusDetail"
            case progressPercent = "ProgressPercent"
            case migrationTaskName = "MigrationTaskName"
            case progressUpdateStream = "ProgressUpdateStream"
            case updateDateTime = "UpdateDateTime"
            case status = "Status"
        }
    }

    public struct ListProgressUpdateStreamsResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "ProgressUpdateStreamSummaryList", required: false, type: .list)
        ]
        /// If there are more streams created than the max result, return the next token to be passed to the next call as a bookmark of where to start from.
        public let nextToken: String?
        /// List of progress update streams up to the max number of results passed in the input.
        public let progressUpdateStreamSummaryList: [ProgressUpdateStreamSummary]?

        public init(nextToken: String? = nil, progressUpdateStreamSummaryList: [ProgressUpdateStreamSummary]? = nil) {
            self.nextToken = nextToken
            self.progressUpdateStreamSummaryList = progressUpdateStreamSummaryList
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case progressUpdateStreamSummaryList = "ProgressUpdateStreamSummaryList"
        }
    }

    public struct PutResourceAttributesRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string), 
            AWSShapeMember(label: "ResourceAttributeList", required: true, type: .list), 
            AWSShapeMember(label: "DryRun", required: false, type: .boolean), 
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string)
        ]
        /// Unique identifier that references the migration task.
        public let migrationTaskName: String
        /// Information about the resource that is being migrated. This data will be used to map the task to a resource in the Application Discovery Service (ADS)'s repository.  Takes the object array of ResourceAttribute where the Type field is reserved for the following values: IPV4_ADDRESS | IPV6_ADDRESS | MAC_ADDRESS | FQDN | VM_MANAGER_ID | VM_MANAGED_OBJECT_REFERENCE | VM_NAME | VM_PATH | BIOS_ID | MOTHERBOARD_SERIAL_NUMBER where the identifying value can be a string up to 256 characters.     If any "VM" related value is set for a ResourceAttribute object, it is required that VM_MANAGER_ID, as a minimum, is always set. If VM_MANAGER_ID is not set, then all "VM" fields will be discarded and "VM" fields will not be used for matching the migration task to a server in Application Discovery Service (ADS)'s repository. See the Example section below for a use case of specifying "VM" related values.    If a server you are trying to match has multiple IP or MAC addresses, you should provide as many as you know in separate type/value pairs passed to the ResourceAttributeList parameter to maximize the chances of matching.   
        public let resourceAttributeList: [ResourceAttribute]
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStream: String

        public init(migrationTaskName: String, resourceAttributeList: [ResourceAttribute], dryRun: Bool? = nil, progressUpdateStream: String) {
            self.migrationTaskName = migrationTaskName
            self.resourceAttributeList = resourceAttributeList
            self.dryRun = dryRun
            self.progressUpdateStream = progressUpdateStream
        }

        private enum CodingKeys: String, CodingKey {
            case migrationTaskName = "MigrationTaskName"
            case resourceAttributeList = "ResourceAttributeList"
            case dryRun = "DryRun"
            case progressUpdateStream = "ProgressUpdateStream"
        }
    }

    public struct CreateProgressUpdateStreamResult: AWSShape {

    }

    public struct Task: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ProgressPercent", required: false, type: .integer), 
            AWSShapeMember(label: "StatusDetail", required: false, type: .string), 
            AWSShapeMember(label: "Status", required: true, type: .enum)
        ]
        /// Indication of the percentage completion of the task.
        public let progressPercent: Int32?
        /// Details of task status as notified by a migration tool. A tool might use this field to provide clarifying information about the status that is unique to that tool or that explains an error state.
        public let statusDetail: String?
        /// Status of the task - Not Started, In-Progress, Complete.
        public let status: Status

        public init(progressPercent: Int32? = nil, statusDetail: String? = nil, status: Status) {
            self.progressPercent = progressPercent
            self.statusDetail = statusDetail
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case progressPercent = "ProgressPercent"
            case statusDetail = "StatusDetail"
            case status = "Status"
        }
    }

    public struct ListProgressUpdateStreamsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// Filter to limit the maximum number of results to list per page.
        public let maxResults: Int32?
        /// If a NextToken was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in NextToken.
        public let nextToken: String?

        public init(maxResults: Int32? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

    public struct AssociateDiscoveredResourceRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DiscoveredResource", required: true, type: .structure), 
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string), 
            AWSShapeMember(label: "DryRun", required: false, type: .boolean), 
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string)
        ]
        /// Object representing a Resource.
        public let discoveredResource: DiscoveredResource
        /// The identifier given to the MigrationTask.
        public let migrationTaskName: String
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?
        /// The name of the ProgressUpdateStream.
        public let progressUpdateStream: String

        public init(discoveredResource: DiscoveredResource, migrationTaskName: String, dryRun: Bool? = nil, progressUpdateStream: String) {
            self.discoveredResource = discoveredResource
            self.migrationTaskName = migrationTaskName
            self.dryRun = dryRun
            self.progressUpdateStream = progressUpdateStream
        }

        private enum CodingKeys: String, CodingKey {
            case discoveredResource = "DiscoveredResource"
            case migrationTaskName = "MigrationTaskName"
            case dryRun = "DryRun"
            case progressUpdateStream = "ProgressUpdateStream"
        }
    }

    public struct DisassociateCreatedArtifactRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string), 
            AWSShapeMember(label: "CreatedArtifactName", required: true, type: .string), 
            AWSShapeMember(label: "DryRun", required: false, type: .boolean), 
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string)
        ]
        /// Unique identifier that references the migration task to be disassociated with the artifact.
        public let migrationTaskName: String
        /// An ARN of the AWS resource related to the migration (e.g., AMI, EC2 instance, RDS instance, etc.)
        public let createdArtifactName: String
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStream: String

        public init(migrationTaskName: String, createdArtifactName: String, dryRun: Bool? = nil, progressUpdateStream: String) {
            self.migrationTaskName = migrationTaskName
            self.createdArtifactName = createdArtifactName
            self.dryRun = dryRun
            self.progressUpdateStream = progressUpdateStream
        }

        private enum CodingKeys: String, CodingKey {
            case migrationTaskName = "MigrationTaskName"
            case createdArtifactName = "CreatedArtifactName"
            case dryRun = "DryRun"
            case progressUpdateStream = "ProgressUpdateStream"
        }
    }

    public struct DeleteProgressUpdateStreamResult: AWSShape {

    }

    public struct CreatedArtifact: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Description", required: false, type: .string), 
            AWSShapeMember(label: "Name", required: true, type: .string)
        ]
        /// A description that can be free-form text to record additional detail about the artifact for clarity or for later reference.
        public let description: String?
        /// An ARN that uniquely identifies the result of a migration task.
        public let name: String

        public init(description: String? = nil, name: String) {
            self.description = description
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case description = "Description"
            case name = "Name"
        }
    }

    public enum ApplicationStatus: String, CustomStringConvertible, Codable {
        case notStarted = "NOT_STARTED"
        case inProgress = "IN_PROGRESS"
        case completed = "COMPLETED"
        public var description: String { return self.rawValue }
    }

    public struct DisassociateCreatedArtifactResult: AWSShape {

    }

    public struct ListMigrationTasksRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ResourceName", required: false, type: .string), 
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// Filter migration tasks by discovered resource name.
        public let resourceName: String?
        /// Value to specify how many results are returned per page.
        public let maxResults: Int32?
        /// If a NextToken was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in NextToken.
        public let nextToken: String?

        public init(resourceName: String? = nil, maxResults: Int32? = nil, nextToken: String? = nil) {
            self.resourceName = resourceName
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case resourceName = "ResourceName"
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

    public struct MigrationTask: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Task", required: false, type: .structure), 
            AWSShapeMember(label: "MigrationTaskName", required: false, type: .string), 
            AWSShapeMember(label: "ResourceAttributeList", required: false, type: .list), 
            AWSShapeMember(label: "ProgressUpdateStream", required: false, type: .string), 
            AWSShapeMember(label: "UpdateDateTime", required: false, type: .timestamp)
        ]
        /// Task object encapsulating task information.
        public let task: Task?
        /// Unique identifier that references the migration task.
        public let migrationTaskName: String?
        public let resourceAttributeList: [ResourceAttribute]?
        /// A name that identifies the vendor of the migration tool being used.
        public let progressUpdateStream: String?
        /// The timestamp when the task was gathered.
        public let updateDateTime: TimeStamp?

        public init(task: Task? = nil, migrationTaskName: String? = nil, resourceAttributeList: [ResourceAttribute]? = nil, progressUpdateStream: String? = nil, updateDateTime: TimeStamp? = nil) {
            self.task = task
            self.migrationTaskName = migrationTaskName
            self.resourceAttributeList = resourceAttributeList
            self.progressUpdateStream = progressUpdateStream
            self.updateDateTime = updateDateTime
        }

        private enum CodingKeys: String, CodingKey {
            case task = "Task"
            case migrationTaskName = "MigrationTaskName"
            case resourceAttributeList = "ResourceAttributeList"
            case progressUpdateStream = "ProgressUpdateStream"
            case updateDateTime = "UpdateDateTime"
        }
    }

    public struct ResourceAttribute: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Value", required: true, type: .string), 
            AWSShapeMember(label: "Type", required: true, type: .enum)
        ]
        /// Value of the resource type.
        public let value: String
        /// Type of resource.
        public let `type`: ResourceAttributeType

        public init(value: String, type: ResourceAttributeType) {
            self.value = value
            self.`type` = `type`
        }

        private enum CodingKeys: String, CodingKey {
            case value = "Value"
            case `type` = "Type"
        }
    }

    public struct PutResourceAttributesResult: AWSShape {

    }

    public struct CreateProgressUpdateStreamRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DryRun", required: false, type: .boolean), 
            AWSShapeMember(label: "ProgressUpdateStreamName", required: true, type: .string)
        ]
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStreamName: String

        public init(dryRun: Bool? = nil, progressUpdateStreamName: String) {
            self.dryRun = dryRun
            self.progressUpdateStreamName = progressUpdateStreamName
        }

        private enum CodingKeys: String, CodingKey {
            case dryRun = "DryRun"
            case progressUpdateStreamName = "ProgressUpdateStreamName"
        }
    }

    public struct ImportMigrationTaskResult: AWSShape {

    }

    public struct ListDiscoveredResourcesResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DiscoveredResourceList", required: false, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// Returned list of discovered resources associated with the given MigrationTask.
        public let discoveredResourceList: [DiscoveredResource]?
        /// If there are more discovered resources than the max result, return the next token to be passed to the next call as a bookmark of where to start from.
        public let nextToken: String?

        public init(discoveredResourceList: [DiscoveredResource]? = nil, nextToken: String? = nil) {
            self.discoveredResourceList = discoveredResourceList
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case discoveredResourceList = "DiscoveredResourceList"
            case nextToken = "NextToken"
        }
    }

    public struct ListCreatedArtifactsResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "CreatedArtifactList", required: false, type: .list)
        ]
        /// If there are more created artifacts than the max result, return the next token to be passed to the next call as a bookmark of where to start from.
        public let nextToken: String?
        /// List of created artifacts up to the maximum number of results specified in the request.
        public let createdArtifactList: [CreatedArtifact]?

        public init(nextToken: String? = nil, createdArtifactList: [CreatedArtifact]? = nil) {
            self.nextToken = nextToken
            self.createdArtifactList = createdArtifactList
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case createdArtifactList = "CreatedArtifactList"
        }
    }

    public struct ListCreatedArtifactsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string), 
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// Unique identifier that references the migration task.
        public let migrationTaskName: String
        /// Maximum number of results to be returned per page.
        public let maxResults: Int32?
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStream: String
        /// If a NextToken was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in NextToken.
        public let nextToken: String?

        public init(migrationTaskName: String, maxResults: Int32? = nil, progressUpdateStream: String, nextToken: String? = nil) {
            self.migrationTaskName = migrationTaskName
            self.maxResults = maxResults
            self.progressUpdateStream = progressUpdateStream
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case migrationTaskName = "MigrationTaskName"
            case maxResults = "MaxResults"
            case progressUpdateStream = "ProgressUpdateStream"
            case nextToken = "NextToken"
        }
    }

    public struct AssociateCreatedArtifactResult: AWSShape {

    }

    public struct NotifyApplicationStateResult: AWSShape {

    }

    public struct DisassociateDiscoveredResourceRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string), 
            AWSShapeMember(label: "ConfigurationId", required: true, type: .string), 
            AWSShapeMember(label: "DryRun", required: false, type: .boolean), 
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string)
        ]
        /// The identifier given to the MigrationTask.
        public let migrationTaskName: String
        /// ConfigurationId of the ADS resource to be disassociated.
        public let configurationId: String
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?
        /// The name of the ProgressUpdateStream.
        public let progressUpdateStream: String

        public init(migrationTaskName: String, configurationId: String, dryRun: Bool? = nil, progressUpdateStream: String) {
            self.migrationTaskName = migrationTaskName
            self.configurationId = configurationId
            self.dryRun = dryRun
            self.progressUpdateStream = progressUpdateStream
        }

        private enum CodingKeys: String, CodingKey {
            case migrationTaskName = "MigrationTaskName"
            case configurationId = "ConfigurationId"
            case dryRun = "DryRun"
            case progressUpdateStream = "ProgressUpdateStream"
        }
    }

    public struct DescribeApplicationStateResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ApplicationStatus", required: false, type: .enum), 
            AWSShapeMember(label: "LastUpdatedTime", required: false, type: .timestamp)
        ]
        /// Status of the application - Not Started, In-Progress, Complete.
        public let applicationStatus: ApplicationStatus?
        /// The timestamp when the application status was last updated.
        public let lastUpdatedTime: TimeStamp?

        public init(applicationStatus: ApplicationStatus? = nil, lastUpdatedTime: TimeStamp? = nil) {
            self.applicationStatus = applicationStatus
            self.lastUpdatedTime = lastUpdatedTime
        }

        private enum CodingKeys: String, CodingKey {
            case applicationStatus = "ApplicationStatus"
            case lastUpdatedTime = "LastUpdatedTime"
        }
    }

    public struct DescribeMigrationTaskRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string), 
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string)
        ]
        /// The identifier given to the MigrationTask.
        public let migrationTaskName: String
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStream: String

        public init(migrationTaskName: String, progressUpdateStream: String) {
            self.migrationTaskName = migrationTaskName
            self.progressUpdateStream = progressUpdateStream
        }

        private enum CodingKeys: String, CodingKey {
            case migrationTaskName = "MigrationTaskName"
            case progressUpdateStream = "ProgressUpdateStream"
        }
    }

    public struct ListMigrationTasksResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "MigrationTaskSummaryList", required: false, type: .list)
        ]
        /// If there are more migration tasks than the max result, return the next token to be passed to the next call as a bookmark of where to start from.
        public let nextToken: String?
        /// Lists the migration task's summary which includes: MigrationTaskName, ProgressPercent, ProgressUpdateStream, Status, and the UpdateDateTime for each task.
        public let migrationTaskSummaryList: [MigrationTaskSummary]?

        public init(nextToken: String? = nil, migrationTaskSummaryList: [MigrationTaskSummary]? = nil) {
            self.nextToken = nextToken
            self.migrationTaskSummaryList = migrationTaskSummaryList
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case migrationTaskSummaryList = "MigrationTaskSummaryList"
        }
    }

    public struct NotifyMigrationTaskStateRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Task", required: true, type: .structure), 
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string), 
            AWSShapeMember(label: "NextUpdateSeconds", required: true, type: .integer), 
            AWSShapeMember(label: "DryRun", required: false, type: .boolean), 
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string), 
            AWSShapeMember(label: "UpdateDateTime", required: true, type: .timestamp)
        ]
        /// Information about the task's progress and status.
        public let task: Task
        /// Unique identifier that references the migration task.
        public let migrationTaskName: String
        /// Number of seconds after the UpdateDateTime within which the Migration Hub can expect an update. If Migration Hub does not receive an update within the specified interval, then the migration task will be considered stale.
        public let nextUpdateSeconds: Int32
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStream: String
        /// The timestamp when the task was gathered.
        public let updateDateTime: TimeStamp

        public init(task: Task, migrationTaskName: String, nextUpdateSeconds: Int32, dryRun: Bool? = nil, progressUpdateStream: String, updateDateTime: TimeStamp) {
            self.task = task
            self.migrationTaskName = migrationTaskName
            self.nextUpdateSeconds = nextUpdateSeconds
            self.dryRun = dryRun
            self.progressUpdateStream = progressUpdateStream
            self.updateDateTime = updateDateTime
        }

        private enum CodingKeys: String, CodingKey {
            case task = "Task"
            case migrationTaskName = "MigrationTaskName"
            case nextUpdateSeconds = "NextUpdateSeconds"
            case dryRun = "DryRun"
            case progressUpdateStream = "ProgressUpdateStream"
            case updateDateTime = "UpdateDateTime"
        }
    }

    public struct AssociateCreatedArtifactRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string), 
            AWSShapeMember(label: "DryRun", required: false, type: .boolean), 
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string), 
            AWSShapeMember(label: "CreatedArtifact", required: true, type: .structure)
        ]
        /// Unique identifier that references the migration task.
        public let migrationTaskName: String
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStream: String
        /// An ARN of the AWS resource related to the migration (e.g., AMI, EC2 instance, RDS instance, etc.) 
        public let createdArtifact: CreatedArtifact

        public init(migrationTaskName: String, dryRun: Bool? = nil, progressUpdateStream: String, createdArtifact: CreatedArtifact) {
            self.migrationTaskName = migrationTaskName
            self.dryRun = dryRun
            self.progressUpdateStream = progressUpdateStream
            self.createdArtifact = createdArtifact
        }

        private enum CodingKeys: String, CodingKey {
            case migrationTaskName = "MigrationTaskName"
            case dryRun = "DryRun"
            case progressUpdateStream = "ProgressUpdateStream"
            case createdArtifact = "CreatedArtifact"
        }
    }

    public struct DiscoveredResource: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ConfigurationId", required: true, type: .string), 
            AWSShapeMember(label: "Description", required: false, type: .string)
        ]
        /// The configurationId in ADS that uniquely identifies the on-premise resource.
        public let configurationId: String
        /// A description that can be free-form text to record additional detail about the discovered resource for clarity or later reference.
        public let description: String?

        public init(configurationId: String, description: String? = nil) {
            self.configurationId = configurationId
            self.description = description
        }

        private enum CodingKeys: String, CodingKey {
            case configurationId = "ConfigurationId"
            case description = "Description"
        }
    }

    public struct ImportMigrationTaskRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DryRun", required: false, type: .boolean), 
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string), 
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string)
        ]
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStream: String
        /// Unique identifier that references the migration task.
        public let migrationTaskName: String

        public init(dryRun: Bool? = nil, progressUpdateStream: String, migrationTaskName: String) {
            self.dryRun = dryRun
            self.progressUpdateStream = progressUpdateStream
            self.migrationTaskName = migrationTaskName
        }

        private enum CodingKeys: String, CodingKey {
            case dryRun = "DryRun"
            case progressUpdateStream = "ProgressUpdateStream"
            case migrationTaskName = "MigrationTaskName"
        }
    }

}