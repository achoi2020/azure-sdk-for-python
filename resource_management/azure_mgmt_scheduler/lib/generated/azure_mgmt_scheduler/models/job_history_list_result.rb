# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Scheduler
  module Models
    #
    # Model object.
    #
    class JobHistoryListResult

      include MsRestAzure

      # @return [Array<JobHistoryDefinition>] Gets or sets the job histories
      # under job.
      attr_accessor :value

      # @return [String] Gets or sets the URL to get the next set of job
      # histories.
      attr_accessor :next_link


      #
      # Mapper for JobHistoryListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'JobHistoryListResult',
          type: {
            name: 'Composite',
            class_name: 'JobHistoryListResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'JobHistoryDefinitionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'JobHistoryDefinition'
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
