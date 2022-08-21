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

/// Service object for interacting with AWS Transfer service.
///
/// Transfer Family is a fully managed service that enables the transfer of files over the File Transfer Protocol (FTP), File Transfer Protocol over SSL (FTPS), or Secure Shell (SSH) File Transfer Protocol (SFTP) directly into and out of Amazon Simple Storage Service (Amazon S3). Amazon Web Services helps you seamlessly migrate your file transfer workflows to Transfer Family by integrating with existing authentication systems, and providing DNS routing with Amazon Route 53 so nothing changes for your customers and partners, or their applications. With your data in Amazon S3, you can use it with Amazon Web Services for processing, analytics, machine learning, and archiving. Getting started with Transfer Family is easy since there is no infrastructure to buy and set up.
public struct Transfer: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Transfer client
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
            amzTarget: "TransferService",
            service: "transfer",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2018-11-05",
            endpoint: endpoint,
            errorType: TransferErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Used by administrators to choose which groups in the directory should have access to upload and download files over the enabled protocols using Transfer Family. For example, a Microsoft Active Directory might contain 50,000 users, but only a small fraction might need the ability to transfer files to the server. An administrator can use CreateAccess to limit the access to the correct set of users who need this ability.
    public func createAccess(_ input: CreateAccessRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAccessResponse> {
        return self.client.execute(operation: "CreateAccess", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an agreement. An agreement is a bilateral trading partner agreement, or partnership, between an Transfer Family server and an AS2 process. The agreement defines the file and message transfer relationship between the server and the AS2 process. To define an agreement, Transfer Family combines a server, local profile, partner profile, certificate, and other attributes. The partner is identified with the PartnerProfileId, and the AS2 process is identified with the LocalProfileId.
    public func createAgreement(_ input: CreateAgreementRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAgreementResponse> {
        return self.client.execute(operation: "CreateAgreement", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates the connector, which captures the parameters for an outbound connection for the AS2 protocol. The connector is required for sending files from a customer's non Amazon Web Services server.
    public func createConnector(_ input: CreateConnectorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateConnectorResponse> {
        return self.client.execute(operation: "CreateConnector", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates the profile for the AS2 process. The agreement is between the partner and the AS2 process.
    public func createProfile(_ input: CreateProfileRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateProfileResponse> {
        return self.client.execute(operation: "CreateProfile", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Instantiates an auto-scaling virtual server based on the selected file transfer protocol in Amazon Web Services. When you make updates to your file transfer protocol-enabled server or when you work with users, use the service-generated ServerId property that is assigned to the newly created server.
    public func createServer(_ input: CreateServerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateServerResponse> {
        return self.client.execute(operation: "CreateServer", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a user and associates them with an existing file transfer protocol-enabled server. You can only create and associate users with servers that have the IdentityProviderType set to SERVICE_MANAGED. Using parameters for CreateUser, you can specify the user name, set the home directory, store the user's public key, and assign the user's Identity and Access Management (IAM) role. You can also optionally add a session policy, and assign metadata with tags that can be used to group and search for users.
    public func createUser(_ input: CreateUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateUserResponse> {
        return self.client.execute(operation: "CreateUser", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Allows you to create a workflow with specified steps and step details the workflow invokes after file transfer completes. After creating a workflow, you can associate the workflow created with any transfer servers by specifying the workflow-details field in CreateServer and UpdateServer operations.
    public func createWorkflow(_ input: CreateWorkflowRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateWorkflowResponse> {
        return self.client.execute(operation: "CreateWorkflow", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Allows you to delete the access specified in the ServerID and ExternalID parameters.
    @discardableResult public func deleteAccess(_ input: DeleteAccessRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteAccess", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete the agreement that's specified in the provided AgreementId.
    @discardableResult public func deleteAgreement(_ input: DeleteAgreementRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteAgreement", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the certificate that's specified in the CertificateId parameter.
    @discardableResult public func deleteCertificate(_ input: DeleteCertificateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteCertificate", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the agreement that's specified in the provided ConnectorId.
    @discardableResult public func deleteConnector(_ input: DeleteConnectorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteConnector", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the profile that's specified in the ProfileId parameter.
    @discardableResult public func deleteProfile(_ input: DeleteProfileRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteProfile", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the file transfer protocol-enabled server that you specify.
    ///  No response returns from this operation.
    @discardableResult public func deleteServer(_ input: DeleteServerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteServer", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a user's Secure Shell (SSH) public key.
    @discardableResult public func deleteSshPublicKey(_ input: DeleteSshPublicKeyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteSshPublicKey", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the user belonging to a file transfer protocol-enabled server you specify.
    ///  No response returns from this operation.
    ///   When you delete a user from a server, the user's information is lost.
    @discardableResult public func deleteUser(_ input: DeleteUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteUser", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified workflow.
    @discardableResult public func deleteWorkflow(_ input: DeleteWorkflowRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteWorkflow", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the access that is assigned to the specific file transfer protocol-enabled server, as identified by its ServerId property and its ExternalId.  The response from this call returns the properties of the access that is associated with the ServerId value that was specified.
    public func describeAccess(_ input: DescribeAccessRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccessResponse> {
        return self.client.execute(operation: "DescribeAccess", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the agreement that's identified by the AgreementId.
    public func describeAgreement(_ input: DescribeAgreementRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAgreementResponse> {
        return self.client.execute(operation: "DescribeAgreement", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the certificate that's identified by the CertificateId.
    public func describeCertificate(_ input: DescribeCertificateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCertificateResponse> {
        return self.client.execute(operation: "DescribeCertificate", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the connector that's identified by the ConnectorId.
    public func describeConnector(_ input: DescribeConnectorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConnectorResponse> {
        return self.client.execute(operation: "DescribeConnector", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// You can use DescribeExecution to check the details of the execution of the specified workflow.
    public func describeExecution(_ input: DescribeExecutionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExecutionResponse> {
        return self.client.execute(operation: "DescribeExecution", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the details of the profile that's specified by the ProfileId.
    public func describeProfile(_ input: DescribeProfileRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProfileResponse> {
        return self.client.execute(operation: "DescribeProfile", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the security policy that is attached to your file transfer protocol-enabled server. The response contains a description of the security policy's properties. For more information about security policies, see Working with security policies.
    public func describeSecurityPolicy(_ input: DescribeSecurityPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecurityPolicyResponse> {
        return self.client.execute(operation: "DescribeSecurityPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes a file transfer protocol-enabled server that you specify by passing the ServerId parameter.
    ///  The response contains a description of a server's properties. When you set EndpointType to VPC, the response will contain the EndpointDetails.
    public func describeServer(_ input: DescribeServerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServerResponse> {
        return self.client.execute(operation: "DescribeServer", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the user assigned to the specific file transfer protocol-enabled server, as identified by its ServerId property.
    ///  The response from this call returns the properties of the user associated with the ServerId value that was specified.
    public func describeUser(_ input: DescribeUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserResponse> {
        return self.client.execute(operation: "DescribeUser", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the specified workflow.
    public func describeWorkflow(_ input: DescribeWorkflowRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorkflowResponse> {
        return self.client.execute(operation: "DescribeWorkflow", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Imports the signing and encryption certificates that you need to create local (AS2) profiles and partner profiles.
    public func importCertificate(_ input: ImportCertificateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportCertificateResponse> {
        return self.client.execute(operation: "ImportCertificate", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds a Secure Shell (SSH) public key to a user account identified by a UserName value assigned to the specific file transfer protocol-enabled server, identified by ServerId.
    ///  The response returns the UserName value, the ServerId value, and the name of the SshPublicKeyId.
    public func importSshPublicKey(_ input: ImportSshPublicKeyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportSshPublicKeyResponse> {
        return self.client.execute(operation: "ImportSshPublicKey", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the details for all the accesses you have on your server.
    public func listAccesses(_ input: ListAccessesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAccessesResponse> {
        return self.client.execute(operation: "ListAccesses", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of the agreements for the server that's identified by the ServerId that you supply. If you want to limit the results to a certain number, supply a value for the MaxResults parameter. If you ran the command previously and received a value for NextToken, you can supply that value to continue listing agreements from where you left off.
    public func listAgreements(_ input: ListAgreementsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAgreementsResponse> {
        return self.client.execute(operation: "ListAgreements", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of the current certificates that have been imported into Transfer Family. If you want to limit the results to a certain number, supply a value for the MaxResults parameter. If you ran the command previously and received a value for the NextToken parameter, you can supply that value to continue listing certificates from where you left off.
    public func listCertificates(_ input: ListCertificatesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListCertificatesResponse> {
        return self.client.execute(operation: "ListCertificates", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the connectors for the specified Region.
    public func listConnectors(_ input: ListConnectorsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListConnectorsResponse> {
        return self.client.execute(operation: "ListConnectors", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all executions for the specified workflow.
    public func listExecutions(_ input: ListExecutionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListExecutionsResponse> {
        return self.client.execute(operation: "ListExecutions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of the profiles for your system. If you want to limit the results to a certain number, supply a value for the MaxResults parameter. If you ran the command previously and received a value for NextToken, you can supply that value to continue listing profiles from where you left off.
    public func listProfiles(_ input: ListProfilesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListProfilesResponse> {
        return self.client.execute(operation: "ListProfiles", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the security policies that are attached to your file transfer protocol-enabled servers.
    public func listSecurityPolicies(_ input: ListSecurityPoliciesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSecurityPoliciesResponse> {
        return self.client.execute(operation: "ListSecurityPolicies", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the file transfer protocol-enabled servers that are associated with your Amazon Web Services account.
    public func listServers(_ input: ListServersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListServersResponse> {
        return self.client.execute(operation: "ListServers", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all of the tags associated with the Amazon Resource Name (ARN) that you specify. The resource can be a user, server, or role.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the users for a file transfer protocol-enabled server that you specify by passing the ServerId parameter.
    public func listUsers(_ input: ListUsersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListUsersResponse> {
        return self.client.execute(operation: "ListUsers", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all of your workflows.
    public func listWorkflows(_ input: ListWorkflowsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListWorkflowsResponse> {
        return self.client.execute(operation: "ListWorkflows", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Sends a callback for asynchronous custom steps.  The ExecutionId, WorkflowId, and Token are passed to the target resource during execution of a custom step of a workflow. You must include those with their callback as well as providing a status.
    public func sendWorkflowStepState(_ input: SendWorkflowStepStateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SendWorkflowStepStateResponse> {
        return self.client.execute(operation: "SendWorkflowStepState", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Begins an outbound file transfer. You specify the ConnectorId and the file paths for where to send the files.
    public func startFileTransfer(_ input: StartFileTransferRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartFileTransferResponse> {
        return self.client.execute(operation: "StartFileTransfer", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Changes the state of a file transfer protocol-enabled server from OFFLINE to ONLINE. It has no impact on a server that is already ONLINE. An ONLINE server can accept and process file transfer jobs.
    ///  The state of STARTING indicates that the server is in an intermediate state, either not fully able to respond, or not fully online. The values of START_FAILED can indicate an error condition.
    ///  No response is returned from this call.
    @discardableResult public func startServer(_ input: StartServerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "StartServer", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Changes the state of a file transfer protocol-enabled server from ONLINE to OFFLINE. An OFFLINE server cannot accept and process file transfer jobs. Information tied to your server, such as server and user properties, are not affected by stopping your server.
    ///   Stopping the server does not reduce or impact your file transfer protocol endpoint billing; you must delete the server to stop being billed.
    ///  The state of STOPPING indicates that the server is in an intermediate state, either not fully able to respond, or not fully offline. The values of STOP_FAILED can indicate an error condition.
    ///  No response is returned from this call.
    @discardableResult public func stopServer(_ input: StopServerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "StopServer", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Attaches a key-value pair to a resource, as identified by its Amazon Resource Name (ARN). Resources are users, servers, roles, and other entities.
    ///  There is no response returned from this call.
    @discardableResult public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// If the IdentityProviderType of a file transfer protocol-enabled server is AWS_DIRECTORY_SERVICE or API_Gateway, tests whether your identity provider is set up successfully. We highly recommend that you call this operation to test your authentication method as soon as you create your server. By doing so, you can troubleshoot issues with the identity provider integration to ensure that your users can successfully use the service.  The ServerId and UserName parameters are required. The ServerProtocol, SourceIp, and UserPassword are all optional.     You cannot use TestIdentityProvider if the IdentityProviderType of your server is SERVICE_MANAGED.      If you provide any incorrect values for any parameters, the Response field is empty.     If you provide a server ID for a server that uses service-managed users, you get an error:    An error occurred (InvalidRequestException) when calling the TestIdentityProvider operation: s-server-ID not configured for external auth      If you enter a Server ID for the --server-id parameter that does not identify an actual Transfer server, you receive the following error:   An error occurred (ResourceNotFoundException) when calling the TestIdentityProvider operation: Unknown server
    public func testIdentityProvider(_ input: TestIdentityProviderRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TestIdentityProviderResponse> {
        return self.client.execute(operation: "TestIdentityProvider", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Detaches a key-value pair from a resource, as identified by its Amazon Resource Name (ARN). Resources are users, servers, roles, and other entities.
    ///  No response is returned from this call.
    @discardableResult public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Allows you to update parameters for the access specified in the ServerID and ExternalID parameters.
    public func updateAccess(_ input: UpdateAccessRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAccessResponse> {
        return self.client.execute(operation: "UpdateAccess", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates some of the parameters for an existing agreement. Provide the AgreementId and the ServerId for the agreement that you want to update, along with the new values for the parameters to update.
    public func updateAgreement(_ input: UpdateAgreementRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAgreementResponse> {
        return self.client.execute(operation: "UpdateAgreement", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the active and inactive dates for a certificate.
    public func updateCertificate(_ input: UpdateCertificateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateCertificateResponse> {
        return self.client.execute(operation: "UpdateCertificate", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates some of the parameters for an existing connector. Provide the ConnectorId for the connector that you want to update, along with the new values for the parameters to update.
    public func updateConnector(_ input: UpdateConnectorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateConnectorResponse> {
        return self.client.execute(operation: "UpdateConnector", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates some of the parameters for an existing profile. Provide the ProfileId for the profile that you want to update, along with the new values for the parameters to update.
    public func updateProfile(_ input: UpdateProfileRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateProfileResponse> {
        return self.client.execute(operation: "UpdateProfile", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the file transfer protocol-enabled server's properties after that server has been created.
    ///  The UpdateServer call returns the ServerId of the server you updated.
    public func updateServer(_ input: UpdateServerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateServerResponse> {
        return self.client.execute(operation: "UpdateServer", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Assigns new properties to a user. Parameters you pass modify any or all of the following: the home directory, role, and policy for the UserName and ServerId you specify.
    ///  The response returns the ServerId and the UserName for the updated user.
    public func updateUser(_ input: UpdateUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateUserResponse> {
        return self.client.execute(operation: "UpdateUser", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension Transfer {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Transfer, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
