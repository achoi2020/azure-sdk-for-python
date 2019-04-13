# ------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
# -------------------------------------------------------------------------

from azure.core.pipeline import AsyncPipeline
from azure.core.pipeline.transport import AsyncioRequestsTransport

from ..utils import get_endpoint_from_connection_string
from .._generated.aio import AzureConfigurationClientImp
from ..azure_configuration_requests import AzConfigRequestsCredentialsPolicy
from ..azure_configuration_client_abstract import AzureConfigurationClientAbstract


class AzureConfigurationClient(AzureConfigurationClientAbstract):
    __doc__ = AzureConfigurationClientAbstract.__doc__

    def __init__(self, connection_string):

        base_url = "https://" + get_endpoint_from_connection_string(connection_string)
        self._impl = AzureConfigurationClientImp(connection_string, base_url)
        self._impl.pipeline = self._create_azconfig_pipeline()

    def _create_azconfig_pipeline(self):
        policies = [
            self._impl._config.user_agent_policy,  # UserAgent policy
            self._impl._config.logging_policy,  # HTTP request/response log
            AzConfigRequestsCredentialsPolicy(self._impl._config.credentials)
        ]

        return AsyncPipeline(
            AsyncioRequestsTransport(self._impl._config),  # Send HTTP request using requests
            policies
        )

    async def update_configuration_setting(
        self,
        key,
        value=None,
        content_type=None,
        tags=None,
        label=None,
        etag=None,
        **kwargs
    ):
        __doc__ = super().__doc__

        custom_headers = AzureConfigurationClientAbstract.prep_update_configuration_setting(key, etag, **kwargs)
        current_configuration_setting = await self._impl.get_configuration_setting(
            key, label
        )
        if value is not None:
            current_configuration_setting.value = value
        if content_type is not None:
            current_configuration_setting.content_type = content_type
        if tags is not None:
            current_configuration_setting.tags = tags
        return await self._impl.create_or_update_configuration_setting(
            configuration_setting=current_configuration_setting,
            key=key,
            label=label,
            custom_headers=custom_headers,
        )

