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

-- Module      : Network.AWS.EC2.ResetNetworkInterfaceAttribute
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | Resets a network interface attribute. You can specify only one attribute at
-- a time.
module Network.AWS.EC2.ResetNetworkInterfaceAttribute
    (
    -- * Request
      ResetNetworkInterfaceAttribute
    -- ** Request constructor
    , resetNetworkInterfaceAttribute
    -- ** Request lenses
    , rniaDryRun
    , rniaNetworkInterfaceId
    , rniaSourceDestCheck

    -- * Response
    , ResetNetworkInterfaceAttributeResponse
    -- ** Response constructor
    , resetNetworkInterfaceAttributeResponse
    ) where

import Network.AWS.Prelude
import Network.AWS.Request.Query
import Network.AWS.EC2.Types

data ResetNetworkInterfaceAttribute = ResetNetworkInterfaceAttribute
    { _rniaDryRun             :: Maybe Bool
    , _rniaNetworkInterfaceId :: Text
    , _rniaSourceDestCheck    :: Maybe Text
    } deriving (Eq, Ord, Show, Generic)

-- | 'ResetNetworkInterfaceAttribute' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'rniaDryRun' @::@ 'Maybe' 'Bool'
--
-- * 'rniaNetworkInterfaceId' @::@ 'Text'
--
-- * 'rniaSourceDestCheck' @::@ 'Maybe' 'Text'
--
resetNetworkInterfaceAttribute :: Text -- ^ 'rniaNetworkInterfaceId'
                               -> ResetNetworkInterfaceAttribute
resetNetworkInterfaceAttribute p1 = ResetNetworkInterfaceAttribute
    { _rniaNetworkInterfaceId = p1
    , _rniaDryRun             = Nothing
    , _rniaSourceDestCheck    = Nothing
    }

rniaDryRun :: Lens' ResetNetworkInterfaceAttribute (Maybe Bool)
rniaDryRun = lens _rniaDryRun (\s a -> s { _rniaDryRun = a })

-- | The ID of the network interface.
rniaNetworkInterfaceId :: Lens' ResetNetworkInterfaceAttribute Text
rniaNetworkInterfaceId =
    lens _rniaNetworkInterfaceId (\s a -> s { _rniaNetworkInterfaceId = a })

-- | The source/destination checking attribute. Resets the value to true.
rniaSourceDestCheck :: Lens' ResetNetworkInterfaceAttribute (Maybe Text)
rniaSourceDestCheck =
    lens _rniaSourceDestCheck (\s a -> s { _rniaSourceDestCheck = a })

instance ToPath ResetNetworkInterfaceAttribute where
    toPath = const "/"

instance ToQuery ResetNetworkInterfaceAttribute

data ResetNetworkInterfaceAttributeResponse = ResetNetworkInterfaceAttributeResponse

-- | 'ResetNetworkInterfaceAttributeResponse' constructor.
resetNetworkInterfaceAttributeResponse :: ResetNetworkInterfaceAttributeResponse
resetNetworkInterfaceAttributeResponse = ResetNetworkInterfaceAttributeResponse

instance AWSRequest ResetNetworkInterfaceAttribute where
    type Sv ResetNetworkInterfaceAttribute = EC2
    type Rs ResetNetworkInterfaceAttribute = ResetNetworkInterfaceAttributeResponse

    request  = post "ResetNetworkInterfaceAttribute"
    response = const (nullaryResponse ResetNetworkInterfaceAttributeResponse)
