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

/// Error enum for ConfigService
public struct ConfigServiceErrorType: AWSErrorType {
    enum Code: String {
        case conformancePackTemplateValidationException = "ConformancePackTemplateValidationException"
        case insufficientDeliveryPolicyException = "InsufficientDeliveryPolicyException"
        case insufficientPermissionsException = "InsufficientPermissionsException"
        case invalidConfigurationRecorderNameException = "InvalidConfigurationRecorderNameException"
        case invalidDeliveryChannelNameException = "InvalidDeliveryChannelNameException"
        case invalidExpressionException = "InvalidExpressionException"
        case invalidLimitException = "InvalidLimitException"
        case invalidNextTokenException = "InvalidNextTokenException"
        case invalidParameterValueException = "InvalidParameterValueException"
        case invalidRecordingGroupException = "InvalidRecordingGroupException"
        case invalidResultTokenException = "InvalidResultTokenException"
        case invalidRoleException = "InvalidRoleException"
        case invalidS3KeyPrefixException = "InvalidS3KeyPrefixException"
        case invalidS3KmsKeyArnException = "InvalidS3KmsKeyArnException"
        case invalidSNSTopicARNException = "InvalidSNSTopicARNException"
        case invalidTimeRangeException = "InvalidTimeRangeException"
        case lastDeliveryChannelDeleteFailedException = "LastDeliveryChannelDeleteFailedException"
        case limitExceededException = "LimitExceededException"
        case maxActiveResourcesExceededException = "MaxActiveResourcesExceededException"
        case maxNumberOfConfigRulesExceededException = "MaxNumberOfConfigRulesExceededException"
        case maxNumberOfConfigurationRecordersExceededException = "MaxNumberOfConfigurationRecordersExceededException"
        case maxNumberOfConformancePacksExceededException = "MaxNumberOfConformancePacksExceededException"
        case maxNumberOfDeliveryChannelsExceededException = "MaxNumberOfDeliveryChannelsExceededException"
        case maxNumberOfOrganizationConfigRulesExceededException = "MaxNumberOfOrganizationConfigRulesExceededException"
        case maxNumberOfOrganizationConformancePacksExceededException = "MaxNumberOfOrganizationConformancePacksExceededException"
        case maxNumberOfRetentionConfigurationsExceededException = "MaxNumberOfRetentionConfigurationsExceededException"
        case noAvailableConfigurationRecorderException = "NoAvailableConfigurationRecorderException"
        case noAvailableDeliveryChannelException = "NoAvailableDeliveryChannelException"
        case noAvailableOrganizationException = "NoAvailableOrganizationException"
        case noRunningConfigurationRecorderException = "NoRunningConfigurationRecorderException"
        case noSuchBucketException = "NoSuchBucketException"
        case noSuchConfigRuleException = "NoSuchConfigRuleException"
        case noSuchConfigRuleInConformancePackException = "NoSuchConfigRuleInConformancePackException"
        case noSuchConfigurationAggregatorException = "NoSuchConfigurationAggregatorException"
        case noSuchConfigurationRecorderException = "NoSuchConfigurationRecorderException"
        case noSuchConformancePackException = "NoSuchConformancePackException"
        case noSuchDeliveryChannelException = "NoSuchDeliveryChannelException"
        case noSuchOrganizationConfigRuleException = "NoSuchOrganizationConfigRuleException"
        case noSuchOrganizationConformancePackException = "NoSuchOrganizationConformancePackException"
        case noSuchRemediationConfigurationException = "NoSuchRemediationConfigurationException"
        case noSuchRemediationExceptionException = "NoSuchRemediationExceptionException"
        case noSuchRetentionConfigurationException = "NoSuchRetentionConfigurationException"
        case organizationAccessDeniedException = "OrganizationAccessDeniedException"
        case organizationAllFeaturesNotEnabledException = "OrganizationAllFeaturesNotEnabledException"
        case organizationConformancePackTemplateValidationException = "OrganizationConformancePackTemplateValidationException"
        case oversizedConfigurationItemException = "OversizedConfigurationItemException"
        case remediationInProgressException = "RemediationInProgressException"
        case resourceConcurrentModificationException = "ResourceConcurrentModificationException"
        case resourceInUseException = "ResourceInUseException"
        case resourceNotDiscoveredException = "ResourceNotDiscoveredException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case tooManyTagsException = "TooManyTagsException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize ConfigService
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

