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

// MARK: Paginators

extension KMS {
    ///  Gets information about custom key stores in the account and Region. This operation is part of the custom key store feature feature in KMS, which
    ///  combines the convenience and extensive integration of KMS with the isolation and control of a
    ///  single-tenant key store. By default, this operation returns information about all custom key stores in the account and Region. To get only information about a particular custom key store, use either the CustomKeyStoreName or CustomKeyStoreId parameter (but not both). To determine whether the custom key store is connected to its CloudHSM cluster, use the ConnectionState element in the response. If an attempt to connect the custom key store failed, the ConnectionState value is FAILED and the ConnectionErrorCode element in the response indicates the cause of the failure. For help interpreting the ConnectionErrorCode, see CustomKeyStoresListEntry. Custom key stores have a DISCONNECTED connection state if the key store has never been connected or you use the DisconnectCustomKeyStore operation to disconnect it. If your custom key store state is CONNECTED but you are having trouble using it, make sure that its associated CloudHSM cluster is active and contains the minimum number of HSMs required for the operation, if any. For help repairing your custom key store, see the Troubleshooting Custom Key Stores topic in the Key Management Service Developer Guide.  Cross-account use: No. You cannot perform this operation on a custom key store in a different Amazon Web Services account.  Required permissions: kms:DescribeCustomKeyStores (IAM policy)  Related operations:     ConnectCustomKeyStore     CreateCustomKeyStore     DeleteCustomKeyStore     DisconnectCustomKeyStore     UpdateCustomKeyStore
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
    public func describeCustomKeyStoresPaginator<Result>(
        _ input: DescribeCustomKeyStoresRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeCustomKeyStoresResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeCustomKeyStores,
            inputKey: \DescribeCustomKeyStoresRequest.marker,
            outputKey: \DescribeCustomKeyStoresResponse.nextMarker,
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
    public func describeCustomKeyStoresPaginator(
        _ input: DescribeCustomKeyStoresRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeCustomKeyStoresResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeCustomKeyStores,
            inputKey: \DescribeCustomKeyStoresRequest.marker,
            outputKey: \DescribeCustomKeyStoresResponse.nextMarker,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets a list of aliases in the caller's Amazon Web Services account and region. For more information about aliases, see CreateAlias. By default, the ListAliases operation returns all aliases in the account and region. To get only the aliases associated with a particular KMS key, use the KeyId parameter. The ListAliases response can include aliases that you created and associated with your customer managed keys, and aliases that Amazon Web Services created and associated with Amazon Web Services managed keys in your account. You can recognize Amazon Web Services aliases because their names have the format aws/, such as aws/dynamodb. The response might also include aliases that have no TargetKeyId field. These are predefined aliases that Amazon Web Services has created but has not yet associated with a KMS key. Aliases that Amazon Web Services creates in your account, including predefined aliases, do not count against your KMS aliases quota.  Cross-account use: No. ListAliases does not return aliases in other Amazon Web Services accounts.
    ///    Required permissions: kms:ListAliases (IAM policy) For details, see Controlling access to aliases in the Key Management Service Developer Guide.  Related operations:     CreateAlias     DeleteAlias     UpdateAlias
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
    public func listAliasesPaginator<Result>(
        _ input: ListAliasesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListAliasesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listAliases,
            inputKey: \ListAliasesRequest.marker,
            outputKey: \ListAliasesResponse.nextMarker,
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
    public func listAliasesPaginator(
        _ input: ListAliasesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListAliasesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAliases,
            inputKey: \ListAliasesRequest.marker,
            outputKey: \ListAliasesResponse.nextMarker,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets a list of all grants for the specified KMS key.  You must specify the KMS key in all requests. You can filter the grant list by grant ID or grantee principal. For detailed information about grants, including grant terminology, see Grants in KMS in the  Key Management Service Developer Guide . For examples of working with grants in several programming languages, see Programming grants.   The GranteePrincipal field in the ListGrants response usually contains the user or role designated as the grantee principal in the grant. However, when the grantee principal in the grant is an Amazon Web Services service, the GranteePrincipal field contains the service principal, which might represent several different grantee principals.   Cross-account use: Yes. To perform this operation on a KMS key in a different Amazon Web Services account, specify the key ARN in the value of the KeyId parameter.
    ///    Required permissions: kms:ListGrants (key policy)  Related operations:     CreateGrant     ListRetirableGrants     RetireGrant     RevokeGrant
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
    public func listGrantsPaginator<Result>(
        _ input: ListGrantsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListGrantsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listGrants,
            inputKey: \ListGrantsRequest.marker,
            outputKey: \ListGrantsResponse.nextMarker,
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
    public func listGrantsPaginator(
        _ input: ListGrantsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListGrantsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listGrants,
            inputKey: \ListGrantsRequest.marker,
            outputKey: \ListGrantsResponse.nextMarker,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets the names of the key policies that are attached to a KMS key. This operation is designed to get policy names that you can use in a GetKeyPolicy operation. However, the only valid policy name is default.   Cross-account use: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account.
    ///    Required permissions: kms:ListKeyPolicies (key policy)  Related operations:     GetKeyPolicy     PutKeyPolicy
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
    public func listKeyPoliciesPaginator<Result>(
        _ input: ListKeyPoliciesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListKeyPoliciesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listKeyPolicies,
            inputKey: \ListKeyPoliciesRequest.marker,
            outputKey: \ListKeyPoliciesResponse.nextMarker,
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
    public func listKeyPoliciesPaginator(
        _ input: ListKeyPoliciesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListKeyPoliciesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listKeyPolicies,
            inputKey: \ListKeyPoliciesRequest.marker,
            outputKey: \ListKeyPoliciesResponse.nextMarker,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Gets a list of all KMS keys in the caller's Amazon Web Services account and Region.  Cross-account use: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account.
    ///    Required permissions: kms:ListKeys (IAM policy)  Related operations:     CreateKey     DescribeKey     ListAliases     ListResourceTags
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
    public func listKeysPaginator<Result>(
        _ input: ListKeysRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListKeysResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listKeys,
            inputKey: \ListKeysRequest.marker,
            outputKey: \ListKeysResponse.nextMarker,
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
    public func listKeysPaginator(
        _ input: ListKeysRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListKeysResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listKeys,
            inputKey: \ListKeysRequest.marker,
            outputKey: \ListKeysResponse.nextMarker,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns all tags on the specified KMS key. For general information about tags, including the format and syntax, see Tagging Amazon Web Services resources in the Amazon Web Services General Reference. For information about using tags in KMS, see Tagging keys.  Cross-account use: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account.
    ///    Required permissions: kms:ListResourceTags (key policy)  Related operations:     CreateKey     ReplicateKey     TagResource     UntagResource
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
    public func listResourceTagsPaginator<Result>(
        _ input: ListResourceTagsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListResourceTagsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listResourceTags,
            inputKey: \ListResourceTagsRequest.marker,
            outputKey: \ListResourceTagsResponse.nextMarker,
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
    public func listResourceTagsPaginator(
        _ input: ListResourceTagsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListResourceTagsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listResourceTags,
            inputKey: \ListResourceTagsRequest.marker,
            outputKey: \ListResourceTagsResponse.nextMarker,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns information about all grants in the Amazon Web Services account and Region that have the specified retiring principal.  You can specify any principal in your Amazon Web Services account. The grants that are returned include grants for KMS keys in your Amazon Web Services account and other Amazon Web Services accounts. You might use this operation to determine which grants you may retire. To retire a grant, use the RetireGrant operation. For detailed information about grants, including grant terminology, see Grants in KMS in the  Key Management Service Developer Guide . For examples of working with grants in several programming languages, see Programming grants.   Cross-account use: You must specify a principal in your Amazon Web Services account. However, this operation can return grants in any Amazon Web Services account. You do not need kms:ListRetirableGrants permission (or any other additional permission) in any Amazon Web Services account other than your own.
    ///    Required permissions: kms:ListRetirableGrants (IAM policy) in your Amazon Web Services account.  Related operations:     CreateGrant     ListGrants     RetireGrant     RevokeGrant
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
    public func listRetirableGrantsPaginator<Result>(
        _ input: ListRetirableGrantsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListGrantsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listRetirableGrants,
            inputKey: \ListRetirableGrantsRequest.marker,
            outputKey: \ListGrantsResponse.nextMarker,
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
    public func listRetirableGrantsPaginator(
        _ input: ListRetirableGrantsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListGrantsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listRetirableGrants,
            inputKey: \ListRetirableGrantsRequest.marker,
            outputKey: \ListGrantsResponse.nextMarker,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension KMS.DescribeCustomKeyStoresRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> KMS.DescribeCustomKeyStoresRequest {
        return .init(
            customKeyStoreId: self.customKeyStoreId,
            customKeyStoreName: self.customKeyStoreName,
            limit: self.limit,
            marker: token
        )
    }
}

extension KMS.ListAliasesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> KMS.ListAliasesRequest {
        return .init(
            keyId: self.keyId,
            limit: self.limit,
            marker: token
        )
    }
}

extension KMS.ListGrantsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> KMS.ListGrantsRequest {
        return .init(
            granteePrincipal: self.granteePrincipal,
            grantId: self.grantId,
            keyId: self.keyId,
            limit: self.limit,
            marker: token
        )
    }
}

extension KMS.ListKeyPoliciesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> KMS.ListKeyPoliciesRequest {
        return .init(
            keyId: self.keyId,
            limit: self.limit,
            marker: token
        )
    }
}

extension KMS.ListKeysRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> KMS.ListKeysRequest {
        return .init(
            limit: self.limit,
            marker: token
        )
    }
}

extension KMS.ListResourceTagsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> KMS.ListResourceTagsRequest {
        return .init(
            keyId: self.keyId,
            limit: self.limit,
            marker: token
        )
    }
}

extension KMS.ListRetirableGrantsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> KMS.ListRetirableGrantsRequest {
        return .init(
            limit: self.limit,
            marker: token,
            retiringPrincipal: self.retiringPrincipal
        )
    }
}
