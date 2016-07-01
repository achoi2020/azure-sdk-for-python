# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Resources
  module Models
    #
    # List of resource providers.
    #
    class ProviderListResult

      include MsRestAzure

      # @return [Array<Provider>] Gets or sets the list of resource providers.
      attr_accessor :value

      # @return [String] Gets or sets the URL to get the next set of results.
      attr_accessor :next_link


      #
      # Mapper for ProviderListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ProviderListResult',
          type: {
            name: 'Composite',
            class_name: 'ProviderListResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ProviderElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Provider'
                      }
                  }
                }
              },
              next_link: {
                required: false,
                serialized_name: 'nextLink',
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
