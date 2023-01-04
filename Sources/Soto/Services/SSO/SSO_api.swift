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

/// Service object for interacting with AWS SSO service.
///
/// AWS IAM Identity Center (successor to AWS Single Sign-On) Portal is a web service that makes it easy for you to assign user access to IAM Identity Center resources such as the AWS access portal. Users can get AWS account applications and roles assigned to them and get federated into the application.
///   Although AWS Single Sign-On was renamed, the sso and identitystore API namespaces will continue to retain their original name for backward compatibility purposes. For more information, see IAM Identity Center rename.
///  This reference guide describes the IAM Identity Center Portal operations that you can call programatically and includes detailed information on data types and errors.
///   AWS provides SDKs that consist of libraries and sample code for various programming languages and platforms, such as Java, Ruby, .Net, iOS, or Android. The SDKs provide a convenient way to create programmatic access to IAM Identity Center and other AWS services. For more information about the AWS SDKs, including how to download and install them, see Tools for Amazon Web Services.
public struct SSO: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the SSO client
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
            service: "portal.sso",
            signingName: "awsssoportal",
            serviceProtocol: .restjson,
            apiVersion: "2019-06-10",
            endpoint: endpoint,
            serviceEndpoints: [
                "af-south-1": "portal.sso.af-south-1.amazonaws.com",
                "ap-east-1": "portal.sso.ap-east-1.amazonaws.com",
                "ap-northeast-1": "portal.sso.ap-northeast-1.amazonaws.com",
                "ap-northeast-2": "portal.sso.ap-northeast-2.amazonaws.com",
                "ap-northeast-3": "portal.sso.ap-northeast-3.amazonaws.com",
                "ap-south-1": "portal.sso.ap-south-1.amazonaws.com",
                "ap-southeast-1": "portal.sso.ap-southeast-1.amazonaws.com",
                "ap-southeast-2": "portal.sso.ap-southeast-2.amazonaws.com",
                "ap-southeast-3": "portal.sso.ap-southeast-3.amazonaws.com",
                "ca-central-1": "portal.sso.ca-central-1.amazonaws.com",
                "eu-central-1": "portal.sso.eu-central-1.amazonaws.com",
                "eu-north-1": "portal.sso.eu-north-1.amazonaws.com",
                "eu-south-1": "portal.sso.eu-south-1.amazonaws.com",
                "eu-west-1": "portal.sso.eu-west-1.amazonaws.com",
                "eu-west-2": "portal.sso.eu-west-2.amazonaws.com",
                "eu-west-3": "portal.sso.eu-west-3.amazonaws.com",
                "me-south-1": "portal.sso.me-south-1.amazonaws.com",
                "sa-east-1": "portal.sso.sa-east-1.amazonaws.com",
                "us-east-1": "portal.sso.us-east-1.amazonaws.com",
                "us-east-2": "portal.sso.us-east-2.amazonaws.com",
                "us-gov-east-1": "portal.sso.us-gov-east-1.amazonaws.com",
                "us-gov-west-1": "portal.sso.us-gov-west-1.amazonaws.com",
                "us-west-1": "portal.sso.us-west-1.amazonaws.com",
                "us-west-2": "portal.sso.us-west-2.amazonaws.com"
            ],
            errorType: SSOErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Returns the STS short-term credentials for a given role name that is assigned to the user.
    public func getRoleCredentials(_ input: GetRoleCredentialsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRoleCredentialsResponse> {
        return self.client.execute(operation: "GetRoleCredentials", path: "/federation/credentials", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all roles that are assigned to the user for a given AWS account.
    public func listAccountRoles(_ input: ListAccountRolesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAccountRolesResponse> {
        return self.client.execute(operation: "ListAccountRoles", path: "/assignment/roles", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all AWS accounts assigned to the user. These AWS accounts are assigned by the administrator of the account. For more information, see Assign User Access in the IAM Identity Center User Guide. This operation returns a paginated response.
    public func listAccounts(_ input: ListAccountsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAccountsResponse> {
        return self.client.execute(operation: "ListAccounts", path: "/assignment/accounts", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the locally stored SSO tokens from the client-side cache and sends an API call to the IAM Identity Center service to invalidate the corresponding server-side IAM Identity Center sign in session.
    ///   If a user uses IAM Identity Center to access the AWS CLI, the user’s IAM Identity Center sign in session is used to obtain an IAM session, as specified in the corresponding IAM Identity Center permission set. More specifically, IAM Identity Center assumes an IAM role in the target account on behalf of the user, and the corresponding temporary AWS credentials are returned to the client.
    ///  After user logout, any existing IAM role sessions that were created by using IAM Identity Center permission sets continue based on the duration configured in the permission set. For more information, see User authentications in the IAM Identity Center User Guide.
    @discardableResult public func logout(_ input: LogoutRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "Logout", path: "/logout", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension SSO {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: SSO, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

extension SSO {
    ///  Lists all roles that are assigned to the user for a given AWS account.
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
    public func listAccountRolesPaginator<Result>(
        _ input: ListAccountRolesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListAccountRolesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listAccountRoles,
            inputKey: \ListAccountRolesRequest.nextToken,
            outputKey: \ListAccountRolesResponse.nextToken,
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
    public func listAccountRolesPaginator(
        _ input: ListAccountRolesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListAccountRolesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listAccountRoles,
            inputKey: \ListAccountRolesRequest.nextToken,
            outputKey: \ListAccountRolesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all AWS accounts assigned to the user. These AWS accounts are assigned by the administrator of the account. For more information, see Assign User Access in the IAM Identity Center User Guide. This operation returns a paginated response.
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
    public func listAccountsPaginator<Result>(
        _ input: ListAccountsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListAccountsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listAccounts,
            inputKey: \ListAccountsRequest.nextToken,
            outputKey: \ListAccountsResponse.nextToken,
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
    public func listAccountsPaginator(
        _ input: ListAccountsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListAccountsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listAccounts,
            inputKey: \ListAccountsRequest.nextToken,
            outputKey: \ListAccountsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension SSO.ListAccountRolesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSO.ListAccountRolesRequest {
        return .init(
            accessToken: self.accessToken,
            accountId: self.accountId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension SSO.ListAccountsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSO.ListAccountsRequest {
        return .init(
            accessToken: self.accessToken,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}