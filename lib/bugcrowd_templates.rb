# frozen_string_literal: true

require_relative 'bugcrowd_templates/version'
require 'pathname'
require 'bugcrowd_templates/template_path'

module BugcrowdTemplates
  class TypeError < StandardError; end

  DATA_DIR = Pathname.new(Gem::Specification.find_by_name('bugcrowd_templates').gem_dir)

  # if we need to add new template type
  # we can add here
  TEMPLATE_TYPES = {
    submissions: 'submissions',
    methodology: 'methodology'
  }.freeze

  module_function

  # returns the Bugcrowd template based on given inputs
  # rubocop:disable Metrics/ParameterLists
  def get(
    type: '',
    field: '',
    category: '',
    subcategory: '',
    item: '',
    file_name: ''
  )

    raise TypeError, 'Invalid template type' unless TEMPLATE_TYPES.value?(type)

    template_path = TemplatePath.new(
      type: type,
      field: field,
      category: category,
      subcategory: subcategory,
      item: item,
      file_name: file_name
    ).template_file(type)

    template_data(file_path: template_path, category: category, subcategory: subcategory, item: item)
  end
  # rubocop:enable Metrics/ParameterLists

  def current_directory
    DATA_DIR
  end

  def template_data(file_path:, category:, subcategory:, item:)
    if File.exist?(file_path)
      File.open(file_path).read
    else
      find_template(file_path, category, subcategory, item)
    end
  end

  def find_template(file_path, category, subcategory, item)
    return File.open(file_path).read if File.exist?(file_path)

    file_path = get_pathname(file_path)
    presented_template(file_path, category, subcategory, item)
  end

  def get_pathname(file_path)
    Pathname.new(file_path)
  end

  def get_parent_path(file_path)
    File.dirname(file_path.parent)
  end

  def get_file_basename(file_path)
    File.basename(file_path)
  end

  # when there is no template.md in `item_1` folder
  # It will look the parent folder in `sub_category_1`
  # return the template as `category_1/sub_category_1/template.md`
  def presented_template(file_path, category, subcategory, item)
    parent_path_template = get_parent_path(file_path) + '/' + get_file_basename(file_path)

    # check the parent directory templates within in the category, subcategory & item folders only
    if [category, subcategory, item].include?(get_pathname(get_parent_path(file_path)).basename.to_s)
      template_data(file_path: parent_path_template, category: category, subcategory: subcategory, item: item)
    elsif File.exist?(parent_path_template)
      return File.open(parent_path_template).read
    end
  end
end
