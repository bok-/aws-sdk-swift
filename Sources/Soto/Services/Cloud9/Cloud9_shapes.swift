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

import Foundation
import SotoCore

extension Cloud9 {
    // MARK: Enums

    public enum ConnectionType: String, CustomStringConvertible, Codable, _SotoSendable {
        case connectSsh = "CONNECT_SSH"
        case connectSsm = "CONNECT_SSM"
        public var description: String { return self.rawValue }
    }

    public enum EnvironmentLifecycleStatus: String, CustomStringConvertible, Codable, _SotoSendable {
        case createFailed = "CREATE_FAILED"
        case created = "CREATED"
        case creating = "CREATING"
        case deleteFailed = "DELETE_FAILED"
        case deleting = "DELETING"
        public var description: String { return self.rawValue }
    }

    public enum EnvironmentStatus: String, CustomStringConvertible, Codable, _SotoSendable {
        case connecting
        case creating
        case deleting
        case error
        case ready
        case stopped
        case stopping
        public var description: String { return self.rawValue }
    }

    public enum EnvironmentType: String, CustomStringConvertible, Codable, _SotoSendable {
        case ec2
        case ssh
        public var description: String { return self.rawValue }
    }

    public enum ManagedCredentialsAction: String, CustomStringConvertible, Codable, _SotoSendable {
        case disable = "DISABLE"
        case enable = "ENABLE"
        public var description: String { return self.rawValue }
    }

    public enum ManagedCredentialsStatus: String, CustomStringConvertible, Codable, _SotoSendable {
        case disabledByCollaborator = "DISABLED_BY_COLLABORATOR"
        case disabledByDefault = "DISABLED_BY_DEFAULT"
        case disabledByOwner = "DISABLED_BY_OWNER"
        case enabledByOwner = "ENABLED_BY_OWNER"
        case enabledOnCreate = "ENABLED_ON_CREATE"
        case failedRemovalByCollaborator = "FAILED_REMOVAL_BY_COLLABORATOR"
        case failedRemovalByOwner = "FAILED_REMOVAL_BY_OWNER"
        case pendingRemovalByCollaborator = "PENDING_REMOVAL_BY_COLLABORATOR"
        case pendingRemovalByOwner = "PENDING_REMOVAL_BY_OWNER"
        case pendingStartRemovalByCollaborator = "PENDING_START_REMOVAL_BY_COLLABORATOR"
        case pendingStartRemovalByOwner = "PENDING_START_REMOVAL_BY_OWNER"
        public var description: String { return self.rawValue }
    }

    public enum MemberPermissions: String, CustomStringConvertible, Codable, _SotoSendable {
        case readOnly = "read-only"
        case readWrite = "read-write"
        public var description: String { return self.rawValue }
    }

