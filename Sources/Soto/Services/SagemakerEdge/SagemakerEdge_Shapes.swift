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

extension SagemakerEdge {
    // MARK: Enums

    public enum ChecksumType: String, CustomStringConvertible, Codable, _SotoSendable {
        case sha1 = "SHA1"
        public var description: String { return self.rawValue }
    }

    public enum DeploymentStatus: String, CustomStringConvertible, Codable, _SotoSendable {
        case fail = "FAIL"
        case success = "SUCCESS"
        public var description: String { return self.rawValue }
    }

    public enum DeploymentType: String, CustomStringConvertible, Codable, _SotoSendable {
        case model = "Model"
        public var description: String { return self.rawValue }
    }

    public enum FailureHandlingPolicy: String, CustomStringConvertible, Codable, _SotoSendable {
        case doNothing = "DO_NOTHING"
        case rollbackOnFailure = "ROLLBACK_ON_FAILURE"
        public var description: String { return self.rawValue }
    }

    public enum ModelState: String, CustomStringConvertible, Codable, _SotoSendable {
        case deploy = "DEPLOY"
        case undeploy = "UNDEPLOY"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct Checksum: AWSDecodableShape {
        /// The checksum of the model.
        public let sum: String?
        /// The type of the checksum.
        public let type: ChecksumType?

        public init(sum: String? = nil, type: ChecksumType? = nil) {
            self.sum = sum
            self.type = type
        }

        private enum CodingKeys: String, CodingKey {
            case sum = "Sum"
            case type = "Type"
        }
    }

    public struct Definition: AWSDecodableShape {
        /// The checksum information of the model.
        public let checksum: Checksum?
        /// The unique model handle.
        public let modelHandle: String?
        /// The absolute S3 location of the model.
        public let s3Url: String?
        /// The desired state of the model.
        public let state: ModelState?

        public init(checksum: Checksum? = nil, modelHandle: String? = nil, s3Url: String? = nil, state: ModelState? = nil) {
            self.checksum = checksum
            self.modelHandle = modelHandle
            self.s3Url = s3Url
            self.state = state
        }

        private enum CodingKeys: String, CodingKey {
            case checksum = "Checksum"
            case modelHandle = "ModelHandle"
            case s3Url = "S3Url"
            case state = "State"
        }
    }

    public struct DeploymentModel: AWSEncodableShape {
        /// The desired state of the model.
        public let desiredState: ModelState?
        /// The unique handle of the model.
        public let modelHandle: String?
        /// The name of the model.
        public let modelName: String?
        /// The version of the model.
        public let modelVersion: String?
        /// Returns the error message if there is a rollback.
        public let rollbackFailureReason: String?
        /// Returns the current state of the model.
        public let state: ModelState?
        /// Returns the deployment status of the model.
        public let status: DeploymentStatus?
        /// Returns the error message for the deployment status result.
        public let statusReason: String?

        public init(desiredState: ModelState? = nil, modelHandle: String? = nil, modelName: String? = nil, modelVersion: String? = nil, rollbackFailureReason: String? = nil, state: ModelState? = nil, status: DeploymentStatus? = nil, statusReason: String? = nil) {
            self.desiredState = desiredState
            self.modelHandle = modelHandle
            self.modelName = modelName
            self.modelVersion = modelVersion
            self.rollbackFailureReason = rollbackFailureReason
            self.state = state
            self.status = status
            self.statusReason = statusReason
        }

        public func validate(name: String) throws {
            try self.validate(self.modelHandle, name: "modelHandle", parent: name, max: 63)
            try self.validate(self.modelHandle, name: "modelHandle", parent: name, min: 1)
            try self.validate(self.modelHandle, name: "modelHandle", parent: name, pattern: "^[a-zA-Z0-9](-*[a-zA-Z0-9])*$")
            try self.validate(self.modelName, name: "modelName", parent: name, max: 255)
            try self.validate(self.modelName, name: "modelName", parent: name, min: 4)
            try self.validate(self.modelName, name: "modelName", parent: name, pattern: "^[a-zA-Z0-9](-*[a-zA-Z0-9])*$")
            try self.validate(self.modelVersion, name: "modelVersion", parent: name, max: 64)
            try self.validate(self.modelVersion, name: "modelVersion", parent: name, min: 1)
            try self.validate(self.modelVersion, name: "modelVersion", parent: name, pattern: "^[a-zA-Z0-9\\ \\_\\.]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case desiredState = "DesiredState"
            case modelHandle = "ModelHandle"
            case modelName = "ModelName"
            case modelVersion = "ModelVersion"
            case rollbackFailureReason = "RollbackFailureReason"
            case state = "State"
            case status = "Status"
            case statusReason = "StatusReason"
        }
    }

