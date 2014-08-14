-- Module      : Network.AWS.AutoScaling.V2011_01_01
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | Auto Scaling allows you to scale your Amazon EC2 capacity up or down
-- automatically according to conditions you define. With Auto Scaling, you
-- can ensure that the number of Amazon EC2 instances you’re using increases
-- seamlessly during demand spikes to maintain performance, and decreases
-- automatically during demand lulls to minimize costs. Auto Scaling is
-- particularly well suited for applications that experience hourly, daily, or
-- weekly variability in usage. Auto Scaling is enabled by Amazon CloudWatch
-- and available at no additional charge beyond Amazon CloudWatch fees.
module Network.AWS.AutoScaling.V2011_01_01
    ( module Network.AWS.AutoScaling.V2011_01_01.AttachInstances
    , module Network.AWS.AutoScaling.V2011_01_01.CompleteLifecycleAction
    , module Network.AWS.AutoScaling.V2011_01_01.CreateAutoScalingGroup
    , module Network.AWS.AutoScaling.V2011_01_01.CreateLaunchConfiguration
    , module Network.AWS.AutoScaling.V2011_01_01.CreateOrUpdateTags
    , module Network.AWS.AutoScaling.V2011_01_01.DeleteAutoScalingGroup
    , module Network.AWS.AutoScaling.V2011_01_01.DeleteLaunchConfiguration
    , module Network.AWS.AutoScaling.V2011_01_01.DeleteLifecycleHook
    , module Network.AWS.AutoScaling.V2011_01_01.DeleteNotificationConfiguration
    , module Network.AWS.AutoScaling.V2011_01_01.DeletePolicy
    , module Network.AWS.AutoScaling.V2011_01_01.DeleteScheduledAction
    , module Network.AWS.AutoScaling.V2011_01_01.DeleteTags
    , module Network.AWS.AutoScaling.V2011_01_01.DescribeAccountLimits
    , module Network.AWS.AutoScaling.V2011_01_01.DescribeAdjustmentTypes
    , module Network.AWS.AutoScaling.V2011_01_01.DescribeAutoScalingGroups
    , module Network.AWS.AutoScaling.V2011_01_01.DescribeAutoScalingInstances
    , module Network.AWS.AutoScaling.V2011_01_01.DescribeAutoScalingNotificationTypes
    , module Network.AWS.AutoScaling.V2011_01_01.DescribeLaunchConfigurations
    , module Network.AWS.AutoScaling.V2011_01_01.DescribeLifecycleHookTypes
    , module Network.AWS.AutoScaling.V2011_01_01.DescribeLifecycleHooks
    , module Network.AWS.AutoScaling.V2011_01_01.DescribeMetricCollectionTypes
    , module Network.AWS.AutoScaling.V2011_01_01.DescribeNotificationConfigurations
    , module Network.AWS.AutoScaling.V2011_01_01.DescribePolicies
    , module Network.AWS.AutoScaling.V2011_01_01.DescribeScalingActivities
    , module Network.AWS.AutoScaling.V2011_01_01.DescribeScalingProcessTypes
    , module Network.AWS.AutoScaling.V2011_01_01.DescribeScheduledActions
    , module Network.AWS.AutoScaling.V2011_01_01.DescribeTags
    , module Network.AWS.AutoScaling.V2011_01_01.DescribeTerminationPolicyTypes
    , module Network.AWS.AutoScaling.V2011_01_01.DetachInstances
    , module Network.AWS.AutoScaling.V2011_01_01.DisableMetricsCollection
    , module Network.AWS.AutoScaling.V2011_01_01.EnableMetricsCollection
    , module Network.AWS.AutoScaling.V2011_01_01.EnterStandby
    , module Network.AWS.AutoScaling.V2011_01_01.ExecutePolicy
    , module Network.AWS.AutoScaling.V2011_01_01.ExitStandby
    , module Network.AWS.AutoScaling.V2011_01_01.PutLifecycleHook
    , module Network.AWS.AutoScaling.V2011_01_01.PutNotificationConfiguration
    , module Network.AWS.AutoScaling.V2011_01_01.PutScalingPolicy
    , module Network.AWS.AutoScaling.V2011_01_01.PutScheduledUpdateGroupAction
    , module Network.AWS.AutoScaling.V2011_01_01.RecordLifecycleActionHeartbeat
    , module Network.AWS.AutoScaling.V2011_01_01.ResumeProcesses
    , module Network.AWS.AutoScaling.V2011_01_01.SetDesiredCapacity
    , module Network.AWS.AutoScaling.V2011_01_01.SetInstanceHealth
    , module Network.AWS.AutoScaling.V2011_01_01.SuspendProcesses
    , module Network.AWS.AutoScaling.V2011_01_01.TerminateInstanceInAutoScalingGroup
    , module Network.AWS.AutoScaling.V2011_01_01.Types
    , module Network.AWS.AutoScaling.V2011_01_01.UpdateAutoScalingGroup
    ) where

