# frozen_string_literal: true

module BugcrowdTemplates
  class TemplatePath
    attr_reader :type, :field, :category, :subcategory, :item

    def initialize(type:, field:, category: '', subcategory: '', item: '')
      @type = type
      @field = field || ''
      @category = category || ''
      @subcategory = subcategory || ''
      @item = item || ''
    end

    def template_file(type)
      file_pathname = case type
                      when 'submissions'
                        BugcrowdTemplates.current_directory.join(
                          type, field, category, subcategory, item, 'template'
                        )
                      when 'methodology'
                        BugcrowdTemplates.current_directory.join(type, field, category, subcategory, item)
                      end
      "#{file_pathname}.md"
    end
  end
end
