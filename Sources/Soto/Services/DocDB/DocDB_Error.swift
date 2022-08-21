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

import SotoCore

/// Error enum for DocDB
public struct DocDBErrorType: AWSErrorType {
    enum Code: String {
        case authorizationNotFoundFault = "AuthorizationNotFound"
        case certificateNotFoundFault = "CertificateNotFound"
        case dbClusterAlreadyExistsFault = "DBClusterAlreadyExistsFault"
        case dbClusterNotFoundFault = "DBClusterNotFoundFault"
        case dbClusterParameterGroupNotFoundFault = "DBClusterParameterGroupNotFound"
        case dbClusterQuotaExceededFault = "DBClusterQuotaExceededFault"
        case dbClusterSnapshotAlreadyExistsFault = "DBClusterSnapshotAlreadyExistsFault"
        case dbClusterSnapshotNotFoundFault = "DBClusterSnapshotNotFoundFault"
        case dbInstanceAlreadyExistsFault = "DBInstanceAlreadyExists"
        case dbInstanceNotFoundFault = "DBInstanceNotFound"
        case dbParameterGroupAlreadyExistsFault = "DBParameterGroupAlreadyExists"
        case dbParameterGroupNotFoundFault = "DBParameterGroupNotFound"
        case dbParameterGroupQuotaExceededFault = "DBParameterGroupQuotaExceeded"
        case dbSecurityGroupNotFoundFault = "DBSecurityGroupNotFound"
        case dbSnapshotAlreadyExistsFault = "DBSnapshotAlreadyExists"
        case dbSnapshotNotFoundFault = "DBSnapshotNotFound"
        case dbSubnetGroupAlreadyExistsFault = "DBSubnetGroupAlreadyExists"
        case dbSubnetGroupDoesNotCoverEnoughAZs = "DBSubnetGroupDoesNotCoverEnoughAZs"
        case dbSubnetGroupNotFoundFault = "DBSubnetGroupNotFoundFault"
        case dbSubnetGroupQuotaExceededFault = "DBSubnetGroupQuotaExceeded"
        case dbSubnetQuotaExceededFault = "DBSubnetQuotaExceededFault"
        case dbUpgradeDependencyFailureFault = "DBUpgradeDependencyFailure"
        case eventSubscriptionQuotaExceededFault = "EventSubscriptionQuotaExceeded"
        case globalClusterAlreadyExistsFault = "GlobalClusterAlreadyExistsFault"
        case globalClusterNotFoundFault = "GlobalClusterNotFoundFault"
        case globalClusterQuotaExceededFault = "GlobalClusterQuotaExceededFault"
        case instanceQuotaExceededFault = "InstanceQuotaExceeded"
        case insufficientDBClusterCapacityFault = "InsufficientDBClusterCapacityFault"
        case insufficientDBInstanceCapacityFault = "InsufficientDBInstanceCapacity"
        case insufficientStorageClusterCapacityFault = "InsufficientStorageClusterCapacity"
        case invalidDBClusterSnapshotStateFault = "InvalidDBClusterSnapshotStateFault"
        case invalidDBClusterStateFault = "InvalidDBClusterStateFault"
        case invalidDBInstanceStateFault = "InvalidDBInstanceState"
        case invalidDBParameterGroupStateFault = "InvalidDBParameterGroupState"
        case invalidDBSecurityGroupStateFault = "InvalidDBSecurityGroupState"
        case invalidDBSnapshotStateFault = "InvalidDBSnapshotState"
        case invalidDBSubnetGroupStateFault = "InvalidDBSubnetGroupStateFault"
        case invalidDBSubnetStateFault = "InvalidDBSubnetStateFault"
        case invalidEventSubscriptionStateFault = "InvalidEventSubscriptionState"
        case invalidGlobalClusterStateFault = "InvalidGlobalClusterStateFault"
        case invalidRestoreFault = "InvalidRestoreFault"
        case invalidSubnet = "InvalidSubnet"
        case invalidVPCNetworkStateFault = "InvalidVPCNetworkStateFault"
        case kmsKeyNotAccessibleFault = "KMSKeyNotAccessibleFault"
        case resourceNotFoundFault = "ResourceNotFoundFault"
        case sharedSnapshotQuotaExceededFault = "SharedSnapshotQuotaExceeded"
        case snapshotQuotaExceededFault = "SnapshotQuotaExceeded"
        case snsInvalidTopicFault = "SNSInvalidTopic"
        case snsNoAuthorizationFault = "SNSNoAuthorization"
        case snsTopicArnNotFoundFault = "SNSTopicArnNotFound"
        case sourceNotFoundFault = "SourceNotFound"
        case storageQuotaExceededFault = "StorageQuotaExceeded"
        case storageTypeNotSupportedFault = "StorageTypeNotSupported"
        case subnetAlreadyInUse = "SubnetAlreadyInUse"
        case subscriptionAlreadyExistFault = "SubscriptionAlreadyExist"
        case subscriptionCategoryNotFoundFault = "SubscriptionCategoryNotFound"
        case subscriptionNotFoundFault = "SubscriptionNotFound"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize DocDB
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