    public enum Permissions: String, CustomStringConvertible, Codable, _SotoSendable {
        case owner
        case readOnly = "read-only"
        case readWrite = "read-write"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct CreateEnvironmentEC2Request: AWSEncodableShape {
        /// The number of minutes until the running instance is shut down after the environment has last been used.
        public let automaticStopTimeMinutes: Int?
        /// A unique, case-sensitive string that helps Cloud9 to ensure this operation completes no more than one time. For more information, see Client Tokens in the Amazon EC2 API Reference.
        public let clientRequestToken: String?
        /// The connection type used for connecting to an Amazon EC2 environment. Valid values are CONNECT_SSH (default) and CONNECT_SSM (connected through Amazon EC2 Systems Manager). For more information, see Accessing no-ingress EC2 instances with Amazon EC2 Systems Manager in the Cloud9 User Guide.
        public let connectionType: ConnectionType?
        /// The description of the environment to create.
        public let description: String?
        /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation. Otherwise, it is UnauthorizedOperation.
        public let dryRun: Bool?
        /// The identifier for the Amazon Machine Image (AMI) that's used to create the EC2 instance. To choose an AMI for the instance, you must specify a valid AMI alias or a valid Amazon EC2 Systems Manager (SSM) path. The default Amazon Linux AMI is currently used if the parameter isn't explicitly assigned a value in the request.  In the future the parameter for Amazon Linux will no longer be available when you specify an AMI for your instance. Amazon Linux 2 will then become the default AMI, which is used to launch your instance if no parameter is explicitly defined.  AMI aliases      Amazon Linux (default): amazonlinux-1-x86_64     Amazon Linux 2: amazonlinux-2-x86_64    Ubuntu 18.04: ubuntu-18.04-x86_64     SSM paths     Amazon Linux (default): resolve:ssm:/aws/service/cloud9/amis/amazonlinux-1-x86_64     Amazon Linux 2: resolve:ssm:/aws/service/cloud9/amis/amazonlinux-2-x86_64    Ubuntu 18.04: resolve:ssm:/aws/service/cloud9/amis/ubuntu-18.04-x86_64
        public let imageId: String?
        /// The type of instance to connect to the environment (for example, t2.micro).
        public let instanceType: String
        /// The name of the environment to create. This name is visible to other IAM users in the same Amazon Web Services account.
        public let name: String
        /// The Amazon Resource Name (ARN) of the environment owner. This ARN can be the ARN of any IAM principal. If this value is not specified, the ARN defaults to this environment's creator.
        public let ownerArn: String?
        /// The ID of the subnet in Amazon VPC that Cloud9 will use to communicate with the Amazon EC2 instance.
        public let subnetId: String?
        /// An array of key-value pairs that will be associated with the new Cloud9 development environment.
        public let tags: [Tag]?

        public init(automaticStopTimeMinutes: Int? = nil, clientRequestToken: String? = nil, connectionType: ConnectionType? = nil, description: String? = nil, dryRun: Bool? = nil, imageId: String? = nil, instanceType: String, name: String, ownerArn: String? = nil, subnetId: String? = nil, tags: [Tag]? = nil) {
            self.automaticStopTimeMinutes = automaticStopTimeMinutes
            self.clientRequestToken = clientRequestToken
            self.connectionType = connectionType
            self.description = description
            self.dryRun = dryRun
            self.imageId = imageId
            self.instanceType = instanceType
            self.name = name
            self.ownerArn = ownerArn
            self.subnetId = subnetId
            self.tags = tags
        }

        public func validate(name: String) throws {
            try self.validate(self.automaticStopTimeMinutes, name: "automaticStopTimeMinutes", parent: name, max: 20160)
            try self.validate(self.clientRequestToken, name: "clientRequestToken", parent: name, pattern: "^[\\x20-\\x7E]{10,128}$")
            try self.validate(self.description, name: "description", parent: name, max: 200)
            try self.validate(self.imageId, name: "imageId", parent: name, max: 512)
            try self.validate(self.instanceType, name: "instanceType", parent: name, max: 20)
            try self.validate(self.instanceType, name: "instanceType", parent: name, min: 5)
            try self.validate(self.instanceType, name: "instanceType", parent: name, pattern: "^[a-z][1-9][.][a-z0-9]+$")
            try self.validate(self.name, name: "name", parent: name, max: 60)
            try self.validate(self.name, name: "name", parent: name, min: 1)
            try self.validate(self.ownerArn, name: "ownerArn", parent: name, pattern: "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):(iam|sts)::\\d+:(root|(user\\/[\\w+=/:,.@-]{1,64}|federated-user\\/[\\w+=/:,.@-]{2,32}|assumed-role\\/[\\w+=:,.@-]{1,64}\\/[\\w+=,.@-]{1,64}))$")
            try self.validate(self.subnetId, name: "subnetId", parent: name, max: 24)
            try self.validate(self.subnetId, name: "subnetId", parent: name, min: 15)
            try self.validate(self.subnetId, name: "subnetId", parent: name, pattern: "^(subnet-[0-9a-f]{8}|subnet-[0-9a-f]{17})$")
            try self.tags?.forEach {
                try $0.validate(name: "\(name).tags[]")
            }
            try self.validate(self.tags, name: "tags", parent: name, max: 200)
        }

        private enum CodingKeys: String, CodingKey {
            case automaticStopTimeMinutes
            case clientRequestToken
            case connectionType
            case description
            case dryRun
            case imageId
            case instanceType
            case name
            case ownerArn
            case subnetId
            case tags
        }
    }

    public struct CreateEnvironmentEC2Result: AWSDecodableShape {
        /// The ID of the environment that was created.
        public let environmentId: String?