    public struct DeploymentResult: AWSEncodableShape {
        /// The timestamp of when the deployment was ended, and the agent got the deployment results.
        public let deploymentEndTime: Date?
        /// Returns a list of models deployed on the agent.
        public let deploymentModels: [DeploymentModel]?
        /// The name and unique ID of the deployment.
        public let deploymentName: String?
        /// The timestamp of when the deployment was started on the agent.
        public let deploymentStartTime: Date?
        /// Returns the bucket error code.
        public let deploymentStatus: String?
        /// Returns the detailed error message.
        public let deploymentStatusMessage: String?

        public init(deploymentEndTime: Date? = nil, deploymentModels: [DeploymentModel]? = nil, deploymentName: String? = nil, deploymentStartTime: Date? = nil, deploymentStatus: String? = nil, deploymentStatusMessage: String? = nil) {
            self.deploymentEndTime = deploymentEndTime
            self.deploymentModels = deploymentModels
            self.deploymentName = deploymentName
            self.deploymentStartTime = deploymentStartTime
            self.deploymentStatus = deploymentStatus
            self.deploymentStatusMessage = deploymentStatusMessage
        }

        public func validate(name: String) throws {
            try self.deploymentModels?.forEach {
                try $0.validate(name: "\(name).deploymentModels[]")
            }
            try self.validate(self.deploymentName, name: "deploymentName", parent: name, max: 63)
            try self.validate(self.deploymentName, name: "deploymentName", parent: name, min: 1)
            try self.validate(self.deploymentName, name: "deploymentName", parent: name, pattern: "^[a-zA-Z0-9](-*[a-zA-Z0-9])*$")
            try self.validate(self.deploymentStatus, name: "deploymentStatus", parent: name, max: 63)
            try self.validate(self.deploymentStatus, name: "deploymentStatus", parent: name, min: 1)
            try self.validate(self.deploymentStatus, name: "deploymentStatus", parent: name, pattern: "^[a-zA-Z0-9](-*[a-zA-Z0-9])*$")
        }

        private enum CodingKeys: String, CodingKey {
            case deploymentEndTime = "DeploymentEndTime"
            case deploymentModels = "DeploymentModels"
            case deploymentName = "DeploymentName"
            case deploymentStartTime = "DeploymentStartTime"
            case deploymentStatus = "DeploymentStatus"
            case deploymentStatusMessage = "DeploymentStatusMessage"
        }
    }

    public struct EdgeDeployment: AWSDecodableShape {
        /// Returns a list of Definition objects.
        public let definitions: [Definition]?
        /// The name and unique ID of the deployment.
        public let deploymentName: String?
        /// Determines whether to rollback to previous configuration if deployment fails.
        public let failureHandlingPolicy: FailureHandlingPolicy?
        /// The type of the deployment.
        public let type: DeploymentType?

        public init(definitions: [Definition]? = nil, deploymentName: String? = nil, failureHandlingPolicy: FailureHandlingPolicy? = nil, type: DeploymentType? = nil) {
            self.definitions = definitions
            self.deploymentName = deploymentName
            self.failureHandlingPolicy = failureHandlingPolicy
            self.type = type
        }

        private enum CodingKeys: String, CodingKey {
            case definitions = "Definitions"
            case deploymentName = "DeploymentName"
            case failureHandlingPolicy = "FailureHandlingPolicy"
            case type = "Type"
        }
    }

    public struct EdgeMetric: AWSEncodableShape {
        /// The dimension of metrics published.
        public let dimension: String?
        /// Returns the name of the metric.
        public let metricName: String?
        /// Timestamp of when the metric was requested.
        public let timestamp: Date?
        /// Returns the value of the metric.
        public let value: Double?

        public init(dimension: String? = nil, metricName: String? = nil, timestamp: Date? = nil, value: Double? = nil) {
            self.dimension = dimension
            self.metricName = metricName
            self.timestamp = timestamp
            self.value = value
        }

