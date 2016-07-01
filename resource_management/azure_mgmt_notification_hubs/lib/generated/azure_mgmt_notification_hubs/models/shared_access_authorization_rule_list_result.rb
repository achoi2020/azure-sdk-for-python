# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::NotificationHubs
  module Models
    #
    # The response of the List Namespace operation.
    #
    class SharedAccessAuthorizationRuleListResult

      include MsRestAzure

      # @return [Array<SharedAccessAuthorizationRuleResource>] Gets or sets
      # result of the List AuthorizationRules operation.
      attr_accessor :value

      # @return [String] Gets or sets link to the next set of results. Not
      # empty if Value contains incomplete list of AuthorizationRules
      attr_accessor :next_link


      #
      # Mapper for SharedAccessAuthorizationRuleListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SharedAccessAuthorizationRuleListResult',
          type: {
            name: 'Composite',
            class_name: 'SharedAccessAuthorizationRuleListResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SharedAccessAuthorizationRuleResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SharedAccessAuthorizationRuleResource'
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
