{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE NoImplicitPrelude          #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE RecordWildCards            #-}
{-# LANGUAGE TypeFamilies               #-}

-- {-# OPTIONS_GHC -fno-warn-unused-imports #-}
-- {-# OPTIONS_GHC -fno-warn-unused-binds  #-} doesnt work if wall is used
{-# OPTIONS_GHC -w #-}

-- Module      : Network.AWS.EC2.DescribeSnapshotAttribute
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | Describes the specified attribute of the specified snapshot. You can
-- specify only one attribute at a time. For more information about Amazon EBS
-- snapshots, see Amazon EBS Snapshots in the Amazon Elastic Compute Cloud
-- User Guide.
module Network.AWS.EC2.DescribeSnapshotAttribute
    (
    -- * Request
      DescribeSnapshotAttribute
    -- ** Request constructor
    , describeSnapshotAttribute
    -- ** Request lenses
    , dsaAttribute
    , dsaDryRun
    , dsaSnapshotId

    -- * Response
    , DescribeSnapshotAttributeResult
    -- ** Response constructor
    , describeSnapshotAttributeResult
    -- ** Response lenses
    , dsarCreateVolumePermissions
    , dsarProductCodes
    , dsarSnapshotId
    ) where

import Network.AWS.Prelude
import Network.AWS.Request.Query
import Network.AWS.EC2.Types

data DescribeSnapshotAttribute = DescribeSnapshotAttribute
    { _dsaAttribute  :: Text
    , _dsaDryRun     :: Maybe Bool
    , _dsaSnapshotId :: Text
    } deriving (Eq, Ord, Show, Generic)

-- | 'DescribeSnapshotAttribute' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dsaAttribute' @::@ 'Text'
--
-- * 'dsaDryRun' @::@ 'Maybe' 'Bool'
--
-- * 'dsaSnapshotId' @::@ 'Text'
--
describeSnapshotAttribute :: Text -- ^ 'dsaSnapshotId'
                          -> Text -- ^ 'dsaAttribute'
                          -> DescribeSnapshotAttribute
describeSnapshotAttribute p1 p2 = DescribeSnapshotAttribute
    { _dsaSnapshotId = p1
    , _dsaAttribute  = p2
    , _dsaDryRun     = Nothing
    }

-- | The snapshot attribute you would like to view.
dsaAttribute :: Lens' DescribeSnapshotAttribute Text
dsaAttribute = lens _dsaAttribute (\s a -> s { _dsaAttribute = a })

dsaDryRun :: Lens' DescribeSnapshotAttribute (Maybe Bool)
dsaDryRun = lens _dsaDryRun (\s a -> s { _dsaDryRun = a })

-- | The ID of the Amazon EBS snapshot.
dsaSnapshotId :: Lens' DescribeSnapshotAttribute Text
dsaSnapshotId = lens _dsaSnapshotId (\s a -> s { _dsaSnapshotId = a })

instance ToPath DescribeSnapshotAttribute where
    toPath = const "/"

instance ToQuery DescribeSnapshotAttribute

data DescribeSnapshotAttributeResult = DescribeSnapshotAttributeResult
    { _dsarCreateVolumePermissions :: [CreateVolumePermission]
    , _dsarProductCodes            :: [ProductCode]
    , _dsarSnapshotId              :: Maybe Text
    } deriving (Eq, Show, Generic)

-- | 'DescribeSnapshotAttributeResult' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dsarCreateVolumePermissions' @::@ ['CreateVolumePermission']
--
-- * 'dsarProductCodes' @::@ ['ProductCode']
--
-- * 'dsarSnapshotId' @::@ 'Maybe' 'Text'
--
describeSnapshotAttributeResult :: DescribeSnapshotAttributeResult
describeSnapshotAttributeResult = DescribeSnapshotAttributeResult
    { _dsarSnapshotId              = Nothing
    , _dsarCreateVolumePermissions = mempty
    , _dsarProductCodes            = mempty
    }

-- | A list of permissions for creating volumes from the snapshot.
dsarCreateVolumePermissions :: Lens' DescribeSnapshotAttributeResult [CreateVolumePermission]
dsarCreateVolumePermissions =
    lens _dsarCreateVolumePermissions
        (\s a -> s { _dsarCreateVolumePermissions = a })

-- | A list of product codes.
dsarProductCodes :: Lens' DescribeSnapshotAttributeResult [ProductCode]
dsarProductCodes = lens _dsarProductCodes (\s a -> s { _dsarProductCodes = a })

-- | The ID of the Amazon EBS snapshot.
dsarSnapshotId :: Lens' DescribeSnapshotAttributeResult (Maybe Text)
dsarSnapshotId = lens _dsarSnapshotId (\s a -> s { _dsarSnapshotId = a })

instance AWSRequest DescribeSnapshotAttribute where
    type Sv DescribeSnapshotAttribute = EC2
    type Rs DescribeSnapshotAttribute = DescribeSnapshotAttributeResult

    request  = post "DescribeSnapshotAttribute"
    response = const . xmlResponse $ \h x -> DescribeSnapshotAttributeResult
        <$> x %| "createVolumePermission"
        <*> x %| "productCodes"
        <*> x %| "snapshotId"
