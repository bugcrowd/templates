
# frozen_string_literal: true

require 'spec_helper'

describe BugcrowdTemplates::TemplatePath do
  subject do
    described_class.new(
      type: type,
      field: field,
      category: category,
      subcategory: subcategory,
      item: item,
      file_name: file_name
    )
  end

  let!(:directory) { BugcrowdTemplates.current_directory }
  let!(:file_name_with_extension) { [file_name, 'md'].join('.') }

  describe '#new' do
    context 'initialize with submission type' do
      let!(:type) { 'submission' }
      let!(:field) { 'description' }
      let!(:category) { 'using_components_with_known_vulnerabilities' }
      let!(:subcategory) { 'captcha_bypass' }
      let!(:item) { 'ocr_optical_character_recognition' }
      let!(:file_name) { 'template' }

      it 'initialize an item' do
        expect(subject).to be_a(described_class)
        expect(subject.type).to eq('submission')
        expect(subject.field).to eq('description')
        expect(subject.category).to eq('using_components_with_known_vulnerabilities')
        expect(subject.subcategory).to eq('captcha_bypass')
        expect(subject.file_name).to eq('template')
      end
    end

    context 'initialize with methodology type' do
      let!(:type) { 'methodology' }
      let!(:field) { 'notes' }
      let!(:category) { 'website_testing' }
      let!(:subcategory) { 'information' }
      let!(:item) { '' }
      let!(:file_name) { '' }

      it 'initialize an item' do
        expect(subject).to be_a(described_class)
        expect(subject.type).to eq('methodology')
        expect(subject.field).to eq('notes')
        expect(subject.category).to eq('website_testing')
        expect(subject.subcategory).to eq('information')
      end
    end
  end

  describe '#template_file' do
    subject do
      described_class.new(
        type: type,
        field: field,
        category: category,
        subcategory: subcategory,
        item: item,
        file_name: file_name
      ).template_file
    end

    let!(:result) { directory.join(type, field, category, subcategory, item, file_name_with_extension) }

    context 'when it has all the params' do
      let!(:type) { 'methodology' }
      let!(:field) { 'notes' }
      let!(:category) { 'website_testing' }
      let!(:subcategory) { '' }
      let!(:item) { '' }
      let!(:file_name) { 'information' }

      it 'returns the template value' do
        is_expected.to eq(result)
      end
    end

    context 'when it has incorrect params' do
      let!(:type) { 'methodology' }
      let!(:field) { 'notes' }
      let!(:category) { 'website_testing' }
      let!(:subcategory) { '' }
      let!(:item) { '' }
      let!(:file_name) { '' }

      it 'returns the template value' do
        is_expected.to eq(result)
      end
    end

    context 'when it has invalid params' do
      let!(:type) { '../../methodology' }
      let!(:field) { 'notes' }
      let!(:category) { 'website_testing_9' }
      let!(:subcategory) { '' }
      let!(:item) { '' }
      let!(:file_name) { 'template' }

      it 'raises InputError' do
        expect { subject }.to raise_error BugcrowdTemplates::InputError
      end
    end
  end

  describe '#find_template_file' do
    subject do
      described_class.new(
        type: type,
        field: field,
        category: category,
        subcategory: subcategory,
        item: item,
        file_name: file_name
      ).find_template_file
    end

    context 'when item folder is not having template for submissions' do
      let!(:type) { 'submissions' }
      let!(:field) { 'description' }
      let!(:category) { 'dummy_category_for_items' }
      let!(:subcategory) { 'dummy_subcategory' }
      let!(:item) { 'form_input' }
      let!(:file_name) { 'template' }
      let!(:result) {
        Pathname.new(Gem::Specification.find_by_name('bugcrowd_templates').gem_dir).join('spec', 'fixture')
        .join(type, field, category, subcategory, file_name_with_extension) }

      it 'returns the template from the subcategory folder as template' do
        allow(BugcrowdTemplates).to receive(:current_directory).and_return(
        Pathname.new(Gem::Specification.find_by_name('bugcrowd_templates').gem_dir).join('spec', 'fixture'))
        is_expected.to eq(result)
      end
    end

    context 'when sub_category folder is not having template for submissions' do
      let!(:type) { 'submissions' }
      let!(:field) { 'description' }
      let!(:category) { 'dummy_category' }
      let!(:subcategory) { 'dummy_subcategory' }
      let!(:item) { 'form_input' }
      let!(:file_name) { 'template' }
      let!(:result) {
        Pathname.new(Gem::Specification.find_by_name('bugcrowd_templates').gem_dir).join('spec', 'fixture')
        .join(type, field, category, file_name_with_extension) }

      it 'returns the template from the category folder as template' do
        allow(BugcrowdTemplates).to receive(:current_directory).and_return(
        Pathname.new(Gem::Specification.find_by_name('bugcrowd_templates').gem_dir).join('spec', 'fixture'))
        is_expected.to eq(result)
      end
    end



    context 'when it has category params for submissions' do
      let!(:type) { 'submissions' }
      let!(:field) { 'description' }
      let!(:category) { 'using_components_with_known_vulnerabilities' }
      let!(:subcategory) { '' }
      let!(:item) { '' }
      let!(:file_name) { 'template' }
      let!(:result) { directory.join(type, field, category, file_name_with_extension) }

      it 'returns the category folder as template' do
        is_expected.to eq(result)
      end
    end

    context 'when item folder is not having template for methodology' do
      let!(:type) { 'methodology' }
      let!(:field) { 'notes' }
      let!(:category) { 'website_testing' }
      let!(:subcategory) { '' }
      let!(:item) { '' }
      let!(:file_name) { 'information' }
      let!(:result) { directory.join(type, field, category, file_name_with_extension) }

      it 'returns the methodology template' do
        is_expected.to eq(result)
      end
    end
  end

  describe '#item_file_path' do
    subject do
      described_class.new(
        type: type,
        field: field,
        category: category,
        subcategory: subcategory,
        item: item,
        file_name: file_name
      ).item_file_path
    end

    context 'when searching item folder for submissions' do
      let!(:type) { 'submissions' }
      let!(:field) { 'description' }
      let!(:category) { 'server_security' }
      let!(:subcategory) { 'clickjacking' }
      let!(:item) { 'form_input' }
      let!(:file_name) { 'template' }
      let!(:result) { directory.join(type, field, category, subcategory, item, file_name_with_extension) }

      it 'returns the template' do
        is_expected.to eq(result)
      end
    end

    context 'when searching item folder for methodology' do
      let!(:type) { 'methodology' }
      let!(:field) { 'notes' }
      let!(:category) { 'website_testing' }
      let!(:subcategory) { 'information' }
      let!(:item) { 'api_testing' }
      let!(:file_name) { 'testing' }
      let!(:result) { directory.join(type, field, category, subcategory, item, file_name_with_extension) }

      it 'returns the template' do
        is_expected.to eq(result)
      end
    end
  end

  describe '#subcategory_file_path' do
    subject do
      described_class.new(
        type: type,
        field: field,
        category: category,
        subcategory: subcategory,
        item: item,
        file_name: file_name
      ).subcategory_file_path
    end

    context 'when searching subcategory folder for submissions' do
      let!(:type) { 'submissions' }
      let!(:field) { 'description' }
      let!(:category) { 'server_security' }
      let!(:subcategory) { 'clickjacking' }
      let!(:item) { '' }
      let!(:file_name) { 'template' }
      let!(:result) { directory.join(type, field, category, subcategory, item, file_name_with_extension) }

      it 'returns the template' do
        is_expected.to eq(result)
      end
    end

    context 'when searching subcategory folder for methodology' do
      let!(:type) { 'methodology' }
      let!(:field) { 'notes' }
      let!(:category) { 'website_testing' }
      let!(:subcategory) { '' }
      let!(:item) { '' }
      let!(:file_name) { 'information' }
      let!(:result) { directory.join(type, field, category, subcategory, file_name_with_extension) }

      it 'returns the template' do
        is_expected.to eq(result)
      end
    end
  end

  describe '#category_file_path' do
    subject do
      described_class.new(
        type: type,
        field: field,
        category: category,
        subcategory: subcategory,
        item: item,
        file_name: file_name
      ).category_file_path
    end

    context 'when searching category folder for submissions' do
      let!(:type) { 'submissions' }
      let!(:field) { 'description' }
      let!(:category) { 'server_security' }
      let!(:subcategory) { '' }
      let!(:item) { '' }
      let!(:file_name) { 'template' }
      let!(:result) { directory.join(type, field, category, subcategory, file_name_with_extension) }

      it 'returns the template' do
        is_expected.to eq(result)
      end
    end

    context 'when searching category folder for methodology' do
      let!(:type) { 'methodology' }
      let!(:field) { 'notes' }
      let!(:category) { 'website_testing' }
      let!(:subcategory) { '' }
      let!(:item) { '' }
      let!(:file_name) { 'information' }
      let!(:result) { directory.join(type, field, category, subcategory, file_name_with_extension) }

      it 'returns the template' do
        is_expected.to eq(result)
      end
    end
  end

  describe '#valid?' do
    subject do
      described_class.new(
        type: type,
        field: field,
        category: category,
        subcategory: subcategory,
        item: item,
        file_name: file_name
      ).valid?(type)
    end

    context 'when correct input params' do
      let!(:type) { 'methodology' }
      let!(:field) { 'notes' }
      let!(:category) { 'website_testing' }
      let!(:subcategory) { 'information' }
      let!(:item) { '' }
      let!(:file_name) { 'template' }

      it 'returns true' do
        is_expected.to be_truthy
      end
    end

    context 'when invalid input params' do
      let!(:type) { '../../password' }
      let!(:field) { '/../../testing_432' }
      let!(:category) { 'website_testing' }
      let!(:subcategory) { 'information' }
      let!(:item) { '' }
      let!(:file_name) { 'template' }

      it 'returns false' do
        is_expected.to be_falsey
      end
    end
  end

  describe '#validate_input_attrs' do
    subject do
      described_class.new(
        type: type,
        field: field,
        category: category,
        subcategory: subcategory,
        item: item,
        file_name: file_name
      ).validate_input_attrs
    end

    context 'when correct input params' do
      let!(:type) { 'methodology' }
      let!(:field) { 'notes' }
      let!(:category) { 'website_testing' }
      let!(:subcategory) { 'information' }
      let!(:item) { 'test' }
      let!(:file_name) { 'template' }

      it 'returns the valid input params' do
        is_expected.to eq [type, field, category, subcategory, item, file_name]
      end
    end

    context 'when invalid input params' do
      let!(:type) { '../../password' }
      let!(:field) { '/../../testing_432' }
      let!(:category) { 'website_testing' }
      let!(:subcategory) { 'information' }
      let!(:item) { '' }
      let!(:file_name) { 'template' }

      it 'raises InputError' do
        expect { subject }.to raise_error BugcrowdTemplates::InputError
      end
    end
  end
end
