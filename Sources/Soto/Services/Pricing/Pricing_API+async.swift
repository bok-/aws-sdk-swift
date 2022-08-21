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

#if compiler(>=5.5.2) && canImport(_Concurrency)

import SotoCore

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Pricing {
    // MARK: Async API Calls

    /// Returns the metadata for one service or a list of the metadata for all services. Use this without a service code to get the service codes for all services. Use it with a service code, such as AmazonEC2, to get information specific to  that service, such as the attribute  names available for that service. For example, some of the attribute names available for EC2 are  volumeType, maxIopsVolume, operation, locationType, and instanceCapacity10xlarge.
    public func describeServices(_ input: DescribeServicesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServicesResponse {
        return try await self.client.execute(operation: "DescribeServices", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of attribute values. Attributes are similar to the details  in a Price List API offer file. For a list of available attributes, see  Offer File Definitions in the Billing and Cost Management User Guide.
    public func getAttributeValues(_ input: GetAttributeValuesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAttributeValuesResponse {
        return try await self.client.execute(operation: "GetAttributeValues", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of all products that match the filter criteria.
    public func getProducts(_ input: GetProductsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetProductsResponse {
        return try await self.client.execute(operation: "GetProducts", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