        public init(environmentId: String? = nil) {
            self.environmentId = environmentId
        }

        private enum CodingKeys: String, CodingKey {
            case environmentId
        }
    }

    public struct CreateEnvironmentMembershipRequest: AWSEncodableShape {
        /// The ID of the environment that contains the environment member you want to add.
        public let environmentId: String
        /// The type of environment member permissions you want to associate with this environment member. Available values include:    read-only: Has read-only access to the environment.    read-write: Has read-write access to the environment.
        public let permissions: MemberPermissions
        /// The Amazon Resource Name (ARN) of the environment member you want to add.
        public let userArn: String

        public init(environmentId: String, permissions: MemberPermissions, userArn: String) {
            self.environmentId = environmentId
            self.permissions = permissions
            self.userArn = userArn
        }

        public func validate(name: String) throws {
            try self.validate(self.environmentId, name: "environmentId", parent: name, pattern: "^[a-zA-Z0-9]{8,32}$")
            try self.validate(self.userArn, name: "userArn", parent: name, pattern: "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):(iam|sts)::\\d+:(root|(user\\/[\\w+=/:,.@-]{1,64}|federated-user\\/[\\w+=/:,.@-]{2,32}|assumed-role\\/[\\w+=:,.@-]{1,64}\\/[\\w+=,.@-]{1,64}))$")
        }

        private enum CodingKeys: String, CodingKey {
            case environmentId
            case permissions
            case userArn
        }
    }

    public struct CreateEnvironmentMembershipResult: AWSDecodableShape {
        /// Information about the environment member that was added.
        public let membership: EnvironmentMember

        public init(membership: EnvironmentMember) {
            self.membership = membership
        }

        private enum CodingKeys: String, CodingKey {
            case membership
        }
    }

    public struct DeleteEnvironmentMembershipRequest: AWSEncodableShape {
        /// The ID of the environment to delete the environment member from.
        public let environmentId: String
        /// The Amazon Resource Name (ARN) of the environment member to delete from the environment.
        public let userArn: String

        public init(environmentId: String, userArn: String) {
            self.environmentId = environmentId
            self.userArn = userArn
        }

        public func validate(name: String) throws {
            try self.validate(self.environmentId, name: "environmentId", parent: name, pattern: "^[a-zA-Z0-9]{8,32}$")
            try self.validate(self.userArn, name: "userArn", parent: name, pattern: "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):(iam|sts)::\\d+:(root|(user\\/[\\w+=/:,.@-]{1,64}|federated-user\\/[\\w+=/:,.@-]{2,32}|assumed-role\\/[\\w+=:,.@-]{1,64}\\/[\\w+=,.@-]{1,64}))$")
        }

        private enum CodingKeys: String, CodingKey {
            case environmentId
            case userArn
        }
    }

    public struct DeleteEnvironmentMembershipResult: AWSDecodableShape {
        public init() {}
    }

    public struct DeleteEnvironmentRequest: AWSEncodableShape {
        /// The ID of the environment to delete.
        public let environmentId: String

        public init(environmentId: String) {
            self.environmentId = environmentId
        }

        public func validate(name: String) throws {
            try self.validate(self.environmentId, name: "environmentId", parent: name, pattern: "^[a-zA-Z0-9]{8,32}$")
        }

        private enum CodingKeys: String, CodingKey {
            case environmentId
        }
    }

    public struct DeleteEnvironmentResult: AWSDecodableShape {
        public init() {}
    }

    public struct DescribeEnvironmentMembershipsRequest: AWSEncodableShape {
        /// The ID of the environment to get environment member information about.
        public let environmentId: String?
        /// The maximum number of environment members to get information about.
        public let maxResults: Int?
        /// During a previous call, if there are more than 25 items in the list, only the first 25 items are returned, along with a unique string called a next token. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.
        public let nextToken: String?
        /// The type of environment member permissions to get information about. Available values include:    owner: Owns the environment.    read-only: Has read-only access to the environment.    read-write: Has read-write access to the environment.   If no value is specified, information about all environment members are returned.
        public let permissions: [Permissions]?
        /// The Amazon Resource Name (ARN) of an individual environment member to get information about. If no value is specified, information about all environment members are returned.
        public let userArn: String?

