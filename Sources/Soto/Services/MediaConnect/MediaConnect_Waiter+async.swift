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

// MARK: Waiters

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension MediaConnect {
    public func waitUntilFlowActive(
        _ input: DescribeFlowRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("flow.status", expected: "ACTIVE")),
                .init(state: .retry, matcher: try! JMESPathMatcher("flow.status", expected: "STARTING")),
                .init(state: .retry, matcher: try! JMESPathMatcher("flow.status", expected: "UPDATING")),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("InternalServerErrorException")),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("ServiceUnavailableException")),
                .init(state: .failure, matcher: try! JMESPathMatcher("flow.status", expected: "ERROR")),
            ],
            minDelayTime: .seconds(3),
            command: describeFlow
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilFlowDeleted(
        _ input: DescribeFlowRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSErrorCodeMatcher("NotFoundException")),
                .init(state: .retry, matcher: try! JMESPathMatcher("flow.status", expected: "DELETING")),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("InternalServerErrorException")),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("ServiceUnavailableException")),
                .init(state: .failure, matcher: try! JMESPathMatcher("flow.status", expected: "ERROR")),
            ],
            minDelayTime: .seconds(3),
            command: describeFlow
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilFlowStandby(
        _ input: DescribeFlowRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("flow.status", expected: "STANDBY")),
                .init(state: .retry, matcher: try! JMESPathMatcher("flow.status", expected: "STOPPING")),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("InternalServerErrorException")),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("ServiceUnavailableException")),
                .init(state: .failure, matcher: try! JMESPathMatcher("flow.status", expected: "ERROR")),
            ],
            minDelayTime: .seconds(3),
            command: describeFlow
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