        public func validate(name: String) throws {
            try self.validate(self.dimension, name: "dimension", parent: name, max: 1000)
            try self.validate(self.dimension, name: "dimension", parent: name, min: 1)
            try self.validate(self.dimension, name: "dimension", parent: name, pattern: "^[a-zA-Z0-9](-*[a-zA-Z0-9\\/])*$")
            try self.validate(self.metricName, name: "metricName", parent: name, max: 100)
            try self.validate(self.metricName, name: "metricName", parent: name, min: 4)
            try self.validate(self.metricName, name: "metricName", parent: name, pattern: "^[a-zA-Z0-9](-*[a-zA-Z0-9])*$")
        }

        private enum CodingKeys: String, CodingKey {
            case dimension = "Dimension"
            case metricName = "MetricName"
            case timestamp = "Timestamp"
            case value = "Value"
        }
    }

    public struct GetDeploymentsRequest: AWSEncodableShape {
        /// The name of the fleet that the device belongs to.
        public let deviceFleetName: String
        /// The unique name of the device you want to get the configuration of active deployments from.
        public let deviceName: String

        public init(deviceFleetName: String, deviceName: String) {
            self.deviceFleetName = deviceFleetName
            self.deviceName = deviceName
        }

        public func validate(name: String) throws {
            try self.validate(self.deviceFleetName, name: "deviceFleetName", parent: name, max: 63)
            try self.validate(self.deviceFleetName, name: "deviceFleetName", parent: name, min: 1)
            try self.validate(self.deviceFleetName, name: "deviceFleetName", parent: name, pattern: "^[a-zA-Z0-9](-*_*[a-zA-Z0-9])*$")
            try self.validate(self.deviceName, name: "deviceName", parent: name, max: 63)
            try self.validate(self.deviceName, name: "deviceName", parent: name, min: 1)
            try self.validate(self.deviceName, name: "deviceName", parent: name, pattern: "^[a-zA-Z0-9](-*_*[a-zA-Z0-9])*$")
        }

        private enum CodingKeys: String, CodingKey {
            case deviceFleetName = "DeviceFleetName"
            case deviceName = "DeviceName"
        }
    }

    public struct GetDeploymentsResult: AWSDecodableShape {
        /// Returns a list of the configurations of the active deployments on the device.
        public let deployments: [EdgeDeployment]?

        public init(deployments: [EdgeDeployment]? = nil) {
            self.deployments = deployments
        }

        private enum CodingKeys: String, CodingKey {
            case deployments = "Deployments"
        }
    }

    public struct GetDeviceRegistrationRequest: AWSEncodableShape {
        /// The name of the fleet that the device belongs to.
        public let deviceFleetName: String
        /// The unique name of the device you want to get the registration status from.
        public let deviceName: String

        public init(deviceFleetName: String, deviceName: String) {
            self.deviceFleetName = deviceFleetName
            self.deviceName = deviceName
        }

        public func validate(name: String) throws {
            try self.validate(self.deviceFleetName, name: "deviceFleetName", parent: name, max: 63)
            try self.validate(self.deviceFleetName, name: "deviceFleetName", parent: name, min: 1)
            try self.validate(self.deviceFleetName, name: "deviceFleetName", parent: name, pattern: "^[a-zA-Z0-9](-*_*[a-zA-Z0-9])*$")
            try self.validate(self.deviceName, name: "deviceName", parent: name, max: 63)
            try self.validate(self.deviceName, name: "deviceName", parent: name, min: 1)
            try self.validate(self.deviceName, name: "deviceName", parent: name, pattern: "^[a-zA-Z0-9](-*_*[a-zA-Z0-9])*$")
        }

        private enum CodingKeys: String, CodingKey {
            case deviceFleetName = "DeviceFleetName"
            case deviceName = "DeviceName"
        }
    }

    public struct GetDeviceRegistrationResult: AWSDecodableShape {
        /// The amount of time, in seconds, that the registration status is stored on the device’s cache before it is refreshed.
        public let cacheTTL: String?
        /// Describes if the device is currently registered with SageMaker Edge Manager.
        public let deviceRegistration: String?

        public init(cacheTTL: String? = nil, deviceRegistration: String? = nil) {
            self.cacheTTL = cacheTTL
            self.deviceRegistration = deviceRegistration
        }

        private enum CodingKeys: String, CodingKey {
            case cacheTTL = "CacheTTL"
            case deviceRegistration = "DeviceRegistration"
        }
    }