        public init(environmentId: String? = nil, maxResults: Int? = nil, nextToken: String? = nil, permissions: [Permissions]? = nil, userArn: String? = nil) {
            self.environmentId = environmentId
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.permissions = permissions
            self.userArn = userArn
        }

        public func validate(name: String) throws {
            try self.validate(self.environmentId, name: "environmentId", parent: name, pattern: "^[a-zA-Z0-9]{8,32}$")
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 25)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 0)
            try self.validate(self.userArn, name: "userArn", parent: name, pattern: "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):(iam|sts)::\\d+:(root|(user\\/[\\w+=/:,.@-]{1,64}|federated-user\\/[\\w+=/:,.@-]{2,32}|assumed-role\\/[\\w+=:,.@-]{1,64}\\/[\\w+=,.@-]{1,64}))$")
        }

        private enum CodingKeys: String, CodingKey {
            case environmentId
            case maxResults
            case nextToken
            case permissions
            case userArn
        }
    }

    public struct DescribeEnvironmentMembershipsResult: AWSDecodableShape {
        /// Information about the environment members for the environment.
        public let memberships: [EnvironmentMember]?
        /// If there are more than 25 items in the list, only the first 25 items are returned, along with a unique string called a next token. To get the next batch of items in the list, call this operation again, adding the next token to the call.
        public let nextToken: String?

        public init(memberships: [EnvironmentMember]? = nil, nextToken: String? = nil) {
            self.memberships = memberships
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case memberships
            case nextToken
        }
    }

    public struct DescribeEnvironmentStatusRequest: AWSEncodableShape {
        /// The ID of the environment to get status information about.
        public let environmentId: String

        public init(environmentId: String) {
            self.environmentId = environmentId
        }

        public func validate(name: String) throws {
            try self.validate(self.environmentId, name: "environmentId", parent: name, pattern: "^[a-zA-Z0-9]{8,32}$")
        }

        private enum CodingKeys: String, CodingKey {
            case environmentId
        }
    }

    public struct DescribeEnvironmentStatusResult: AWSDecodableShape {
        /// Any informational message about the status of the environment.
        public let message: String
        /// The status of the environment. Available values include:    connecting: The environment is connecting.    creating: The environment is being created.    deleting: The environment is being deleted.    error: The environment is in an error state.    ready: The environment is ready.    stopped: The environment is stopped.    stopping: The environment is stopping.
        public let status: EnvironmentStatus

        public init(message: String, status: EnvironmentStatus) {
            self.message = message
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case message
            case status
        }
    }

    public struct DescribeEnvironmentsRequest: AWSEncodableShape {
        /// The IDs of individual environments to get information about.
        public let environmentIds: [String]

        public init(environmentIds: [String]) {
            self.environmentIds = environmentIds
        }

        public func validate(name: String) throws {
            try self.environmentIds.forEach {
                try validate($0, name: "environmentIds[]", parent: name, pattern: "^[a-zA-Z0-9]{8,32}$")
            }
            try self.validate(self.environmentIds, name: "environmentIds", parent: name, max: 25)
            try self.validate(self.environmentIds, name: "environmentIds", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case environmentIds
        }
    }

    public struct DescribeEnvironmentsResult: AWSDecodableShape {
        /// Information about the environments that are returned.
        public let environments: [Environment]?

        public init(environments: [Environment]? = nil) {
            self.environments = environments
        }

        private enum CodingKeys: String, CodingKey {
            case environments
        }
    }

    public struct Environment: AWSDecodableShape {
        /// The Amazon Resource Name (ARN) of the environment.
        public let arn: String
        /// The connection type used for connecting to an Amazon EC2 environment. CONNECT_SSH is selected by default.
        public let connectionType: ConnectionType?
        /// The description for the environment.
        public let description: String?
        /// The ID of the environment.
        public let id: String?
        /// The state of the environment in its creation or deletion lifecycle.
        public let lifecycle: EnvironmentLifecycle?
        /// Describes the status of Amazon Web Services managed temporary credentials for the Cloud9 environment. Available values are:    ENABLED_ON_CREATE     ENABLED_BY_OWNER     DISABLED_BY_DEFAULT     DISABLED_BY_OWNER     DISABLED_BY_COLLABORATOR     PENDING_REMOVAL_BY_COLLABORATOR     PENDING_REMOVAL_BY_OWNER     FAILED_REMOVAL_BY_COLLABORATOR     ENABLED_BY_OWNER     DISABLED_BY_DEFAULT
        public let managedCredentialsStatus: ManagedCredentialsStatus?
        /// The name of the environment.
        public let name: String?
        /// The Amazon Resource Name (ARN) of the environment owner.
        public let ownerArn: String
        /// The type of environment. Valid values include the following:    ec2: An Amazon Elastic Compute Cloud (Amazon EC2) instance connects to the environment.    ssh: Your own server connects to the environment.
        public let type: EnvironmentType

        public init(arn: String, connectionType: ConnectionType? = nil, description: String? = nil, id: String? = nil, lifecycle: EnvironmentLifecycle? = nil, managedCredentialsStatus: ManagedCredentialsStatus? = nil, name: String? = nil, ownerArn: String, type: EnvironmentType) {
            self.arn = arn
            self.connectionType = connectionType
            self.description = description
            self.id = id
            self.lifecycle = lifecycle
            self.managedCredentialsStatus = managedCredentialsStatus
            self.name = name
            self.ownerArn = ownerArn
            self.type = type
        }

        private enum CodingKeys: String, CodingKey {
            case arn
            case connectionType
            case description
            case id
            case lifecycle
            case managedCredentialsStatus
            case name
            case ownerArn
            case type
        }
    }

    public struct EnvironmentLifecycle: AWSDecodableShape {
        /// If the environment failed to delete, the Amazon Resource Name (ARN) of the related Amazon Web Services resource.
        public let failureResource: String?
        /// Any informational message about the lifecycle state of the environment.
        public let reason: String?
        /// The current creation or deletion lifecycle state of the environment.    CREATING: The environment is in the process of being created.    CREATED: The environment was successfully created.    CREATE_FAILED: The environment failed to be created.    DELETING: The environment is in the process of being deleted.    DELETE_FAILED: The environment failed to delete.
        public let status: EnvironmentLifecycleStatus?

        public init(failureResource: String? = nil, reason: String? = nil, status: EnvironmentLifecycleStatus? = nil) {
            self.failureResource = failureResource
            self.reason = reason
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case failureResource
            case reason
            case status
        }
    }

    public struct EnvironmentMember: AWSDecodableShape {
        /// The ID of the environment for the environment member.
        public let environmentId: String
        /// The time, expressed in epoch time format, when the environment member last opened the environment.
        public let lastAccess: Date?
        /// The type of environment member permissions associated with this environment member. Available values include:    owner: Owns the environment.    read-only: Has read-only access to the environment.    read-write: Has read-write access to the environment.
        public let permissions: Permissions
        /// The Amazon Resource Name (ARN) of the environment member.
        public let userArn: String
        /// The user ID in Identity and Access Management (IAM) of the environment member.
        public let userId: String

        public init(environmentId: String, lastAccess: Date? = nil, permissions: Permissions, userArn: String, userId: String) {
            self.environmentId = environmentId
            self.lastAccess = lastAccess
            self.permissions = permissions
            self.userArn = userArn
            self.userId = userId
        }

        private enum CodingKeys: String, CodingKey {
            case environmentId
            case lastAccess
            case permissions
            case userArn
            case userId
        }
    }

    public struct ListEnvironmentsRequest: AWSEncodableShape {
        /// The maximum number of environments to get identifiers for.
        public let maxResults: Int?
        /// During a previous call, if there are more than 25 items in the list, only the first 25 items are returned, along with a unique string called a next token. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.
        public let nextToken: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 25)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 0)
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults
            case nextToken
        }
    }

    public struct ListEnvironmentsResult: AWSDecodableShape {
        /// The list of environment identifiers.
        public let environmentIds: [String]?
        /// If there are more than 25 items in the list, only the first 25 items are returned, along with a unique string called a next token. To get the next batch of items in the list, call this operation again, adding the next token to the call.
        public let nextToken: String?

        public init(environmentIds: [String]? = nil, nextToken: String? = nil) {
            self.environmentIds = environmentIds
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case environmentIds
            case nextToken
        }
    }

    public struct ListTagsForResourceRequest: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) of the Cloud9 development environment to get the tags for.
        public let resourceARN: String

        public init(resourceARN: String) {
            self.resourceARN = resourceARN
        }

        public func validate(name: String) throws {
            try self.validate(self.resourceARN, name: "resourceARN", parent: name, pattern: "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):cloud9:([a-z]{2}-[a-z]+-\\d{1}):[0-9]{12}:environment:[a-zA-Z0-9]{8,32}$")
        }

        private enum CodingKeys: String, CodingKey {
            case resourceARN = "ResourceARN"
        }
    }

    public struct ListTagsForResourceResponse: AWSDecodableShape {
        /// The list of tags associated with the Cloud9 development environment.
        public let tags: [Tag]?

        public init(tags: [Tag]? = nil) {
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case tags = "Tags"
        }
    }

    public struct Tag: AWSEncodableShape & AWSDecodableShape {
        /// The name part of a tag.
        public let key: String
        /// The value part of a tag.
        public let value: String

        public init(key: String, value: String) {
            self.key = key
            self.value = value
        }

        public func validate(name: String) throws {
            try self.validate(self.key, name: "key", parent: name, max: 128)
            try self.validate(self.key, name: "key", parent: name, min: 1)
            try self.validate(self.value, name: "value", parent: name, max: 256)
        }

        private enum CodingKeys: String, CodingKey {
            case key = "Key"
            case value = "Value"
        }
    }

    public struct TagResourceRequest: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) of the Cloud9 development environment to add tags to.
        public let resourceARN: String
        /// The list of tags to add to the given Cloud9 development environment.
        public let tags: [Tag]

        public init(resourceARN: String, tags: [Tag]) {
            self.resourceARN = resourceARN
            self.tags = tags
        }

        public func validate(name: String) throws {
            try self.validate(self.resourceARN, name: "resourceARN", parent: name, pattern: "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):cloud9:([a-z]{2}-[a-z]+-\\d{1}):[0-9]{12}:environment:[a-zA-Z0-9]{8,32}$")
            try self.tags.forEach {
                try $0.validate(name: "\(name).tags[]")
            }
            try self.validate(self.tags, name: "tags", parent: name, max: 200)
        }

        private enum CodingKeys: String, CodingKey {
            case resourceARN = "ResourceARN"
            case tags = "Tags"
        }
    }

    public struct TagResourceResponse: AWSDecodableShape {
        public init() {}
    }

    public struct UntagResourceRequest: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) of the Cloud9 development environment to remove tags from.
        public let resourceARN: String
        /// The tag names of the tags to remove from the given Cloud9 development environment.
        public let tagKeys: [String]

        public init(resourceARN: String, tagKeys: [String]) {
            self.resourceARN = resourceARN
            self.tagKeys = tagKeys
        }

        public func validate(name: String) throws {
            try self.validate(self.resourceARN, name: "resourceARN", parent: name, pattern: "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):cloud9:([a-z]{2}-[a-z]+-\\d{1}):[0-9]{12}:environment:[a-zA-Z0-9]{8,32}$")
            try self.tagKeys.forEach {
                try validate($0, name: "tagKeys[]", parent: name, max: 128)
                try validate($0, name: "tagKeys[]", parent: name, min: 1)
            }
            try self.validate(self.tagKeys, name: "tagKeys", parent: name, max: 200)
        }

        private enum CodingKeys: String, CodingKey {
            case resourceARN = "ResourceARN"
            case tagKeys = "TagKeys"
        }
    }

    public struct UntagResourceResponse: AWSDecodableShape {
        public init() {}
    }

    public struct UpdateEnvironmentMembershipRequest: AWSEncodableShape {
        /// The ID of the environment for the environment member whose settings you want to change.
        public let environmentId: String
        /// The replacement type of environment member permissions you want to associate with this environment member. Available values include:    read-only: Has read-only access to the environment.    read-write: Has read-write access to the environment.
        public let permissions: MemberPermissions
        /// The Amazon Resource Name (ARN) of the environment member whose settings you want to change.
        public let userArn: String

        public init(environmentId: String, permissions: MemberPermissions, userArn: String) {
            self.environmentId = environmentId
            self.permissions = permissions
            self.userArn = userArn
        }

        public func validate(name: String) throws {
            try self.validate(self.environmentId, name: "environmentId", parent: name, pattern: "^[a-zA-Z0-9]{8,32}$")
            try self.validate(self.userArn, name: "userArn", parent: name, pattern: "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):(iam|sts)::\\d+:(root|(user\\/[\\w+=/:,.@-]{1,64}|federated-user\\/[\\w+=/:,.@-]{2,32}|assumed-role\\/[\\w+=:,.@-]{1,64}\\/[\\w+=,.@-]{1,64}))$")
        }

        private enum CodingKeys: String, CodingKey {
            case environmentId
            case permissions
            case userArn
        }
    }

    public struct UpdateEnvironmentMembershipResult: AWSDecodableShape {
        /// Information about the environment member whose settings were changed.
        public let membership: EnvironmentMember?

        public init(membership: EnvironmentMember? = nil) {
            self.membership = membership
        }

        private enum CodingKeys: String, CodingKey {
            case membership
        }
    }

    public struct UpdateEnvironmentRequest: AWSEncodableShape {
        /// Any new or replacement description for the environment.
        public let description: String?
        /// The ID of the environment to change settings.
        public let environmentId: String
        /// Allows the environment owner to turn on or turn off the Amazon Web Services managed temporary credentials for an Cloud9 environment by using one of the following values:    ENABLE     DISABLE     Only the environment owner can change the status of managed temporary credentials. An AccessDeniedException is thrown if an attempt to turn on or turn off managed temporary credentials is made by an account that's not the environment owner.
        public let managedCredentialsAction: ManagedCredentialsAction?
        /// A replacement name for the environment.
        public let name: String?

        public init(description: String? = nil, environmentId: String, managedCredentialsAction: ManagedCredentialsAction? = nil, name: String? = nil) {
            self.description = description
            self.environmentId = environmentId
            self.managedCredentialsAction = managedCredentialsAction
            self.name = name
        }

        public func validate(name: String) throws {
            try self.validate(self.description, name: "description", parent: name, max: 200)
            try self.validate(self.environmentId, name: "environmentId", parent: name, pattern: "^[a-zA-Z0-9]{8,32}$")
            try self.validate(self.name, name: "name", parent: name, max: 60)
            try self.validate(self.name, name: "name", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case description
            case environmentId
            case managedCredentialsAction
            case name
        }
    }

    public struct UpdateEnvironmentResult: AWSDecodableShape {
        public init() {}
    }
}

