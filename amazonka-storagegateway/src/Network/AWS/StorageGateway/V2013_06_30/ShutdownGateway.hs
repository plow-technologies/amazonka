{-# LANGUAGE DeriveGeneric             #-}
{-# LANGUAGE FlexibleInstances         #-}
{-# LANGUAGE NoImplicitPrelude         #-}
{-# LANGUAGE OverloadedStrings         #-}
{-# LANGUAGE RecordWildCards           #-}
{-# LANGUAGE TemplateHaskell           #-}
{-# LANGUAGE TypeFamilies              #-}

{-# OPTIONS_GHC -fno-warn-unused-binds #-}

-- Module      : Network.AWS.StorageGateway.V2013_06_30.ShutdownGateway
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | This operation shuts down a gateway. To specify which gateway to shut down,
-- use the Amazon Resource Name (ARN) of the gateway in the body of your
-- request. The operation shuts down the gateway service component running in
-- the storage gateway's virtual machine (VM) and not the VM. If you want to
-- shut down the VM, it is recommended that you first shut down the gateway
-- component in the VM to avoid unpredictable conditions. After the gateway is
-- shutdown, you cannot call any other API except StartGateway,
-- DescribeGatewayInformation, and ListGateways. For more information, see
-- ActivateGateway. Your applications cannot read from or write to the
-- gateway's storage volumes, and there are no snapshots taken. When you make
-- a shutdown request, you will get a 200 OK success response immediately.
-- However, it might take some time for the gateway to shut down. You can call
-- the DescribeGatewayInformation API to check the status. For more
-- information, see ActivateGateway. If do not intend to use the gateway
-- again, you must delete the gateway (using DeleteGateway) to no longer pay
-- software charges associated with the gateway. Example Request The following
-- example shows a request that shuts down a gateway. POST / HTTP/1.1 Host:
-- storagegateway.us-east-1.amazonaws.com x-amz-Date: 20120425T120000Z
-- Authorization: CSOC7TJPLR0OOKIRLGOHVAICUFVV4KQNSO5AEMVJF66Q9ASUAAJG
-- Content-type: application/x-amz-json-1.1 x-amz-target:
-- StorageGateway_20120630.ShutdownGateway { "GatewayARN":
-- "arn:aws:storagegateway:us-east-1:111122223333:gateway/mygateway" }
-- HTTP/1.1 200 OK x-amzn-RequestId:
-- CSOC7TJPLR0OOKIRLGOHVAICUFVV4KQNSO5AEMVJF66Q9ASUAAJG Date: Wed, 25 Apr 2012
-- 12:00:02 GMT Content-type: application/x-amz-json-1.1 Content-length: 80 {
-- "GatewayARN":
-- "arn:aws:storagegateway:us-east-1:111122223333:gateway/mygateway" }.
module Network.AWS.StorageGateway.V2013_06_30.ShutdownGateway where

import Control.Lens.TH (makeLenses)
import Network.AWS.Request.JSON
import Network.AWS.StorageGateway.V2013_06_30.Types
import Network.AWS.Prelude
import qualified Network.AWS.Types.Map as Map

data ShutdownGateway = ShutdownGateway
    { _sgjGatewayARN :: Text
      -- ^ The Amazon Resource Name (ARN) of the gateway. Use the
      -- ListGateways operation to return a list of gateways for your
      -- account and region.
    } deriving (Show, Generic)

makeLenses ''ShutdownGateway

instance ToPath ShutdownGateway

instance ToQuery ShutdownGateway

instance ToHeaders ShutdownGateway

instance ToJSON ShutdownGateway

data ShutdownGatewayResponse = ShutdownGatewayResponse
    { _sgpGatewayARN :: Maybe Text
      -- ^ The Amazon Resource Name (ARN) of the gateway. Use the
      -- ListGateways operation to return a list of gateways for your
      -- account and region.
    } deriving (Show, Generic)

makeLenses ''ShutdownGatewayResponse

instance FromJSON ShutdownGatewayResponse

instance AWSRequest ShutdownGateway where
    type Sv ShutdownGateway = StorageGateway
    type Rs ShutdownGateway = ShutdownGatewayResponse

    request = get
    response _ = jsonResponse
