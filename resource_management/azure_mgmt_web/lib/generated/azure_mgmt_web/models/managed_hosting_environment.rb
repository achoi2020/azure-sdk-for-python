# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Description of a managed hosting environment
    #
    class ManagedHostingEnvironment < MsRestAzure::Resource

      include MsRestAzure

      # @return [String] Name of the managed hosting environment
      attr_accessor :managed_hosting_environment_name

      # @return [String] Location of the managed hosting environment e.g.
      # "West US"
      attr_accessor :managed_hosting_environment_location

      # @return [ManagedHostingEnvironmentStatus] Current status of the
      # managed hosting environment. Possible values include: 'Preparing',
      # 'Ready', 'Deleting'
      attr_accessor :status

      # @return [VirtualNetworkProfile] Description of the managed hosting
      # environment's virtual network
      attr_accessor :virtual_network

      # @return [Integer] Number of ip ssl addresses reserved for the managed
      # hosting environment
      attr_accessor :ipssl_address_count

      # @return [String] DNS suffix of the managed hosting environment
      attr_accessor :dns_suffix

      # @return [String] Subscription of the managed hosting environment (read
      # only)
      attr_accessor :subscription_id

      # @return [String] Resource group of the managed hosting environment
      # (read only)
      attr_accessor :resource_group

      # @return [Boolean] True/false indicating whether the managed hosting
      # environment is healthy
      attr_accessor :environment_is_healthy

      # @return [String] Detailed message about with results of the last check
      # of the managed hosting environment
      attr_accessor :environment_status

      # @return [Boolean] True/false indicating whether the managed hosting
      # environment is suspended. The environment can be suspended e.g. when
      # the management endpoint is no longer available
      # (most likely because NSG blocked the incoming traffic)
      attr_accessor :suspended

      # @return [String] Resource id of the api management account associated
      # with this managed hosting environment (read only)
      attr_accessor :api_management_account


      #
      # Mapper for ManagedHostingEnvironment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ManagedHostingEnvironment',
          type: {
            name: 'Composite',
            class_name: 'ManagedHostingEnvironment',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              managed_hosting_environment_name: {
                required: false,
                serialized_name: 'properties.name',
                type: {
                  name: 'String'
                }
              },
              managed_hosting_environment_location: {
                required: false,
                serialized_name: 'properties.location',
                type: {
                  name: 'String'
                }
              },
              status: {
                required: false,
                serialized_name: 'properties.status',
                type: {
                  name: 'Enum',
                  module: 'ManagedHostingEnvironmentStatus'
                }
              },
              virtual_network: {
                required: false,
                serialized_name: 'properties.virtualNetwork',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualNetworkProfile'
                }
              },
              ipssl_address_count: {
                required: false,
                serialized_name: 'properties.ipsslAddressCount',
                type: {
                  name: 'Number'
                }
              },
              dns_suffix: {
                required: false,
                serialized_name: 'properties.dnsSuffix',
                type: {
                  name: 'String'
                }
              },
              subscription_id: {
                required: false,
                serialized_name: 'properties.subscriptionId',
                type: {
                  name: 'String'
                }
              },
              resource_group: {
                required: false,
                serialized_name: 'properties.resourceGroup',
                type: {
                  name: 'String'
                }
              },
              environment_is_healthy: {
                required: false,
                serialized_name: 'properties.environmentIsHealthy',
                type: {
                  name: 'Boolean'
                }
              },
              environment_status: {
                required: false,
                serialized_name: 'properties.environmentStatus',
                type: {
                  name: 'String'
                }
              },
              suspended: {
                required: false,
                serialized_name: 'properties.suspended',
                type: {
                  name: 'Boolean'
                }
              },
              api_management_account: {
                required: false,
                serialized_name: 'properties.apiManagementAccount',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
