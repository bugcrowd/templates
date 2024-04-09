# frozen_string_literal: true

module BugcrowdTemplates
  class InputError < StandardError; end

  class TemplatePath
    attr_reader :type, :field, :category, :subcategory, :item, :file_name

    # rubocop:disable Metrics/ParameterLists
    def initialize(type:, field:, category: '', subcategory: '', item: '', file_name: '')
      @type = type || ''
      @field = field || ''
      @category = category || ''
      @subcategory = subcategory || ''
      @item = item || ''
      @file_name = file_name || ''
    end
    # rubocop:enable Metrics/ParameterLists

    def template_file
      validate_input_attrs

      find_template_file
    end

    # find the template file from  `category/subcategory/item` directories, checking from item to category level
    # when dir is `item` then it will return `.../submissions/description/category/subcategory/item/template.md`
    # when dir is `subcategory` then it will return  `.../submissions/description/category/subcategory/template.md`
    # when dir is `category` then it will return `.../submissions/description/category/template.md`
    def find_template_file
      return item_file_path if item && File.exist?(item_file_path)
      return subcategory_file_path if subcategory && File.exist?(subcategory_file_path)

      category_file_path
    end

    # check upto item directory, and return if template exist
    # e.g: `templates/submissions/description/server_security_misconfiguration/clickjacking/form_input/template.md`
    def item_file_path
      file_name_with_extension = [file_name, 'md'].join('.')

      BugcrowdTemplates.current_directory.join(
        type, field, category, subcategory, item, file_name_with_extension
      )
    end

    # check upto subcategory directory, and return if template exist
    # e.g: `templates/submissions/description/server_security_misconfiguration/clickjacking/template.md`
    def subcategory_file_path
      file_name_with_extension = [file_name, 'md'].join('.')

      BugcrowdTemplates.current_directory.join(
        type, field, category, subcategory, file_name_with_extension
      )
    end

    # check upto category directory, and return if template exist
    # e.g: `templates/submissions/description/server_security_misconfiguration/template.md`
    def category_file_path
      file_name_with_extension = [file_name, 'md'].join('.')

      BugcrowdTemplates.current_directory.join(
        type, field, category, file_name_with_extension
      )
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
