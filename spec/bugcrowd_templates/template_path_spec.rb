
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
      ).template_file(type)
    end

    let(:directory) { BugcrowdTemplates.current_directory }

    context 'when it has all the params' do
      let!(:type) { 'methodology' }
      let!(:field) { 'notes' }
      let!(:category) { 'website_testing' }
      let!(:subcategory) { 'information' }
      let!(:item) { '' }
      let!(:file_name) { 'template' }

      it 'returns the template value' do
        is_expected.to eq("#{directory}/methodology/notes/website_testing/information.md")
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
        is_expected.to eq("#{directory}/methodology/notes/website_testing.md")
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
