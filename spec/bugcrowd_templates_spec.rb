
require 'spec_helper'

describe BugcrowdTemplates do
  describe '#VERSION' do
    subject { described_class::VERSION }

    it 'return current version for the gem' do
      is_expected.to eq('0.1.0')
    end
  end

  describe '#current_directory' do
    subject { described_class.current_directory }

    it 'return the current directory for the template' do
      is_expected.to eq BugcrowdTemplates.current_directory
    end
  end

  describe '#get' do
    subject { described_class.get(type, field, category, subcategory, item) }

    let(:type) { '' }
    let(:field) { '' }
    let(:category) { '' }
    let(:subcategory) { '' }
    let(:item) { '' }

    context 'with correct params' do
      context 'with methodology type' do
        let!(:type) { 'methodology' }
        let!(:field) { 'notes' }
        let!(:category) { 'website_testing' }
        let!(:subcategory) { 'information' }
        let!(:item) { '' }

        it 'returns the bugcrowd template value as string' do
          is_expected.to include('# Information gathering')
        end
      end

      context 'with submissions type' do
        let!(:type) { 'submissions' }
        let!(:field) { 'description' }
        let!(:category) { 'using_components_with_known_vulnerabilities' }
        let!(:subcategory) { 'captcha_bypass' }
        let!(:item) { 'ocr_optical_character_recognition' }

        it 'returns the bugcrowd template value as string' do
          is_expected.to include('# Optical Character Recognition')
        end
      end
    end

    context 'with invalid category' do
      let!(:type) { 'methodology' }
      let!(:field) { 'notes' }
      let!(:category) { 'testing' }
      let!(:subcategory) { 'information' }
      let!(:item) { '' }

      it 'returns the nil value' do
        is_expected.to be_nil
      end
    end

    context 'with invalid subcategory' do
      let!(:type) { 'methodology' }
      let!(:field) { 'notes' }
      let!(:category) { 'testing' }
      let!(:subcategory) { '' }
      let!(:item) { '' }

      it 'returns the nil value' do
        is_expected.to be_nil
      end
    end

    context 'with invalid field' do
      let!(:type) { 'methodology' }
      let!(:field) { 'notes_notes' }
      let!(:category) { 'testing' }
      let!(:subcategory) { '' }
      let!(:item) { '' }

      it 'returns the nil value' do
        is_expected.to be_nil
      end
    end

    context 'with invalid type' do
      let!(:type) { 'methodologysss' }
      let!(:field) { 'notes_notes' }
      let!(:category) { 'testing' }
      let!(:subcategory) { '' }
      let!(:item) { '' }

      it 'returns the nil value' do
        is_expected.to be_nil
      end
    end

    context 'with invalid params' do
      let!(:type) { nil }
      let!(:field) { nil }
      let!(:category) { nil }
      let!(:subcategory) { nil }
      let!(:item) { nil }

      it 'returns the nil value' do
        is_expected.to be_nil
      end
    end

    context 'with only type param' do
      let!(:type) { 'methodology' }
      let!(:field) { nil }
      let!(:category) { nil }
      let!(:subcategory) { nil }
      let!(:item) { nil }

      it 'returns the nil value' do
        is_expected.to be_nil
      end
    end

    context 'with only field param' do
      let!(:type) { nil }
      let!(:field) { 'description' }
      let!(:category) { nil }
      let!(:subcategory) { nil }
      let!(:item) { nil }

      it 'returns the nil value' do
        is_expected.to be_nil
      end
    end

    context 'with invalid input params' do
      let!(:type) { '../../../../etc/passwd' }
      let!(:field) { 'notes' }
      let!(:category) { 'testing' }
      let!(:subcategory) { 'information' }
      let!(:item) { '' }

      it 'raises InputError' do
        expect { subject }.to raise_error BugcrowdTemplates::InputError
      end

      context 'with special character params' do
        let!(:type) { 'methodology' }
        let!(:field) { 'notes..@' }
        let!(:category) { 'testing-testing' }
        let!(:subcategory) { 'information' }
        let!(:item) { '' }

        it 'raises InputError' do
          expect { subject }.to raise_error BugcrowdTemplates::InputError
        end
      end

      context 'with number params' do
        let!(:type) { 'methodology' }
        let!(:field) { 'test_646' }
        let!(:category) { 'testing-testing-87' }
        let!(:subcategory) { 'information' }
        let!(:item) { '' }

        it 'raises InputError' do
          expect { subject }.to raise_error BugcrowdTemplates::InputError
        end
      end

      context 'with multiple special character params' do
        let!(:type) { '#methodology' }
        let!(:field) { 'test_646' }
        let!(:category) { 'testing&-testing-87' }
        let!(:subcategory) { 'infor%mation' }
        let!(:item) { '' }

        it 'raises InputError' do
          expect { subject }.to raise_error BugcrowdTemplates::InputError
        end
      end
    end
  end
end
