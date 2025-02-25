require 'rails_helper'

RSpec.describe Theme do
  let(:test_components) do
    {
      button: {
        base: "group relative inline-flex items-center",
        opts: {
          fullsized: "w-full",
          color: {
            blue: "text-white bg-blue-700",
            red: "text-white bg-red-700"
          },
          size: {
            sm: "px-3 py-1.5 text-sm",
            md: "px-4 py-2 text-sm"
          },
          pill: {
            on: "rounded-full",
            off: "rounded-lg"
          }
        }
      },
      main_nav: {
        base: "fixed top-0 z-50 w-full bg-white border-b border-gray-200",
        button: "transition-[color,background-color,border-color,text-decoration-color,fill,stroke,box-shadow] focus:z-10"
      }
    }
  end

  before do
    # Custom theme components for testing
    allow(described_class).to receive(:components).and_return(test_components)
  end

  describe '.components' do
    it 'returns the components hash' do
      expect(described_class.components).to be_a(Hash)
      expect(described_class.components).to eq(test_components)
    end
  end

  describe '.components_keys' do
    it 'returns the keys of the components hash' do
      expect(described_class.components_keys).to be_an(Array)
      expect(described_class.components_keys).to eq(test_components.keys)
      expect(described_class.components_keys).to include(:button, :main_nav)
    end
  end

  describe '.has_component?' do
    context 'when component exists' do
      it 'returns true for string keys' do
        expect(described_class.has_component?('button')).to be true
      end

      it 'returns true for symbol keys' do
        expect(described_class.has_component?(:button)).to be true
      end
    end

    context 'when component does not exist' do
      it 'returns false' do
        expect(described_class.has_component?('nonexistent')).to be false
      end
    end
  end

  describe '.get' do
    context 'when component exists' do
      it 'returns the component when no elements are specified' do
        expect(described_class.get(:button)).to eq(test_components[:button])
      end

      it 'returns the component element when elements are specified' do
        expect(described_class.get(:button, :base)).to eq(test_components[:button][:base])
      end

      it 'returns nested component elements' do
        expect(described_class.get(:button, :opts, :color)).to eq(test_components[:button][:opts][:color])
      end
    end

    context 'when component does not exist' do
      it 'raises an ArgumentError' do
        expect { described_class.get(:nonexistent) }.to raise_error(ArgumentError, /Theme component 'nonexistent' not found/)
      end
    end

    context 'when element does not exist' do
      it 'raises an ArgumentError' do
        expect { described_class.get(:button, :nonexistent) }.to raise_error(ArgumentError, /Invalid theme component/)
      end
    end
  end

  describe '.get_to_css_class' do
    context 'when element is a string' do
      it 'returns the component element as a CSS class selector' do
        base_expected = '.fixed.top-0.z-50.w-full.bg-white.border-b.border-gray-200'
        button_expected = '.transition-[color\\,background-color\\,border-color\\,text-decoration-color\\,fill\\,stroke\\,box-shadow].focus\\:z-10'

        expect(described_class.get_to_css_class(:main_nav, :base)).to eq(base_expected)
        expect(described_class.get_to_css_class(:main_nav, :button)).to eq(button_expected)
      end
    end

    context 'when element is a hash' do
      it 'returns the base property as a CSS class selector' do
        expected = '.group.relative.inline-flex.items-center'
        expect(described_class.get_to_css_class(:button)).to eq(expected)
      end
    end

    context 'when element is not a string and has no base property' do
      it 'raises an ArgumentError' do
        expect { described_class.get_to_css_class(:button, :opts) }.to raise_error(ArgumentError, /You must point to a component element/)
      end
    end

    context 'when component element is an empty string' do
      it 'returns an empty string' do
        allow(described_class).to receive(:get).and_return('')

        expect(described_class.get_to_css_class(:some_component)).to eq('')
      end
    end
  end

  describe '.validate_component!' do
    context 'when component exists' do
      it 'does not raise an error' do
        expect { described_class.validate_component!(:button) }.not_to raise_error
      end
    end

    context 'when component does not exist' do
      it 'raises an ArgumentError' do
        expect { described_class.validate_component!(:nonexistent) }.to raise_error(ArgumentError, /Theme component 'nonexistent' not found/)
      end
    end
  end

  describe '.validate_options!' do
    let(:valid_options) { { color: :blue, size: :md, pill: :on } }
    let(:invalid_color_option) { { color: :invalid_color } }

    context 'when options are valid' do
      it 'does not raise an error' do
        expect { described_class.validate_options!(valid_options, :button) }.not_to raise_error
      end
    end

    context 'when boolean option is valid' do
      it 'does not raise an error' do
        expect { described_class.validate_options!({ fullsized: true }, :button) }.not_to raise_error
      end
    end

    context 'when option has invalid value' do
      it 'raises an ArgumentError' do
        expect do
          described_class.validate_options!(invalid_color_option, :button)
        end.to raise_error(ArgumentError, /Invalid value 'invalid_color' for option 'color'. Allowed values: blue, red/)
      end
    end

    context 'when boolean option has non-boolean value' do
      it 'raises an ArgumentError' do
        allow(described_class).to receive(:get).and_return({ some_bool_opt: 'string' })

        expect do
          described_class.validate_options!({ some_bool_opt: 'not_a_boolean' }, :some_component)
        end.to raise_error(ArgumentError, /Option 'some_bool_opt' expects a boolean value/)
      end
    end
  end
end