// MARK: - Errors

/// Error enum for Cloud9
public struct Cloud9ErrorType: AWSErrorType {
    enum Code: String {
        case badRequestException = "BadRequestException"
        case concurrentAccessException = "ConcurrentAccessException"
        case conflictException = "ConflictException"
        case forbiddenException = "ForbiddenException"
        case internalServerErrorException = "InternalServerErrorException"
        case limitExceededException = "LimitExceededException"
        case notFoundException = "NotFoundException"
        case tooManyRequestsException = "TooManyRequestsException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Cloud9
    public init?(errorCode: String, context: AWSErrorContext) {
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code) {
        self.error = error
        self.context = nil
    }

    /// return error code string
    public var errorCode: String { self.error.rawValue }

    /// The target request is invalid.
    public static var badRequestException: Self { .init(.badRequestException) }
    /// A concurrent access issue occurred.
    public static var concurrentAccessException: Self { .init(.concurrentAccessException) }
    /// A conflict occurred.
    public static var conflictException: Self { .init(.conflictException) }
    /// An access permissions issue occurred.
    public static var forbiddenException: Self { .init(.forbiddenException) }
    /// An internal server error occurred.
    public static var internalServerErrorException: Self { .init(.internalServerErrorException) }
    /// A service limit was exceeded.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// The target resource cannot be found.
    public static var notFoundException: Self { .init(.notFoundException) }
    /// Too many service requests were made over the given time period.
    public static var tooManyRequestsException: Self { .init(.tooManyRequestsException) }
}

extension Cloud9ErrorType: Equatable {
    public static func == (lhs: Cloud9ErrorType, rhs: Cloud9ErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension Cloud9ErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
