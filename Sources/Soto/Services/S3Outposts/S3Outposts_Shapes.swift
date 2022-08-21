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

extension S3Outposts {
    // MARK: Enums

    public enum EndpointAccessType: String, CustomStringConvertible, Codable, _SotoSendable {
        case customerOwnedIp = "CustomerOwnedIp"
        case `private` = "Private"
        public var description: String { return self.rawValue }
    }

    public enum EndpointStatus: String, CustomStringConvertible, Codable, _SotoSendable {
        case available = "Available"
        case deleting = "Deleting"
        case pending = "Pending"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct CreateEndpointRequest: AWSEncodableShape {
        /// The type of access for the network connectivity for the Amazon S3 on Outposts endpoint. To use the Amazon Web Services VPC, choose Private. To use the endpoint with an on-premises network, choose CustomerOwnedIp.  If you choose CustomerOwnedIp, you must also provide the customer-owned IP address pool (CoIP pool).   Private is the default access type value.
        public let accessType: EndpointAccessType?
        /// The ID of the customer-owned IPv4 address pool (CoIP pool) for the endpoint. IP addresses are allocated from this pool for the endpoint.
        public let customerOwnedIpv4Pool: String?
        /// The ID of the Outposts.
        public let outpostId: String
        /// The ID of the security group to use with the endpoint.
        public let securityGroupId: String
        /// The ID of the subnet in the selected VPC. The endpoint subnet must belong to the Outpost that has Amazon S3 on Outposts provisioned.
        public let subnetId: String

        public init(accessType: EndpointAccessType? = nil, customerOwnedIpv4Pool: String? = nil, outpostId: String, securityGroupId: String, subnetId: String) {
            self.accessType = accessType
            self.customerOwnedIpv4Pool = customerOwnedIpv4Pool
            self.outpostId = outpostId
            self.securityGroupId = securityGroupId
            self.subnetId = subnetId
        }

        public func validate(name: String) throws {
            try self.validate(self.customerOwnedIpv4Pool, name: "customerOwnedIpv4Pool", parent: name, pattern: "^ipv4pool-coip-([0-9a-f]{17})$")
            try self.validate(self.outpostId, name: "outpostId", parent: name, pattern: "^(op-[a-f0-9]{17}|\\d{12}|ec2)$")
            try self.validate(self.securityGroupId, name: "securityGroupId", parent: name, pattern: "^sg-([0-9a-f]{8}|[0-9a-f]{17})$")
            try self.validate(self.subnetId, name: "subnetId", parent: name, pattern: "^subnet-([0-9a-f]{8}|[0-9a-f]{17})$")
        }

        private enum CodingKeys: String, CodingKey {
            case accessType = "AccessType"
            case customerOwnedIpv4Pool = "CustomerOwnedIpv4Pool"
            case outpostId = "OutpostId"
            case securityGroupId = "SecurityGroupId"
            case subnetId = "SubnetId"
        }
    }

    public struct CreateEndpointResult: AWSDecodableShape {
        /// The Amazon Resource Name (ARN) of the endpoint.
        public let endpointArn: String?

        public init(endpointArn: String? = nil) {
            self.endpointArn = endpointArn
        }

        private enum CodingKeys: String, CodingKey {
            case endpointArn = "EndpointArn"
        }
    }

