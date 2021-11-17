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

extension DatabaseMigrationService {
    /// Wait until testing endpoint is deleted.
    public func waitUntilEndpointDeleted(
        _ input: DescribeEndpointsMessage,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSErrorCodeMatcher("ResourceNotFoundFault")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("endpoints[].status", expected: "active")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("endpoints[].status", expected: "creating")),
            ],
            minDelayTime: .seconds(5),
            command: describeEndpoints
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    /// Wait until DMS replication instance is available.
    public func waitUntilReplicationInstanceAvailable(
        _ input: DescribeReplicationInstancesMessage,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("replicationInstances[].replicationInstanceStatus", expected: "available")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("replicationInstances[].replicationInstanceStatus", expected: "deleting")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("replicationInstances[].replicationInstanceStatus", expected: "incompatible-credentials")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("replicationInstances[].replicationInstanceStatus", expected: "incompatible-network")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("replicationInstances[].replicationInstanceStatus", expected: "inaccessible-encryption-credentials")),
            ],
            minDelayTime: .seconds(60),
            command: describeReplicationInstances
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    /// Wait until DMS replication instance is deleted.
    public func waitUntilReplicationInstanceDeleted(
        _ input: DescribeReplicationInstancesMessage,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("replicationInstances[].replicationInstanceStatus", expected: "available")),
                .init(state: .success, matcher: AWSErrorCodeMatcher("ResourceNotFoundFault")),
            ],
            minDelayTime: .seconds(15),
            command: describeReplicationInstances
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    /// Wait until DMS replication task is deleted.
    public func waitUntilReplicationTaskDeleted(
        _ input: DescribeReplicationTasksMessage,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("replicationTasks[].status", expected: "ready")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("replicationTasks[].status", expected: "creating")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("replicationTasks[].status", expected: "stopped")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("replicationTasks[].status", expected: "running")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("replicationTasks[].status", expected: "failed")),
                .init(state: .success, matcher: AWSErrorCodeMatcher("ResourceNotFoundFault")),
            ],
            minDelayTime: .seconds(15),
            command: describeReplicationTasks
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    /// Wait until DMS replication task is ready.
    public func waitUntilReplicationTaskReady(
        _ input: DescribeReplicationTasksMessage,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("replicationTasks[].status", expected: "ready")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("replicationTasks[].status", expected: "starting")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("replicationTasks[].status", expected: "running")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("replicationTasks[].status", expected: "stopping")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("replicationTasks[].status", expected: "stopped")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("replicationTasks[].status", expected: "failed")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("replicationTasks[].status", expected: "modifying")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("replicationTasks[].status", expected: "testing")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("replicationTasks[].status", expected: "deleting")),
            ],
            minDelayTime: .seconds(15),
            command: describeReplicationTasks
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    /// Wait until DMS replication task is running.
    public func waitUntilReplicationTaskRunning(
        _ input: DescribeReplicationTasksMessage,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("replicationTasks[].status", expected: "running")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("replicationTasks[].status", expected: "ready")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("replicationTasks[].status", expected: "creating")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("replicationTasks[].status", expected: "stopping")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("replicationTasks[].status", expected: "stopped")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("replicationTasks[].status", expected: "failed")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("replicationTasks[].status", expected: "modifying")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("replicationTasks[].status", expected: "testing")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("replicationTasks[].status", expected: "deleting")),
            ],
            minDelayTime: .seconds(15),
            command: describeReplicationTasks
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    /// Wait until DMS replication task is stopped.
    public func waitUntilReplicationTaskStopped(
        _ input: DescribeReplicationTasksMessage,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("replicationTasks[].status", expected: "stopped")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("replicationTasks[].status", expected: "ready")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("replicationTasks[].status", expected: "creating")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("replicationTasks[].status", expected: "starting")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("replicationTasks[].status", expected: "failed")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("replicationTasks[].status", expected: "modifying")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("replicationTasks[].status", expected: "testing")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("replicationTasks[].status", expected: "deleting")),
            ],
            minDelayTime: .seconds(15),
            command: describeReplicationTasks
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    /// Wait until testing connection succeeds.
    public func waitUntilTestConnectionSucceeds(
        _ input: DescribeConnectionsMessage,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("connections[].status", expected: "successful")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("connections[].status", expected: "failed")),
            ],
            minDelayTime: .seconds(5),
            command: describeConnections
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}