    public struct Model: AWSEncodableShape {
        /// The timestamp of the last inference that was made.
        public let latestInference: Date?
        /// The timestamp of the last data sample taken.
        public let latestSampleTime: Date?
        /// Information required for model metrics.
        public let modelMetrics: [EdgeMetric]?
        /// The name of the model.
        public let modelName: String?
        /// The version of the model.
        public let modelVersion: String?

        public init(latestInference: Date? = nil, latestSampleTime: Date? = nil, modelMetrics: [EdgeMetric]? = nil, modelName: String? = nil, modelVersion: String? = nil) {
            self.latestInference = latestInference
            self.latestSampleTime = latestSampleTime
            self.modelMetrics = modelMetrics
            self.modelName = modelName
            self.modelVersion = modelVersion
        }

        public func validate(name: String) throws {
            try self.modelMetrics?.forEach {
                try $0.validate(name: "\(name).modelMetrics[]")
            }
            try self.validate(self.modelName, name: "modelName", parent: name, max: 255)
            try self.validate(self.modelName, name: "modelName", parent: name, min: 4)
            try self.validate(self.modelName, name: "modelName", parent: name, pattern: "^[a-zA-Z0-9](-*[a-zA-Z0-9])*$")
            try self.validate(self.modelVersion, name: "modelVersion", parent: name, max: 64)
            try self.validate(self.modelVersion, name: "modelVersion", parent: name, min: 1)
            try self.validate(self.modelVersion, name: "modelVersion", parent: name, pattern: "^[a-zA-Z0-9\\ \\_\\.]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case latestInference = "LatestInference"
            case latestSampleTime = "LatestSampleTime"
            case modelMetrics = "ModelMetrics"
            case modelName = "ModelName"
            case modelVersion = "ModelVersion"
        }
    }

    public struct SendHeartbeatRequest: AWSEncodableShape {
        /// For internal use. Returns a list of SageMaker Edge Manager agent operating metrics.
        public let agentMetrics: [EdgeMetric]?
        /// Returns the version of the agent.
        public let agentVersion: String
        /// Returns the result of a deployment on the device.
        public let deploymentResult: DeploymentResult?
        /// The name of the fleet that the device belongs to.
        public let deviceFleetName: String
        /// The unique name of the device.
        public let deviceName: String
        /// Returns a list of models deployed on the the device.
        public let models: [Model]?

        public init(agentMetrics: [EdgeMetric]? = nil, agentVersion: String, deploymentResult: DeploymentResult? = nil, deviceFleetName: String, deviceName: String, models: [Model]? = nil) {
            self.agentMetrics = agentMetrics
            self.agentVersion = agentVersion
            self.deploymentResult = deploymentResult
            self.deviceFleetName = deviceFleetName
            self.deviceName = deviceName
            self.models = models
        }

        public func validate(name: String) throws {
            try self.agentMetrics?.forEach {
                try $0.validate(name: "\(name).agentMetrics[]")
            }
            try self.validate(self.agentVersion, name: "agentVersion", parent: name, max: 64)
            try self.validate(self.agentVersion, name: "agentVersion", parent: name, min: 1)
            try self.validate(self.agentVersion, name: "agentVersion", parent: name, pattern: "^[a-zA-Z0-9\\ \\_\\.]+$")
            try self.deploymentResult?.validate(name: "\(name).deploymentResult")
            try self.validate(self.deviceFleetName, name: "deviceFleetName", parent: name, max: 63)
            try self.validate(self.deviceFleetName, name: "deviceFleetName", parent: name, min: 1)
            try self.validate(self.deviceFleetName, name: "deviceFleetName", parent: name, pattern: "^[a-zA-Z0-9](-*_*[a-zA-Z0-9])*$")
            try self.validate(self.deviceName, name: "deviceName", parent: name, max: 63)
            try self.validate(self.deviceName, name: "deviceName", parent: name, min: 1)
            try self.validate(self.deviceName, name: "deviceName", parent: name, pattern: "^[a-zA-Z0-9](-*_*[a-zA-Z0-9])*$")
            try self.models?.forEach {
                try $0.validate(name: "\(name).models[]")
            }
        }

        private enum CodingKeys: String, CodingKey {
            case agentMetrics = "AgentMetrics"
            case agentVersion = "AgentVersion"
            case deploymentResult = "DeploymentResult"
            case deviceFleetName = "DeviceFleetName"
            case deviceName = "DeviceName"
            case models = "Models"
        }
    }
}
