# frozen_string_literal: true

module BugcrowdTemplates
  class InputError < StandardError; end

  class TemplatePath
    attr_reader :type, :field, :category, :subcategory, :item, :file_name

    # rubocop:disable Metrics/ParameterLists, Metrics/CyclomaticComplexity
    def initialize(type:, field:, category: '', subcategory: '', item: '', file_name: '')
      @type = type || ''
      @field = field || ''
      @category = category || ''
      @subcategory = subcategory || ''
      @item = item || ''
      @file_name = file_name || ''
    end
    # rubocop:enable Metrics/ParameterLists, Metrics/CyclomaticComplexity

    def template_file(type)
      validate_input_attrs

      file_pathname = case type
                      when 'submissions'
                        BugcrowdTemplates.current_directory.join(
                          type, field, category, subcategory, item, file_name
                        )
                      when 'methodology'
                        BugcrowdTemplates.current_directory.join(type, field, category, subcategory, item)
                      end
      "#{file_pathname}.md"
    end

    def valid?(input_str)
      (input_str =~ /[^a-zA-Z_]/).nil?
    end

    def validate_input_attrs
      [type, field, category, subcategory, item, file_name].each do |input_field|
        raise InputError, 'Invalid input param(s)' unless valid?(input_field)
      end
    end
  end
end
