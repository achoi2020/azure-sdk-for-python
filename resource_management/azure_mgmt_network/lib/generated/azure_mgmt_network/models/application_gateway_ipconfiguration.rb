# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # IP configuration of application gateway
    #
    class ApplicationGatewayIPConfiguration < MsRestAzure::SubResource

      include MsRestAzure

      # @return [SubResource] Gets or sets the reference of the subnet
      # resource.A subnet from where appliation gateway gets its private
      # address
      attr_accessor :subnet

      # @return [String] Gets or sets Provisioning state of the application
      # gateway subnet resource Updating/Deleting/Failed
      attr_accessor :provisioning_state

      # @return [String] Gets name of the resource that is unique within a
      # resource group. This name can be used to access the resource
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated
      attr_accessor :etag


      #
      # Mapper for ApplicationGatewayIPConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApplicationGatewayIPConfiguration',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayIPConfiguration',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              subnet: {
                required: false,
                serialized_name: 'properties.subnet',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
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
              etag: {
                required: false,
                serialized_name: 'etag',
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
