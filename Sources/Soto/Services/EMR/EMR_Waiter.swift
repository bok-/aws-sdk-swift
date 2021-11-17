//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
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

import SotoCore

// MARK: Waiters

extension EMR {
    public func waitUntilClusterRunning(
        _ input: DescribeClusterInput,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("cluster.status.state", expected: "RUNNING")),
                .init(state: .success, matcher: try! JMESPathMatcher("cluster.status.state", expected: "WAITING")),
                .init(state: .failure, matcher: try! JMESPathMatcher("cluster.status.state", expected: "TERMINATING")),
                .init(state: .failure, matcher: try! JMESPathMatcher("cluster.status.state", expected: "TERMINATED")),
                .init(state: .failure, matcher: try! JMESPathMatcher("cluster.status.state", expected: "TERMINATED_WITH_ERRORS")),
            ],
            minDelayTime: .seconds(30),
            command: describeCluster
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilClusterTerminated(
        _ input: DescribeClusterInput,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("cluster.status.state", expected: "TERMINATED")),
                .init(state: .failure, matcher: try! JMESPathMatcher("cluster.status.state", expected: "TERMINATED_WITH_ERRORS")),
            ],
            minDelayTime: .seconds(30),
            command: describeCluster
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilStepComplete(
        _ input: DescribeStepInput,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("step.status.state", expected: "COMPLETED")),
                .init(state: .failure, matcher: try! JMESPathMatcher("step.status.state", expected: "FAILED")),
                .init(state: .failure, matcher: try! JMESPathMatcher("step.status.state", expected: "CANCELLED")),
            ],
            minDelayTime: .seconds(30),
            command: describeStep
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}