    public struct DeleteEndpointRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "endpointId", location: .querystring("endpointId")),
            AWSMemberEncoding(label: "outpostId", location: .querystring("outpostId"))
        ]

        /// The ID of the endpoint.
        public let endpointId: String
        /// The ID of the Outposts.
        public let outpostId: String

        public init(endpointId: String, outpostId: String) {
            self.endpointId = endpointId
            self.outpostId = outpostId
        }

        public func validate(name: String) throws {
            try self.validate(self.endpointId, name: "endpointId", parent: name, pattern: "^[a-zA-Z0-9]{19}$")
            try self.validate(self.outpostId, name: "outpostId", parent: name, pattern: "^(op-[a-f0-9]{17}|\\d{12}|ec2)$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct Endpoint: AWSDecodableShape {
        /// The type of connectivity used to access the Amazon S3 on Outposts endpoint.
        public let accessType: EndpointAccessType?
        /// The VPC CIDR committed by this endpoint.
        public let cidrBlock: String?
        /// The time the endpoint was created.
        public let creationTime: Date?
        /// The ID of the customer-owned IPv4 address pool used for the endpoint.
        public let customerOwnedIpv4Pool: String?
        /// The Amazon Resource Name (ARN) of the endpoint.
        public let endpointArn: String?
        /// The network interface of the endpoint.
        public let networkInterfaces: [NetworkInterface]?
        /// The ID of the Outposts.
        public let outpostsId: String?
        /// The ID of the security group used for the endpoint.
        public let securityGroupId: String?
        /// The status of the endpoint.
        public let status: EndpointStatus?
        /// The ID of the subnet used for the endpoint.
        public let subnetId: String?
        /// The ID of the VPC used for the endpoint.
        public let vpcId: String?

        public init(accessType: EndpointAccessType? = nil, cidrBlock: String? = nil, creationTime: Date? = nil, customerOwnedIpv4Pool: String? = nil, endpointArn: String? = nil, networkInterfaces: [NetworkInterface]? = nil, outpostsId: String? = nil, securityGroupId: String? = nil, status: EndpointStatus? = nil, subnetId: String? = nil, vpcId: String? = nil) {
            self.accessType = accessType
            self.cidrBlock = cidrBlock
            self.creationTime = creationTime
            self.customerOwnedIpv4Pool = customerOwnedIpv4Pool
            self.endpointArn = endpointArn
            self.networkInterfaces = networkInterfaces
            self.outpostsId = outpostsId
            self.securityGroupId = securityGroupId
            self.status = status
            self.subnetId = subnetId
            self.vpcId = vpcId
        }

        private enum CodingKeys: String, CodingKey {
            case accessType = "AccessType"
            case cidrBlock = "CidrBlock"
            case creationTime = "CreationTime"
            case customerOwnedIpv4Pool = "CustomerOwnedIpv4Pool"
            case endpointArn = "EndpointArn"
            case networkInterfaces = "NetworkInterfaces"
            case outpostsId = "OutpostsId"
            case securityGroupId = "SecurityGroupId"
            case status = "Status"
            case subnetId = "SubnetId"
            case vpcId = "VpcId"
        }
    }

    public struct ListEndpointsRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "maxResults", location: .querystring("maxResults")),
            AWSMemberEncoding(label: "nextToken", location: .querystring("nextToken"))
        ]

        /// The maximum number of endpoints that will be returned in the response.
        public let maxResults: Int?
        /// If a previous response from this operation included a NextToken value,  provide that value here to retrieve the next page of results.
        public let nextToken: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 100)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 0)
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 1024)
            try self.validate(self.nextToken, name: "nextToken", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, pattern: "^[A-Za-z0-9\\+\\:\\/\\=\\?\\#-_]+$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListEndpointsResult: AWSDecodableShape {
        /// The list of endpoints associated with the specified Outpost.
        public let endpoints: [Endpoint]?
        /// If the number of endpoints associated with the specified Outpost exceeds MaxResults,  you can include this value in subsequent calls to this operation to retrieve more results.
        public let nextToken: String?

        public init(endpoints: [Endpoint]? = nil, nextToken: String? = nil) {
            self.endpoints = endpoints
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case endpoints = "Endpoints"
            case nextToken = "NextToken"
        }
    }

    public struct ListSharedEndpointsRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "maxResults", location: .querystring("maxResults")),
            AWSMemberEncoding(label: "nextToken", location: .querystring("nextToken")),
            AWSMemberEncoding(label: "outpostId", location: .querystring("outpostId"))
        ]

        /// The maximum number of endpoints that will be returned in the response.
        public let maxResults: Int?
        /// If a previous response from this operation included a NextToken value, you can provide that value here to retrieve the next page of results.
        public let nextToken: String?
        /// The ID of the Amazon Web Services Outpost.
        public let outpostId: String

        public init(maxResults: Int? = nil, nextToken: String? = nil, outpostId: String) {
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.outpostId = outpostId
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 100)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 0)
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 1024)
            try self.validate(self.nextToken, name: "nextToken", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, pattern: "^[A-Za-z0-9\\+\\:\\/\\=\\?\\#-_]+$")
            try self.validate(self.outpostId, name: "outpostId", parent: name, pattern: "^(op-[a-f0-9]{17}|\\d{12}|ec2)$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListSharedEndpointsResult: AWSDecodableShape {
        /// The list of endpoints associated with the specified Outpost that have been shared by Amazon Web Services Resource Access Manager (RAM).
        public let endpoints: [Endpoint]?
        /// If the number of endpoints associated with the specified Outpost exceeds MaxResults,  you can include this value in subsequent calls to this operation to retrieve more results.
        public let nextToken: String?

        public init(endpoints: [Endpoint]? = nil, nextToken: String? = nil) {
            self.endpoints = endpoints
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case endpoints = "Endpoints"
            case nextToken = "NextToken"
        }
    }

    public struct NetworkInterface: AWSDecodableShape {
        /// The ID for the network interface.
        public let networkInterfaceId: String?

        public init(networkInterfaceId: String? = nil) {
            self.networkInterfaceId = networkInterfaceId
        }

        private enum CodingKeys: String, CodingKey {
            case networkInterfaceId = "NetworkInterfaceId"
        }
    }
}
