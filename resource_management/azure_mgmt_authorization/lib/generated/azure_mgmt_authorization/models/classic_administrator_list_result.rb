# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Authorization
  module Models
    #
    # ClassicAdministrator list result information.
    #
    class ClassicAdministratorListResult

      include MsRestAzure

      # @return [Array<ClassicAdministrator>] Gets or sets
      # ClassicAdministrators.
      attr_accessor :value


      #
      # Mapper for ClassicAdministratorListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ClassicAdministratorListResult',
          type: {
            name: 'Composite',
            class_name: 'ClassicAdministratorListResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ClassicAdministratorElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ClassicAdministrator'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
