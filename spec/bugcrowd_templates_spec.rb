
require 'spec_helper'

describe BugcrowdTemplates do
  describe '#VERSION' do
    subject { described_class::VERSION }

    it 'return current version for the gem' do
      is_expected.to eq('0.1.0')
    end
  end

  describe '#TEMPLATE_TYPES' do
    subject { described_class::TEMPLATE_TYPES }

    it 'return template types' do
      is_expected.to eq(methodology: 'methodology', submissions: 'submissions')
    end
  end

  describe '#current_directory' do
    subject { described_class.current_directory }

    it 'return the current directory for the template' do
      is_expected.to eq BugcrowdTemplates.current_directory
    end
  end

  describe '#get' do
    subject do
      described_class.get(
        type: type,
        field: field,
        category: category,
        subcategory: subcategory,
        item: item,
        file_name: file_name
      )
    end

    let(:type) { '' }
    let(:field) { '' }
    let(:category) { '' }
    let(:subcategory) { '' }
    let(:item) { '' }
    let(:file_name) { '' }

    context 'with correct params' do
      context 'with methodology type' do
        let!(:type) { 'methodology' }
        let!(:field) { 'notes' }
        let!(:category) { 'website_testing' }
        let!(:subcategory) { 'information' }
        let!(:item) { '' }
        let!(:file_name) { 'template' }

        it 'returns the bugcrowd template value as string' do
          is_expected.to include('# Information gathering')
        end
      end

      context 'with submissions type' do
        let!(:type) { 'submissions' }
        let!(:field) { 'description' }
        let!(:category) { 'using_components_with_known_vulnerabilities' }
        let!(:subcategory) { 'outdated_software_version' }
        let!(:item) { '' }
        let!(:file_name) { 'template' }

        it 'returns the bugcrowd template value as string' do
          is_expected.to include('# Outdated Software Version')
        end

        context 'when file_name with multiple options' do
          context 'file_name as template' do
            let!(:file_name) { 'template' }

            it 'returns the bugcrowd template value as string' do
              is_expected.to include('# Outdated Software Version')
            end
          end

          context 'file_name as testing' do
            let!(:file_name) { 'testing' }

            it 'returns the nil for not presence of template' do
              is_expected.to be_nil
            end
          end

          context 'file_name as guidance' do
            let!(:file_name) { 'guidance' }

            it 'returns the nil for not presence of template' do
              is_expected.to be_nil
            end
          end

          context 'file_name as $5%' do
            let!(:file_name) { '$5%' }

            it 'returns the error message for invalid name' do
              expect { subject }.to raise_error BugcrowdTemplates::InputError
            end
          end
        end
      end
    end

    context 'with incorrect category' do
      let!(:type) { 'methodology' }
      let!(:field) { 'notes' }
      let!(:category) { 'testing' }
      let!(:subcategory) { 'information' }
      let!(:item) { '' }
      let!(:file_name) { '' }

      it 'returns the nil value' do
        is_expected.to be_nil
      end
    end

    context 'with incorrect subcategory' do
      let!(:type) { 'methodology' }
      let!(:field) { 'notes' }
      let!(:category) { 'testing' }
      let!(:subcategory) { '' }
      let!(:item) { '' }

      it 'returns the nil value' do
        is_expected.to be_nil
      end
    end

    context 'with incorrect field' do
      let!(:type) { 'methodology' }
      let!(:field) { 'notes_notes' }
      let!(:category) { 'testing' }
      let!(:subcategory) { '' }
      let!(:item) { '' }

      it 'returns the nil value' do
        is_expected.to be_nil
      end
    end

    context 'with incorrect type' do
      let!(:type) { 'methodologysss' }
      let!(:field) { 'notes_notes' }
      let!(:category) { 'testing' }
      let!(:subcategory) { '' }
      let!(:item) { '' }

      it 'raises TypeError' do
        expect { subject }.to raise_error BugcrowdTemplates::TypeError
      end
    end

    context 'with incorrect up & down case params' do
      let!(:type) { 'METHODOLOGIESSS' }
      let!(:field) { 'NOTES' }
      let!(:category) { 'TESTING' }
      let!(:subcategory) { 'hello' }
      let!(:item) { 'world' }

      it 'raises TypeError' do
        expect { subject }.to raise_error BugcrowdTemplates::TypeError
      end
    end

    context 'with incorrect params' do
      let!(:type) { nil }
      let!(:field) { nil }
      let!(:category) { nil }
      let!(:subcategory) { nil }
      let!(:item) { nil }

      it 'raises TypeError' do
        expect { subject }.to raise_error BugcrowdTemplates::TypeError
      end
    end

    context 'with only type param' do
      let!(:type) { 'methodology' }
      let!(:field) { nil }
      let!(:category) { nil }
      let!(:subcategory) { nil }
      let!(:item) { nil }
      let!(:file_name) { nil }

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

      it 'raises TypeError' do
        expect { subject }.to raise_error BugcrowdTemplates::TypeError
      end
    end

    context 'with invalid input params' do
      let!(:type) { 'methodology' }
      let!(:field) { '../../etc/password' }
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
        let!(:type) { 'methodology' }
        let!(:field) { 'test_646' }
        let!(:category) { 'testing&-testing-87' }
        let!(:subcategory) { 'infor%mation' }
        let!(:item) { '' }

        it 'raises InputError' do
          expect { subject }.to raise_error BugcrowdTemplates::InputError
        end
      end

      context 'when there is no params' do
        let!(:type) {}
        let!(:field) {}
        let!(:category) {}
        let!(:subcategory) {}
        let!(:item) {}

        it 'raises TypeError' do
          expect { subject }.to raise_error BugcrowdTemplates::TypeError
        end
      end

      context 'when it has correct type & other params as empty' do
        let!(:type) { 'submissions' }
        let!(:field) {}
        let!(:category) {}
        let!(:subcategory) {}
        let!(:item) {}

        it 'returns the nil value' do
          is_expected.to be_nil
        end
      end
    end
  end
end