import Network.AWS.AutoScaling.V2011_01_01.AttachInstances
import Network.AWS.AutoScaling.V2011_01_01.CompleteLifecycleAction
import Network.AWS.AutoScaling.V2011_01_01.CreateAutoScalingGroup
import Network.AWS.AutoScaling.V2011_01_01.CreateLaunchConfiguration
import Network.AWS.AutoScaling.V2011_01_01.CreateOrUpdateTags
import Network.AWS.AutoScaling.V2011_01_01.DeleteAutoScalingGroup
import Network.AWS.AutoScaling.V2011_01_01.DeleteLaunchConfiguration
import Network.AWS.AutoScaling.V2011_01_01.DeleteLifecycleHook
import Network.AWS.AutoScaling.V2011_01_01.DeleteNotificationConfiguration
import Network.AWS.AutoScaling.V2011_01_01.DeletePolicy
import Network.AWS.AutoScaling.V2011_01_01.DeleteScheduledAction
import Network.AWS.AutoScaling.V2011_01_01.DeleteTags
import Network.AWS.AutoScaling.V2011_01_01.DescribeAccountLimits
import Network.AWS.AutoScaling.V2011_01_01.DescribeAdjustmentTypes
import Network.AWS.AutoScaling.V2011_01_01.DescribeAutoScalingGroups
import Network.AWS.AutoScaling.V2011_01_01.DescribeAutoScalingInstances
import Network.AWS.AutoScaling.V2011_01_01.DescribeAutoScalingNotificationTypes
import Network.AWS.AutoScaling.V2011_01_01.DescribeLaunchConfigurations
import Network.AWS.AutoScaling.V2011_01_01.DescribeLifecycleHookTypes
import Network.AWS.AutoScaling.V2011_01_01.DescribeLifecycleHooks
import Network.AWS.AutoScaling.V2011_01_01.DescribeMetricCollectionTypes
import Network.AWS.AutoScaling.V2011_01_01.DescribeNotificationConfigurations
import Network.AWS.AutoScaling.V2011_01_01.DescribePolicies
import Network.AWS.AutoScaling.V2011_01_01.DescribeScalingActivities
import Network.AWS.AutoScaling.V2011_01_01.DescribeScalingProcessTypes
import Network.AWS.AutoScaling.V2011_01_01.DescribeScheduledActions
import Network.AWS.AutoScaling.V2011_01_01.DescribeTags
import Network.AWS.AutoScaling.V2011_01_01.DescribeTerminationPolicyTypes
import Network.AWS.AutoScaling.V2011_01_01.DetachInstances
import Network.AWS.AutoScaling.V2011_01_01.DisableMetricsCollection
import Network.AWS.AutoScaling.V2011_01_01.EnableMetricsCollection
import Network.AWS.AutoScaling.V2011_01_01.EnterStandby
import Network.AWS.AutoScaling.V2011_01_01.ExecutePolicy
import Network.AWS.AutoScaling.V2011_01_01.ExitStandby
import Network.AWS.AutoScaling.V2011_01_01.PutLifecycleHook
import Network.AWS.AutoScaling.V2011_01_01.PutNotificationConfiguration
import Network.AWS.AutoScaling.V2011_01_01.PutScalingPolicy
import Network.AWS.AutoScaling.V2011_01_01.PutScheduledUpdateGroupAction
import Network.AWS.AutoScaling.V2011_01_01.RecordLifecycleActionHeartbeat
import Network.AWS.AutoScaling.V2011_01_01.ResumeProcesses
import Network.AWS.AutoScaling.V2011_01_01.SetDesiredCapacity
import Network.AWS.AutoScaling.V2011_01_01.SetInstanceHealth
import Network.AWS.AutoScaling.V2011_01_01.SuspendProcesses
import Network.AWS.AutoScaling.V2011_01_01.TerminateInstanceInAutoScalingGroup
import Network.AWS.AutoScaling.V2011_01_01.Types
import Network.AWS.AutoScaling.V2011_01_01.UpdateAutoScalingGroup