    /// You have specified a template that is not valid or supported.
    public static var conformancePackTemplateValidationException: Self { .init(.conformancePackTemplateValidationException) }
    /// Your Amazon S3 bucket policy does not permit Config to
    /// 			write to it.
    public static var insufficientDeliveryPolicyException: Self { .init(.insufficientDeliveryPolicyException) }
    /// Indicates one of the following errors:
    /// 		         For PutConfigRule, the rule cannot be created because the IAM role assigned to Config lacks permissions to perform the config:Put* action.   For PutConfigRule, the Lambda function cannot be invoked. Check the function ARN, and check the function's permissions.   For PutOrganizationConfigRule, organization Config rule cannot be created because you do not have permissions to call IAM GetRole action or create a service-linked role.   For PutConformancePack and PutOrganizationConformancePack, a conformance pack cannot be created because you do not have permissions:
    /// 				             To call IAM GetRole action or create a service-linked role.   To read Amazon S3 bucket.
    ///
    public static var insufficientPermissionsException: Self { .init(.insufficientPermissionsException) }
    /// You have provided a configuration recorder name that is not
    /// 			valid.
    public static var invalidConfigurationRecorderNameException: Self { .init(.invalidConfigurationRecorderNameException) }
    /// The specified delivery channel name is not valid.
    public static var invalidDeliveryChannelNameException: Self { .init(.invalidDeliveryChannelNameException) }
    /// The syntax of the query is incorrect.
    public static var invalidExpressionException: Self { .init(.invalidExpressionException) }
    /// The specified limit is outside the allowable range.
    public static var invalidLimitException: Self { .init(.invalidLimitException) }
    /// The specified next token is invalid. Specify the
    /// 				nextToken string that was returned in the previous
    /// 			response to get the next page of results.
    public static var invalidNextTokenException: Self { .init(.invalidNextTokenException) }
    /// One or more of the specified parameters are invalid. Verify
    /// 			that your parameters are valid and try again.
    public static var invalidParameterValueException: Self { .init(.invalidParameterValueException) }
    /// Config throws an exception if the recording group does not contain a valid list of resource types. Invalid values might also be incorrectly formatted.
    public static var invalidRecordingGroupException: Self { .init(.invalidRecordingGroupException) }
    /// The specified ResultToken is invalid.
    public static var invalidResultTokenException: Self { .init(.invalidResultTokenException) }
    /// You have provided a null or empty role ARN.
    public static var invalidRoleException: Self { .init(.invalidRoleException) }
    /// The specified Amazon S3 key prefix is not valid.
    public static var invalidS3KeyPrefixException: Self { .init(.invalidS3KeyPrefixException) }
    /// The specified Amazon KMS Key ARN is not valid.
    public static var invalidS3KmsKeyArnException: Self { .init(.invalidS3KmsKeyArnException) }
    /// The specified Amazon SNS topic does not exist.
    public static var invalidSNSTopicARNException: Self { .init(.invalidSNSTopicARNException) }
    /// The specified time range is not valid. The earlier time is not
    /// 			chronologically before the later time.
    public static var invalidTimeRangeException: Self { .init(.invalidTimeRangeException) }
    /// You cannot delete the delivery channel you specified because
    /// 			the configuration recorder is running.
    public static var lastDeliveryChannelDeleteFailedException: Self { .init(.lastDeliveryChannelDeleteFailedException) }
    /// For StartConfigRulesEvaluation API, this exception
    /// 			is thrown if an evaluation is in progress or if you call the StartConfigRulesEvaluation API more than once per
    /// 			minute.
    /// 		       For PutConfigurationAggregator API, this exception
    /// 			is thrown if the number of accounts and aggregators exceeds the
    /// 			limit.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// You have reached the limit (100,000) of active custom resource types in your account.
    /// 			Delete unused resources using DeleteResourceConfig.
    public static var maxActiveResourcesExceededException: Self { .init(.maxActiveResourcesExceededException) }
    /// Failed to add the Config rule because the account already
    /// 			contains the maximum number of 150 rules. Consider deleting any
    /// 			deactivated rules before you add new rules.
    public static var maxNumberOfConfigRulesExceededException: Self { .init(.maxNumberOfConfigRulesExceededException) }
    /// You have reached the limit of the number of recorders you can
    /// 			create.
    public static var maxNumberOfConfigurationRecordersExceededException: Self { .init(.maxNumberOfConfigurationRecordersExceededException) }
    /// You have reached the limit (6) of the number of conformance packs in an account (6 conformance pack with 25 Config rules per pack).
    public static var maxNumberOfConformancePacksExceededException: Self { .init(.maxNumberOfConformancePacksExceededException) }
    /// You have reached the limit of the number of delivery channels
    /// 			you can create.
    public static var maxNumberOfDeliveryChannelsExceededException: Self { .init(.maxNumberOfDeliveryChannelsExceededException) }
    /// You have reached the limit of the number of organization Config rules you can create.
    public static var maxNumberOfOrganizationConfigRulesExceededException: Self { .init(.maxNumberOfOrganizationConfigRulesExceededException) }
    /// You have reached the limit (6) of the number of organization conformance packs in an account (6 conformance pack with 25 Config rules per pack per account).
    public static var maxNumberOfOrganizationConformancePacksExceededException: Self { .init(.maxNumberOfOrganizationConformancePacksExceededException) }
    /// Failed to add the retention configuration because a retention configuration with that name already exists.
    public static var maxNumberOfRetentionConfigurationsExceededException: Self { .init(.maxNumberOfRetentionConfigurationsExceededException) }
    /// There are no configuration recorders available to provide the
    /// 			role needed to describe your resources. Create a configuration
    /// 			recorder.
    public static var noAvailableConfigurationRecorderException: Self { .init(.noAvailableConfigurationRecorderException) }
    /// There is no delivery channel available to record
    /// 			configurations.
    public static var noAvailableDeliveryChannelException: Self { .init(.noAvailableDeliveryChannelException) }
    /// Organization is no longer available.
    public static var noAvailableOrganizationException: Self { .init(.noAvailableOrganizationException) }
    /// There is no configuration recorder running.
    public static var noRunningConfigurationRecorderException: Self { .init(.noRunningConfigurationRecorderException) }
    /// The specified Amazon S3 bucket does not exist.
    public static var noSuchBucketException: Self { .init(.noSuchBucketException) }
    /// The Config rule in the request is not valid. Verify that the rule is an Config Custom Policy rule, that the rule name is correct, and that valid Amazon Resouce Names (ARNs) are used before trying again.
    public static var noSuchConfigRuleException: Self { .init(.noSuchConfigRuleException) }
    /// Config rule that you passed in the filter does not exist.
    public static var noSuchConfigRuleInConformancePackException: Self { .init(.noSuchConfigRuleInConformancePackException) }
    /// You have specified a configuration aggregator that does not exist.
    public static var noSuchConfigurationAggregatorException: Self { .init(.noSuchConfigurationAggregatorException) }
    /// You have specified a configuration recorder that does not
    /// 			exist.
    public static var noSuchConfigurationRecorderException: Self { .init(.noSuchConfigurationRecorderException) }
    /// You specified one or more conformance packs that do not exist.
    public static var noSuchConformancePackException: Self { .init(.noSuchConformancePackException) }
    /// You have specified a delivery channel that does not
    /// 			exist.
    public static var noSuchDeliveryChannelException: Self { .init(.noSuchDeliveryChannelException) }
    /// The Config rule in the request is not valid. Verify that the rule is an organization Config Custom Policy rule, that the rule name is correct, and that valid Amazon Resouce Names (ARNs) are used before trying again.
    public static var noSuchOrganizationConfigRuleException: Self { .init(.noSuchOrganizationConfigRuleException) }
    /// Config organization conformance pack that you passed in the filter does not exist.
    /// 		       For DeleteOrganizationConformancePack, you tried to delete an organization conformance pack that does not exist.
    public static var noSuchOrganizationConformancePackException: Self { .init(.noSuchOrganizationConformancePackException) }
    /// You specified an Config rule without a remediation configuration.
    public static var noSuchRemediationConfigurationException: Self { .init(.noSuchRemediationConfigurationException) }
    /// You tried to delete a remediation exception that does not exist.
    public static var noSuchRemediationExceptionException: Self { .init(.noSuchRemediationExceptionException) }
    /// You have specified a retention configuration that does not exist.
    public static var noSuchRetentionConfigurationException: Self { .init(.noSuchRetentionConfigurationException) }
    /// For PutConfigurationAggregator API, you can see this exception for the following reasons:
    /// 		         No permission to call EnableAWSServiceAccess API   The configuration aggregator cannot be updated because your Amazon Web Services Organization management account or the delegated administrator role changed.
    /// 				Delete this aggregator and create a new one with the current Amazon Web Services Organization.   The configuration aggregator is associated with a previous Amazon Web Services Organization and Config cannot aggregate data with current Amazon Web Services Organization.
    /// 				Delete this aggregator and create a new one with the current Amazon Web Services Organization.   You are not a registered delegated administrator for Config with permissions to call ListDelegatedAdministrators API.
    /// 			Ensure that the management account registers delagated administrator for Config service principle name before the delegated administrator creates an aggregator.
    /// 		       For all OrganizationConfigRule and OrganizationConformancePack APIs, Config throws an exception if APIs are called from member accounts. All APIs must be called from organization master account.
    public static var organizationAccessDeniedException: Self { .init(.organizationAccessDeniedException) }
    /// Config resource cannot be created because your organization does not have all features enabled.
    public static var organizationAllFeaturesNotEnabledException: Self { .init(.organizationAllFeaturesNotEnabledException) }
    /// You have specified a template that is not valid or supported.
    public static var organizationConformancePackTemplateValidationException: Self { .init(.organizationConformancePackTemplateValidationException) }
    /// The configuration item size is outside the allowable range.
    public static var oversizedConfigurationItemException: Self { .init(.oversizedConfigurationItemException) }
    /// Remediation action is in progress. You can either cancel execution in Amazon Web Services Systems Manager or wait and try again later.
    public static var remediationInProgressException: Self { .init(.remediationInProgressException) }
    /// Two users are trying to modify the same query at the same time. Wait for a moment and try again.
    public static var resourceConcurrentModificationException: Self { .init(.resourceConcurrentModificationException) }
    /// You see this exception in the following cases:
    /// 		         For DeleteConfigRule, Config is deleting this rule. Try your request again later.   For DeleteConfigRule, the rule is deleting your evaluation results. Try your request again later.   For DeleteConfigRule, a remediation action is associated with the rule and Config cannot delete this rule. Delete the remediation action associated with the rule before deleting the rule and try your request again later.   For PutConfigOrganizationRule, organization Config rule deletion is in progress. Try your request again later.   For DeleteOrganizationConfigRule, organization Config rule creation is in progress. Try your request again later.   For PutConformancePack and PutOrganizationConformancePack, a conformance pack creation, update, and deletion is in progress. Try your request again later.   For DeleteConformancePack, a conformance pack creation, update, and deletion is in progress. Try your request again later.
    public static var resourceInUseException: Self { .init(.resourceInUseException) }
    /// You have specified a resource that is either unknown or has not
    /// 			been discovered.
    public static var resourceNotDiscoveredException: Self { .init(.resourceNotDiscoveredException) }
    /// You have specified a resource that does not exist.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// You have reached the limit of the number of tags you can use. You have more than 50 tags.
    public static var tooManyTagsException: Self { .init(.tooManyTagsException) }
    /// The requested action is not valid.
    /// 		       For PutStoredQuery, you will see this exception if there are missing required fields or if the input value fails the validation, or if you are trying to create more than 300 queries.
    /// 		       For GetStoredQuery, ListStoredQuery, and DeleteStoredQuery you will see this exception if there are missing required fields or if the input value fails the validation.
    public static var validationException: Self { .init(.validationException) }
}

extension ConfigServiceErrorType: Equatable {
    public static func == (lhs: ConfigServiceErrorType, rhs: ConfigServiceErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension ConfigServiceErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
