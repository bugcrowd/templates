# frozen_string_literal: true

require_relative 'bugcrowd_templates/version'
require 'pathname'
require 'bugcrowd_templates/template_path'

module BugcrowdTemplates
  class TemplateNotFoundError < StandardError; end

  DATA_DIR = Pathname.new(Gem::Specification.find_by_name('bugcrowd_templates').gem_dir)

  # if we need to add new template type
  # we can add here
  TEMPLATE_TYPES = {
    submissions: 'submissions',
    methodology: 'methodology'
  }.freeze

  module_function

  # returns the Bugcrowd template based on given inputs
  def get(
    template_type: '',
    template_field: '',
    template_category: '',
    template_subcategory: '',
    template_item: ''
  )

    raise TemplateNotFoundError unless TEMPLATE_TYPES.value?(template_type)

    template_path = TemplatePath.new(
      type: template_type,
      field: template_field,
      category: template_category,
      subcategory: template_subcategory,
      item: template_item
    ).template_file(template_type)

    template_data(template_path)
  end

  def current_directory
    DATA_DIR
  end

  def template_data(file_path)
    File.open(file_path).read if File.exist?(file_path)
  end
end
