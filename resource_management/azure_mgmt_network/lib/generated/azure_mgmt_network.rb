# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require 'generated/azure_mgmt_network/module_definition'
require 'generated/azure_mgmt_network/version'
require 'ms_rest_azure'

module Azure::ARM::Network
  autoload :ApplicationGateways,                                'generated/azure_mgmt_network/application_gateways.rb'
  autoload :ExpressRouteCircuitAuthorizations,                  'generated/azure_mgmt_network/express_route_circuit_authorizations.rb'
  autoload :ExpressRouteCircuitPeerings,                        'generated/azure_mgmt_network/express_route_circuit_peerings.rb'
  autoload :ExpressRouteCircuits,                               'generated/azure_mgmt_network/express_route_circuits.rb'
  autoload :ExpressRouteServiceProviders,                       'generated/azure_mgmt_network/express_route_service_providers.rb'
  autoload :LoadBalancers,                                      'generated/azure_mgmt_network/load_balancers.rb'
  autoload :LocalNetworkGateways,                               'generated/azure_mgmt_network/local_network_gateways.rb'
  autoload :NetworkInterfaces,                                  'generated/azure_mgmt_network/network_interfaces.rb'
  autoload :NetworkSecurityGroups,                              'generated/azure_mgmt_network/network_security_groups.rb'
  autoload :PublicIPAddresses,                                  'generated/azure_mgmt_network/public_ipaddresses.rb'
  autoload :RouteTables,                                        'generated/azure_mgmt_network/route_tables.rb'
  autoload :Routes,                                             'generated/azure_mgmt_network/routes.rb'
  autoload :SecurityRules,                                      'generated/azure_mgmt_network/security_rules.rb'
  autoload :Subnets,                                            'generated/azure_mgmt_network/subnets.rb'
  autoload :Usages,                                             'generated/azure_mgmt_network/usages.rb'
  autoload :VirtualNetworkGatewayConnections,                   'generated/azure_mgmt_network/virtual_network_gateway_connections.rb'
  autoload :VirtualNetworkGateways,                             'generated/azure_mgmt_network/virtual_network_gateways.rb'
  autoload :VirtualNetworks,                                    'generated/azure_mgmt_network/virtual_networks.rb'
  autoload :NetworkManagementClient,                            'generated/azure_mgmt_network/network_management_client.rb'

  module Models
    autoload :ApplicationGatewaySku,                              'generated/azure_mgmt_network/models/application_gateway_sku.rb'
    autoload :ApplicationGatewayBackendAddress,                   'generated/azure_mgmt_network/models/application_gateway_backend_address.rb'
    autoload :NetworkInterfaceDnsSettings,                        'generated/azure_mgmt_network/models/network_interface_dns_settings.rb'
    autoload :PublicIPAddressDnsSettings,                         'generated/azure_mgmt_network/models/public_ipaddress_dns_settings.rb'
    autoload :ApplicationGatewayListResult,                       'generated/azure_mgmt_network/models/application_gateway_list_result.rb'
    autoload :AuthorizationListResult,                            'generated/azure_mgmt_network/models/authorization_list_result.rb'
    autoload :ExpressRouteCircuitPeeringConfig,                   'generated/azure_mgmt_network/models/express_route_circuit_peering_config.rb'
    autoload :ExpressRouteCircuitStats,                           'generated/azure_mgmt_network/models/express_route_circuit_stats.rb'
    autoload :ExpressRouteCircuitPeeringListResult,               'generated/azure_mgmt_network/models/express_route_circuit_peering_list_result.rb'
    autoload :ExpressRouteCircuitSku,                             'generated/azure_mgmt_network/models/express_route_circuit_sku.rb'
    autoload :ExpressRouteCircuitServiceProviderProperties,       'generated/azure_mgmt_network/models/express_route_circuit_service_provider_properties.rb'
    autoload :ExpressRouteCircuitArpTable,                        'generated/azure_mgmt_network/models/express_route_circuit_arp_table.rb'
    autoload :ExpressRouteCircuitsArpTableListResult,             'generated/azure_mgmt_network/models/express_route_circuits_arp_table_list_result.rb'
    autoload :ExpressRouteCircuitRoutesTable,                     'generated/azure_mgmt_network/models/express_route_circuit_routes_table.rb'
    autoload :ExpressRouteCircuitsRoutesTableListResult,          'generated/azure_mgmt_network/models/express_route_circuits_routes_table_list_result.rb'
    autoload :ExpressRouteCircuitRoutesTableSummary,              'generated/azure_mgmt_network/models/express_route_circuit_routes_table_summary.rb'
    autoload :ExpressRouteCircuitsRoutesTableSummaryListResult,   'generated/azure_mgmt_network/models/express_route_circuits_routes_table_summary_list_result.rb'
    autoload :ExpressRouteCircuitListResult,                      'generated/azure_mgmt_network/models/express_route_circuit_list_result.rb'
    autoload :ExpressRouteServiceProviderBandwidthsOffered,       'generated/azure_mgmt_network/models/express_route_service_provider_bandwidths_offered.rb'
    autoload :ExpressRouteServiceProviderListResult,              'generated/azure_mgmt_network/models/express_route_service_provider_list_result.rb'
    autoload :LoadBalancerListResult,                             'generated/azure_mgmt_network/models/load_balancer_list_result.rb'
    autoload :AddressSpace,                                       'generated/azure_mgmt_network/models/address_space.rb'
    autoload :BgpSettings,                                        'generated/azure_mgmt_network/models/bgp_settings.rb'
    autoload :LocalNetworkGatewayListResult,                      'generated/azure_mgmt_network/models/local_network_gateway_list_result.rb'
    autoload :NetworkInterfaceListResult,                         'generated/azure_mgmt_network/models/network_interface_list_result.rb'
    autoload :NetworkSecurityGroupListResult,                     'generated/azure_mgmt_network/models/network_security_group_list_result.rb'
    autoload :PublicIPAddressListResult,                          'generated/azure_mgmt_network/models/public_ipaddress_list_result.rb'
    autoload :RouteTableListResult,                               'generated/azure_mgmt_network/models/route_table_list_result.rb'
    autoload :RouteListResult,                                    'generated/azure_mgmt_network/models/route_list_result.rb'
    autoload :SecurityRuleListResult,                             'generated/azure_mgmt_network/models/security_rule_list_result.rb'
    autoload :SubnetListResult,                                   'generated/azure_mgmt_network/models/subnet_list_result.rb'
    autoload :UsageName,                                          'generated/azure_mgmt_network/models/usage_name.rb'
    autoload :Usage,                                              'generated/azure_mgmt_network/models/usage.rb'
    autoload :UsagesListResult,                                   'generated/azure_mgmt_network/models/usages_list_result.rb'
    autoload :VirtualNetworkGatewaySku,                           'generated/azure_mgmt_network/models/virtual_network_gateway_sku.rb'
    autoload :VpnClientConfiguration,                             'generated/azure_mgmt_network/models/vpn_client_configuration.rb'
    autoload :VpnClientParameters,                                'generated/azure_mgmt_network/models/vpn_client_parameters.rb'
    autoload :ConnectionSharedKeyResult,                          'generated/azure_mgmt_network/models/connection_shared_key_result.rb'
    autoload :VirtualNetworkGatewayConnectionListResult,          'generated/azure_mgmt_network/models/virtual_network_gateway_connection_list_result.rb'
    autoload :ConnectionResetSharedKey,                           'generated/azure_mgmt_network/models/connection_reset_shared_key.rb'
    autoload :ConnectionSharedKey,                                'generated/azure_mgmt_network/models/connection_shared_key.rb'
    autoload :VirtualNetworkGatewayListResult,                    'generated/azure_mgmt_network/models/virtual_network_gateway_list_result.rb'
    autoload :DhcpOptions,                                        'generated/azure_mgmt_network/models/dhcp_options.rb'
    autoload :VirtualNetworkListResult,                           'generated/azure_mgmt_network/models/virtual_network_list_result.rb'
    autoload :DnsNameAvailabilityResult,                          'generated/azure_mgmt_network/models/dns_name_availability_result.rb'
    autoload :ErrorDetails,                                       'generated/azure_mgmt_network/models/error_details.rb'
    autoload :Error,                                              'generated/azure_mgmt_network/models/error.rb'
    autoload :AzureAsyncOperationResult,                          'generated/azure_mgmt_network/models/azure_async_operation_result.rb'
    autoload :ApplicationGatewayIPConfiguration,                  'generated/azure_mgmt_network/models/application_gateway_ipconfiguration.rb'
    autoload :ApplicationGatewaySslCertificate,                   'generated/azure_mgmt_network/models/application_gateway_ssl_certificate.rb'
    autoload :ApplicationGatewayFrontendIPConfiguration,          'generated/azure_mgmt_network/models/application_gateway_frontend_ipconfiguration.rb'
    autoload :ApplicationGatewayFrontendPort,                     'generated/azure_mgmt_network/models/application_gateway_frontend_port.rb'
    autoload :NetworkInterfaceIPConfiguration,                    'generated/azure_mgmt_network/models/network_interface_ipconfiguration.rb'
    autoload :ApplicationGatewayBackendAddressPool,               'generated/azure_mgmt_network/models/application_gateway_backend_address_pool.rb'
    autoload :BackendAddressPool,                                 'generated/azure_mgmt_network/models/backend_address_pool.rb'
    autoload :InboundNatRule,                                     'generated/azure_mgmt_network/models/inbound_nat_rule.rb'
    autoload :Subnet,                                             'generated/azure_mgmt_network/models/subnet.rb'
    autoload :NetworkSecurityGroup,                               'generated/azure_mgmt_network/models/network_security_group.rb'
    autoload :SecurityRule,                                       'generated/azure_mgmt_network/models/security_rule.rb'
    autoload :NetworkInterface,                                   'generated/azure_mgmt_network/models/network_interface.rb'
    autoload :RouteTable,                                         'generated/azure_mgmt_network/models/route_table.rb'
    autoload :Route,                                              'generated/azure_mgmt_network/models/route.rb'
    autoload :IPConfiguration,                                    'generated/azure_mgmt_network/models/ipconfiguration.rb'
    autoload :PublicIPAddress,                                    'generated/azure_mgmt_network/models/public_ipaddress.rb'
    autoload :ApplicationGatewayBackendHttpSettings,              'generated/azure_mgmt_network/models/application_gateway_backend_http_settings.rb'
    autoload :ApplicationGatewayHttpListener,                     'generated/azure_mgmt_network/models/application_gateway_http_listener.rb'
    autoload :ApplicationGatewayPathRule,                         'generated/azure_mgmt_network/models/application_gateway_path_rule.rb'
    autoload :ApplicationGatewayProbe,                            'generated/azure_mgmt_network/models/application_gateway_probe.rb'
    autoload :ApplicationGatewayRequestRoutingRule,               'generated/azure_mgmt_network/models/application_gateway_request_routing_rule.rb'
    autoload :ApplicationGatewayUrlPathMap,                       'generated/azure_mgmt_network/models/application_gateway_url_path_map.rb'
    autoload :ApplicationGateway,                                 'generated/azure_mgmt_network/models/application_gateway.rb'
    autoload :ExpressRouteCircuitAuthorization,                   'generated/azure_mgmt_network/models/express_route_circuit_authorization.rb'
    autoload :ExpressRouteCircuitPeering,                         'generated/azure_mgmt_network/models/express_route_circuit_peering.rb'
    autoload :ExpressRouteCircuit,                                'generated/azure_mgmt_network/models/express_route_circuit.rb'
    autoload :ExpressRouteServiceProvider,                        'generated/azure_mgmt_network/models/express_route_service_provider.rb'
    autoload :FrontendIPConfiguration,                            'generated/azure_mgmt_network/models/frontend_ipconfiguration.rb'
    autoload :LoadBalancingRule,                                  'generated/azure_mgmt_network/models/load_balancing_rule.rb'
    autoload :Probe,                                              'generated/azure_mgmt_network/models/probe.rb'
    autoload :InboundNatPool,                                     'generated/azure_mgmt_network/models/inbound_nat_pool.rb'
    autoload :OutboundNatRule,                                    'generated/azure_mgmt_network/models/outbound_nat_rule.rb'
    autoload :LoadBalancer,                                       'generated/azure_mgmt_network/models/load_balancer.rb'
    autoload :LocalNetworkGateway,                                'generated/azure_mgmt_network/models/local_network_gateway.rb'
    autoload :VirtualNetworkGatewayIPConfiguration,               'generated/azure_mgmt_network/models/virtual_network_gateway_ipconfiguration.rb'
    autoload :VpnClientRootCertificate,                           'generated/azure_mgmt_network/models/vpn_client_root_certificate.rb'
    autoload :VpnClientRevokedCertificate,                        'generated/azure_mgmt_network/models/vpn_client_revoked_certificate.rb'
    autoload :VirtualNetworkGateway,                              'generated/azure_mgmt_network/models/virtual_network_gateway.rb'
    autoload :VirtualNetworkGatewayConnection,                    'generated/azure_mgmt_network/models/virtual_network_gateway_connection.rb'
    autoload :VirtualNetwork,                                     'generated/azure_mgmt_network/models/virtual_network.rb'
    autoload :ApplicationGatewaySkuName,                          'generated/azure_mgmt_network/models/application_gateway_sku_name.rb'
    autoload :ApplicationGatewayTier,                             'generated/azure_mgmt_network/models/application_gateway_tier.rb'
    autoload :IPAllocationMethod,                                 'generated/azure_mgmt_network/models/ipallocation_method.rb'
    autoload :TransportProtocol,                                  'generated/azure_mgmt_network/models/transport_protocol.rb'
    autoload :IPVersion,                                          'generated/azure_mgmt_network/models/ipversion.rb'
    autoload :SecurityRuleProtocol,                               'generated/azure_mgmt_network/models/security_rule_protocol.rb'
    autoload :SecurityRuleAccess,                                 'generated/azure_mgmt_network/models/security_rule_access.rb'
    autoload :SecurityRuleDirection,                              'generated/azure_mgmt_network/models/security_rule_direction.rb'
    autoload :RouteNextHopType,                                   'generated/azure_mgmt_network/models/route_next_hop_type.rb'
    autoload :ApplicationGatewayProtocol,                         'generated/azure_mgmt_network/models/application_gateway_protocol.rb'
    autoload :ApplicationGatewayCookieBasedAffinity,              'generated/azure_mgmt_network/models/application_gateway_cookie_based_affinity.rb'
    autoload :ApplicationGatewayRequestRoutingRuleType,           'generated/azure_mgmt_network/models/application_gateway_request_routing_rule_type.rb'
    autoload :ApplicationGatewayOperationalState,                 'generated/azure_mgmt_network/models/application_gateway_operational_state.rb'
    autoload :AuthorizationUseStatus,                             'generated/azure_mgmt_network/models/authorization_use_status.rb'
    autoload :ExpressRouteCircuitPeeringAdvertisedPublicPrefixState, 'generated/azure_mgmt_network/models/express_route_circuit_peering_advertised_public_prefix_state.rb'
    autoload :ExpressRouteCircuitPeeringType,                     'generated/azure_mgmt_network/models/express_route_circuit_peering_type.rb'
    autoload :ExpressRouteCircuitPeeringState,                    'generated/azure_mgmt_network/models/express_route_circuit_peering_state.rb'
    autoload :ExpressRouteCircuitSkuTier,                         'generated/azure_mgmt_network/models/express_route_circuit_sku_tier.rb'
    autoload :ExpressRouteCircuitSkuFamily,                       'generated/azure_mgmt_network/models/express_route_circuit_sku_family.rb'
    autoload :ServiceProviderProvisioningState,                   'generated/azure_mgmt_network/models/service_provider_provisioning_state.rb'
    autoload :LoadDistribution,                                   'generated/azure_mgmt_network/models/load_distribution.rb'
    autoload :ProbeProtocol,                                      'generated/azure_mgmt_network/models/probe_protocol.rb'
    autoload :VirtualNetworkGatewayType,                          'generated/azure_mgmt_network/models/virtual_network_gateway_type.rb'
    autoload :VpnType,                                            'generated/azure_mgmt_network/models/vpn_type.rb'
    autoload :VirtualNetworkGatewaySkuName,                       'generated/azure_mgmt_network/models/virtual_network_gateway_sku_name.rb'
    autoload :VirtualNetworkGatewaySkuTier,                       'generated/azure_mgmt_network/models/virtual_network_gateway_sku_tier.rb'
    autoload :ProcessorArchitecture,                              'generated/azure_mgmt_network/models/processor_architecture.rb'
    autoload :VirtualNetworkGatewayConnectionType,                'generated/azure_mgmt_network/models/virtual_network_gateway_connection_type.rb'
    autoload :VirtualNetworkGatewayConnectionStatus,              'generated/azure_mgmt_network/models/virtual_network_gateway_connection_status.rb'
    autoload :NetworkOperationStatus,                             'generated/azure_mgmt_network/models/network_operation_status.rb'
  end
end