    /// The specified CIDR IP or Amazon EC2 security group isn't authorized for the specified security group. Amazon DocumentDB also might not be authorized to perform necessary actions on your behalf using IAM.
    public static var authorizationNotFoundFault: Self { .init(.authorizationNotFoundFault) }
    ///  CertificateIdentifier doesn't refer to an existing certificate.
    public static var certificateNotFoundFault: Self { .init(.certificateNotFoundFault) }
    /// You already have a cluster with the given identifier.
    public static var dbClusterAlreadyExistsFault: Self { .init(.dbClusterAlreadyExistsFault) }
    ///  DBClusterIdentifier doesn't refer to an existing cluster.
    public static var dbClusterNotFoundFault: Self { .init(.dbClusterNotFoundFault) }
    ///  DBClusterParameterGroupName doesn't refer to an existing cluster parameter group.
    public static var dbClusterParameterGroupNotFoundFault: Self { .init(.dbClusterParameterGroupNotFoundFault) }
    /// The cluster can't be created because you have reached the maximum allowed quota of clusters.
    public static var dbClusterQuotaExceededFault: Self { .init(.dbClusterQuotaExceededFault) }
    /// You already have a cluster snapshot with the given identifier.
    public static var dbClusterSnapshotAlreadyExistsFault: Self { .init(.dbClusterSnapshotAlreadyExistsFault) }
    ///  DBClusterSnapshotIdentifier doesn't refer to an existing cluster snapshot.
    public static var dbClusterSnapshotNotFoundFault: Self { .init(.dbClusterSnapshotNotFoundFault) }
    /// You already have a instance with the given identifier.
    public static var dbInstanceAlreadyExistsFault: Self { .init(.dbInstanceAlreadyExistsFault) }
    ///  DBInstanceIdentifier doesn't refer to an existing instance.
    public static var dbInstanceNotFoundFault: Self { .init(.dbInstanceNotFoundFault) }
    /// A parameter group with the same name already exists.
    public static var dbParameterGroupAlreadyExistsFault: Self { .init(.dbParameterGroupAlreadyExistsFault) }
    ///  DBParameterGroupName doesn't refer to an existing parameter group.
    public static var dbParameterGroupNotFoundFault: Self { .init(.dbParameterGroupNotFoundFault) }
    /// This request would cause you to exceed the allowed number of parameter groups.
    public static var dbParameterGroupQuotaExceededFault: Self { .init(.dbParameterGroupQuotaExceededFault) }
    ///  DBSecurityGroupName doesn't refer to an existing security group.
    public static var dbSecurityGroupNotFoundFault: Self { .init(.dbSecurityGroupNotFoundFault) }
    ///  DBSnapshotIdentifier is already being used by an existing snapshot.
    public static var dbSnapshotAlreadyExistsFault: Self { .init(.dbSnapshotAlreadyExistsFault) }
    ///  DBSnapshotIdentifier doesn't refer to an existing snapshot.
    public static var dbSnapshotNotFoundFault: Self { .init(.dbSnapshotNotFoundFault) }
    ///  DBSubnetGroupName is already being used by an existing subnet group.
    public static var dbSubnetGroupAlreadyExistsFault: Self { .init(.dbSubnetGroupAlreadyExistsFault) }
    /// Subnets in the subnet group should cover at least two Availability Zones unless there is only one Availability Zone.
    public static var dbSubnetGroupDoesNotCoverEnoughAZs: Self { .init(.dbSubnetGroupDoesNotCoverEnoughAZs) }
    ///  DBSubnetGroupName doesn't refer to an existing subnet group.
    public static var dbSubnetGroupNotFoundFault: Self { .init(.dbSubnetGroupNotFoundFault) }
    /// The request would cause you to exceed the allowed number of subnet groups.
    public static var dbSubnetGroupQuotaExceededFault: Self { .init(.dbSubnetGroupQuotaExceededFault) }
    /// The request would cause you to exceed the allowed number of subnets in a subnet group.
    public static var dbSubnetQuotaExceededFault: Self { .init(.dbSubnetQuotaExceededFault) }
    /// The upgrade failed because a resource that the depends on can't be modified.
    public static var dbUpgradeDependencyFailureFault: Self { .init(.dbUpgradeDependencyFailureFault) }
    /// You have reached the maximum number of event subscriptions.
    public static var eventSubscriptionQuotaExceededFault: Self { .init(.eventSubscriptionQuotaExceededFault) }
    /// The GlobalClusterIdentifier already exists. Choose a new global cluster identifier (unique name) to create a new global cluster.
    public static var globalClusterAlreadyExistsFault: Self { .init(.globalClusterAlreadyExistsFault) }
    /// The GlobalClusterIdentifier doesn't refer to an existing global cluster.
    public static var globalClusterNotFoundFault: Self { .init(.globalClusterNotFoundFault) }
    /// The number of global  clusters for this account is already at the maximum allowed.
    public static var globalClusterQuotaExceededFault: Self { .init(.globalClusterQuotaExceededFault) }
    /// The request would cause you to exceed the allowed number of instances.
    public static var instanceQuotaExceededFault: Self { .init(.instanceQuotaExceededFault) }
    /// The cluster doesn't have enough capacity for the current operation.
    public static var insufficientDBClusterCapacityFault: Self { .init(.insufficientDBClusterCapacityFault) }
    /// The specified instance class isn't available in the specified Availability Zone.
    public static var insufficientDBInstanceCapacityFault: Self { .init(.insufficientDBInstanceCapacityFault) }
    /// There is not enough storage available for the current action. You might be able to resolve this error by updating your subnet group to use different Availability Zones that have more storage available.
    public static var insufficientStorageClusterCapacityFault: Self { .init(.insufficientStorageClusterCapacityFault) }
    /// The provided value isn't a valid cluster snapshot state.
    public static var invalidDBClusterSnapshotStateFault: Self { .init(.invalidDBClusterSnapshotStateFault) }
    /// The cluster isn't in a valid state.
    public static var invalidDBClusterStateFault: Self { .init(.invalidDBClusterStateFault) }
    ///  The specified instance isn't in the available state.
    public static var invalidDBInstanceStateFault: Self { .init(.invalidDBInstanceStateFault) }
    /// The parameter group is in use, or it is in a state that is not valid. If you are trying to delete the parameter group, you can't delete it when the parameter group is in this state.
    public static var invalidDBParameterGroupStateFault: Self { .init(.invalidDBParameterGroupStateFault) }
    /// The state of the security group doesn't allow deletion.
    public static var invalidDBSecurityGroupStateFault: Self { .init(.invalidDBSecurityGroupStateFault) }
    /// The state of the snapshot doesn't allow deletion.
    public static var invalidDBSnapshotStateFault: Self { .init(.invalidDBSnapshotStateFault) }
    /// The subnet group can't be deleted because it's in use.
    public static var invalidDBSubnetGroupStateFault: Self { .init(.invalidDBSubnetGroupStateFault) }
    ///  The subnet isn't in the available state.
    public static var invalidDBSubnetStateFault: Self { .init(.invalidDBSubnetStateFault) }
    /// Someone else might be modifying a subscription. Wait a few seconds, and try again.
    public static var invalidEventSubscriptionStateFault: Self { .init(.invalidEventSubscriptionStateFault) }
    /// The requested operation can't be performed while the cluster is in this state.
    public static var invalidGlobalClusterStateFault: Self { .init(.invalidGlobalClusterStateFault) }
    /// You cannot restore from a virtual private cloud (VPC) backup to a non-VPC DB instance.
    public static var invalidRestoreFault: Self { .init(.invalidRestoreFault) }
    /// The requested subnet is not valid, or multiple subnets were requested that are not all in a common virtual private cloud (VPC).
    public static var invalidSubnet: Self { .init(.invalidSubnet) }
    /// The subnet group doesn't cover all Availability Zones after it is created because of changes that were made.
    public static var invalidVPCNetworkStateFault: Self { .init(.invalidVPCNetworkStateFault) }
    /// An error occurred when accessing an KMS key.
    public static var kmsKeyNotAccessibleFault: Self { .init(.kmsKeyNotAccessibleFault) }
    /// The specified resource ID was not found.
    public static var resourceNotFoundFault: Self { .init(.resourceNotFoundFault) }
    /// You have exceeded the maximum number of accounts that you can share a manual DB snapshot with.
    public static var sharedSnapshotQuotaExceededFault: Self { .init(.sharedSnapshotQuotaExceededFault) }
    /// The request would cause you to exceed the allowed number of snapshots.
    public static var snapshotQuotaExceededFault: Self { .init(.snapshotQuotaExceededFault) }
    /// Amazon SNS has responded that there is a problem with the specified topic.
    public static var snsInvalidTopicFault: Self { .init(.snsInvalidTopicFault) }
    /// You do not have permission to publish to the SNS topic Amazon Resource Name (ARN).
    public static var snsNoAuthorizationFault: Self { .init(.snsNoAuthorizationFault) }
    /// The SNS topic Amazon Resource Name (ARN) does not exist.
    public static var snsTopicArnNotFoundFault: Self { .init(.snsTopicArnNotFoundFault) }
    /// The requested source could not be found.
    public static var sourceNotFoundFault: Self { .init(.sourceNotFoundFault) }
    /// The request would cause you to exceed the allowed amount of storage available across all instances.
    public static var storageQuotaExceededFault: Self { .init(.storageQuotaExceededFault) }
    /// Storage of the specified StorageType can't be associated with the DB instance.
    public static var storageTypeNotSupportedFault: Self { .init(.storageTypeNotSupportedFault) }
    /// The subnet is already in use in the Availability Zone.
    public static var subnetAlreadyInUse: Self { .init(.subnetAlreadyInUse) }
    /// The provided subscription name already exists.
    public static var subscriptionAlreadyExistFault: Self { .init(.subscriptionAlreadyExistFault) }
    /// The provided category does not exist.
    public static var subscriptionCategoryNotFoundFault: Self { .init(.subscriptionCategoryNotFoundFault) }
    /// The subscription name does not exist.
    public static var subscriptionNotFoundFault: Self { .init(.subscriptionNotFoundFault) }
}

extension DocDBErrorType: Equatable {
    public static func == (lhs: DocDBErrorType, rhs: DocDBErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension DocDBErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
