class Theme
  COMPONENTS = {
    main_nav: {
      base: "fixed top-0 z-50 w-full bg-white border-b border-gray-200 dark:bg-gray-800 dark:border-gray-700",
      container: "flex flex-wrap items-center justify-between mx-auto p-4 sm:py-3 sm:px-5",
      logo: "flex items-center grow space-x-3 rtl:space-x-reverse ml-14 sm:ml-3",
      list: "flex flex-row p-0 mt-0 font-medium space-x-2 sm:space-x-4 rtl:space-x-reverse",
      items: "block w-auto",
      icon: {
        logo: "block h-12 sm:h-14 w-auto fill-current text-gray-800 dark:text-gray-200"
      }
    },
    sidebar: {
      aside: "fixed pt-20 top-0 left-0 z-40 w-72 h-screen border-r border-gray-200 dark:border-gray-700",
      container: "relative h-full px-3 py-9 sm:py-3 overflow-y-auto bg-gray-50 dark:bg-gray-800",
      list: "space-y-2 font-medium",
      link: {
        base: "rounded-lg hover:bg-gray-100 dark:hover:bg-gray-700",
        active: "rounded-lg bg-gray-100 dark:bg-gray-700"
      },
      icon: {
        link: "flex-shrink-0 w-6 h-6 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white",
        open: "h-7 w-7",
        close: "h-4 w-4"
      },
      button: {
        open: "fixed top-7 left-6 z-50 sm:hidden",
        close: "absolute top-2 right-2 z-50 sm:hidden rounded-lg hover:bg-gray-100 dark:hover:bg-gray-700 focus:ring-1.5 focus:ring-gray-300 py-1.5 px-1.5"
      }
    },
    button: {
      base: "group relative inline-flex items-center gap-x-2.5 font-medium transition-[color,background-color,border-color,text-decoration-color,fill,stroke,box-shadow] focus:z-10 focus:outline-none focus:ring-4",
      opts: {
        fullsized: "w-full",
        disabled: "cursor-not-allowed opacity-50",
        color: {
          blue: "text-white bg-blue-700 hover:bg-blue-800 focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800",
          teal: "border border-teal-300 bg-white text-teal-900 focus:ring-teal-300 dark:border-teal-600 dark:bg-teal-600 dark:text-white dark:focus:ring-teal-700",
          alt: "text-gray-900 bg-white border border-gray-200 hover:bg-gray-100 hover:text-blue-700 focus:ring-gray-100 dark:focus:ring-gray-700 dark:bg-gray-800 dark:text-gray-400 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-700",
          dark: "text-white bg-gray-800 hover:bg-gray-900 focus:ring-gray-300 dark:bg-gray-800 dark:hover:bg-gray-700 dark:focus:ring-gray-700 dark:border-gray-700",
          dark_gray: "border border-gray-300 dark:border-gray-500 bg-gray-100 dark:bg-gray-900 bg-opacity-90 dark:bg-opacity-30 hover:bg-opacity-100 dark:hover:bg-opacity-75",
          light: "text-gray-900 bg-white border border-gray-200 hover:bg-gray-100 focus:ring-gray-100 dark:bg-gray-600 dark:border-gray-600 dark:text-white dark:hover:bg-gray-700 dark:focus:ring-gray-700",
          green: "text-white bg-green-700 hover:bg-green-800 focus:ring-green-300 dark:bg-green-600 dark:hover:bg-green-700 dark:focus:ring-green-800",
          red: "text-white bg-red-700 hover:bg-red-800 focus:ring-red-300 dark:bg-red-600 dark:hover:bg-red-700 dark:focus:ring-red-900",
          yellow: "text-white bg-yellow-400 hover:bg-yellow-500 focus:ring-yellow-300 dark:focus:ring-yellow-900",
          purple: "text-white bg-purple-700 hover:bg-purple-800 focus:ring-purple-300 dark:bg-purple-600 dark:hover:bg-purple-700 dark:focus:ring-purple-900",
          transparent: "border border-transparent bg-transparent text-gray-900 dark:text-white dark:hover:text-gray-300"
        },
        pill: {
          on: "rounded-full",
          off: "rounded-lg"
        },
        size: {
          none: "px-0 py-0",
          xxs: "px-1 py-0.5 text-xs",
          xs: "px-2 py-1 text-xs",
          sm: "px-3 py-1.5 text-sm",
          md: "px-4 py-2 text-sm",
          lg: "px-5 py-2.5 text-base",
          xl: "px-6 py-3 text-base"
        }
      }
    },
    link: {
      base: "group relative inline-flex items-center gap-x-2.5 transition-all duration-200",
      opts: {
        fullsized: "w-full",
        color: {
          blue: "text-blue-700 hover:text-blue-800 dark:text-blue-600 dark:hover:text-blue-700",
          teal: "text-teal-700 hover:text-teal-800 dark:text-teal-600 dark:hover:text-teal-700",
          alt: "text-gray-900 hover:text-blue-700 dark:text-gray-400 dark:hover:text-white",
          dark: "text-gray-800 hover:text-gray-900 dark:text-gray-700 dark:hover:text-gray-600",
          dark_gray: "text-gray-700 hover:text-gray-800 dark:text-gray-500 dark:hover:text-gray-400",
          light: "text-gray-900 hover:text-gray-100 dark:text-white dark:hover:text-gray-200",
          green: "text-green-700 hover:text-green-800 dark:text-green-600 dark:hover:text-green-700",
          red: "text-red-700 hover:text-red-800 dark:text-red-600 dark:hover:text-red-700",
          yellow: "text-yellow-400 hover:text-yellow-500 dark:text-yellow-300 dark:hover:text-yellow-400",
          purple: "text-purple-700 hover:text-purple-800 dark:text-purple-600 dark:hover:text-purple-700",
          transparent: "text-gray-900 hover:text-gray-700 dark:text-white dark:hover:text-gray-300"
        },
        size: {
          none: "px-0 py-0",
          xxs: "px-1 py-0.5 text-xs",
          xs: "px-2 py-1 text-xs",
          sm: "px-3 py-1.5 text-sm",
          md: "px-4 py-2 text-sm",
          lg: "px-5 py-2.5 text-base",
          xl: "px-6 py-3 text-base"
        }
      }
    },
    modal: {
      base: "flex overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 max-h-full bg-gray-900 bg-opacity-50 dark:bg-opacity-80",
      header: "text-xl font-semibold text-gray-900 dark:text-white",
      container: {
        base: "relative p-4 w-full max-h-full",
        opts: {
          size: {
            sm: "max-w-sm",
            md: "max-w-md",
            lg: "max-w-lg",
            xl: "max-w-xl",
            "2xl": "max-w-2xl",
            "3xl": "max-w-3xl",
            "4xl": "max-w-4xl",
            "5xl": "max-w-5xl",
            "6xl": "max-w-6xl",
            "7xl": "max-w-7xl"
          }
        }
      },
      icon: {
        close: "h-5 w-5 text-gray-400 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white"
      },
      button: {
        close: "ms-auto py-1.5 px-1.5 hover:bg-gray-200 hover:text-gray-900 dark:hover:bg-gray-600 dark:hover:text-white rounded-lg"
      }
    },
    popup: {
      base: "flex overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 max-h-full bg-gray-900 bg-opacity-50 dark:bg-opacity-80",
      container: {
        base: "relative p-4 w-full max-h-full",
        opts: {
          size: {
            sm: "max-w-sm",
            md: "max-w-md",
            lg: "max-w-lg",
            xl: "max-w-xl",
            "2xl": "max-w-2xl",
            "3xl": "max-w-3xl",
            "4xl": "max-w-4xl",
            "5xl": "max-w-5xl",
            "6xl": "max-w-6xl",
            "7xl": "max-w-7xl"
          }
        }
      },
      icon: {
        close: "h-5 w-5 text-gray-400 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white",
        info: "mx-auto mb-4 text-gray-400 w-16 h-16 dark:text-gray-200"
      },
      button: {
        close: "absolute top-3 end-2.5 py-1.5 px-1.5 hover:bg-gray-200 hover:text-gray-900 dark:hover:bg-gray-600 dark:hover:text-white rounded-lg"
      }
    },
    dropdown: {
      base: "relative",
      header: "px-4 py-3 text-sm text-gray-900 dark:text-white",
      toggle: {
        base: "justify-between focus:ring-0"
      },
      container: "z-10 hidden bg-white divide-y divide-gray-100 rounded-lg shadow dark:bg-gray-700 w-40 absolute dark:divide-gray-600",
      item: "hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white",
      icon: {
        toggle: {
          base: "w-4 h-4",
          opts: {
            placement: {
              bottom: "",
              top: "rotate-180",
              left: "rotate-90",
              right: "-rotate-90"
            }
          }
        }
      }
    },
    breadcrumb: {
      base: "max-w-7xl mx-auto py-5 px-4 sm:px-6 lg:px-8",
      list: "inline-flex items-center space-x-1 md:space-x-2 rtl:space-x-reverse",
      link: "p-0",
      item: {
        base: "flex items-center",
        current: "ms-1 text-sm font-medium text-gray-500 md:ms-2 dark:text-gray-400"
      },
      icon: {
        chevron: "rtl:rotate-180 w-4 h-4 text-gray-800 dark:text-white"
      }
    },
    toast: {
      base: "flex items-center w-full max-w-xs sm:max-w-sm z-50 p-4 text-gray-900 bg-white rounded-lg shadow-sm dark:bg-gray-800 dark:text-gray-300 border border-gray-200 dark:border-gray-700 transition transform duration-1000",
      opts: {
        placement: {
          none: "",
          top: "fixed top-24 left-1/2 -translate-x-1/2",
          bottom: "fixed bottom-5 left-1/2 -translate-x-1/2",
          top_right: "fixed top-24 left-1/2 -translate-x-1/2 sm:transform-none sm:top-24 sm:right-5 sm:left-auto",
          top_left: "fixed top-24 left-1/2 -translate-x-1/2 sm:transform-none sm:top-24 sm:left-5",
          bottom_right: "fixed bottom-5 left-1/2 -translate-x-1/2 sm:transform-none sm:bottom-5 sm:right-5 sm:left-auto",
          bottom_left: "fixed bottom-5 left-1/2 -translate-x-1/2 sm:transform-none sm:bottom-5 sm:left-5"
        }
      },
      button: {
        close: "ms-auto -mx-1.5 -my-1.5 self-start hover:bg-gray-100 dark:hover:bg-gray-700 focus:ring-1.5 focus:ring-gray-300 py-1.5 px-1.5"
      },
      icon: {
        close: "h-4 w-4"
      }
    },
    flash: {
      base: "flex flex-col-reverse gap-4 z-50",
      opts: {
        placement: {
          top: "fixed top-24 left-1/2 -translate-x-1/2",
          bottom: "fixed bottom-5 left-1/2 -translate-x-1/2",
          top_right: "fixed top-24 left-1/2 -translate-x-1/2 sm:transform-none sm:top-24 sm:right-5 sm:left-auto",
          top_left: "fixed top-24 left-1/2 -translate-x-1/2 sm:transform-none sm:top-24 sm:left-5",
          bottom_right: "fixed bottom-5 left-1/2 -translate-x-1/2 sm:transform-none sm:bottom-5 sm:right-5 sm:left-auto",
          bottom_left: "fixed bottom-5 left-1/2 -translate-x-1/2 sm:transform-none sm:bottom-5 sm:left-5"
        }
      },
      icon: {
        notice: "inline-flex items-center justify-center shrink-0 w-8 h-8 rounded-lg text-green-500 bg-green-100 dark:bg-green-800 dark:text-green-200",
        alert: "inline-flex items-center justify-center shrink-0 w-8 h-8 rounded-lg text-red-500 bg-red-100 dark:bg-red-800 dark:text-red-200"
      },
      message: "ms-3 text-sm font-normal mr-1.5"
    },
    label: {
      base: "block mb-2 text-sm font-medium",
      opts: {
        color: {
          failure: "text-red-600 dark:text-red-400",
          success: "text-green-800 dark:text-green-900",
          warning: "text-yellow-800 dark:text-yellow-900",
          blue: "text-blue-700 dark:text-blue-600",
          teal: "text-teal-700 dark:text-teal-600",
          alt: "text-gray-900 dark:text-gray-400",
          dark: "text-gray-800 dark:text-gray-700",
          dark_gray: "text-gray-700 dark:text-gray-500",
          light: "text-gray-900 dark:text-white",
          green: "text-green-700 dark:text-green-600",
          red: "text-red-700 dark:text-red-600",
          yellow: "text-yellow-400 dark:text-yellow-300",
          purple: "text-purple-700 dark:text-purple-600"
        },
        size: {
          xxs: "text-xxs",
          xs: "text-xs",
          sm: "text-sm",
          md: "text-base",
          lg: "text-lg",
          xl: "text-xl"
        }
      }
    },
    checkbox: {
      base: "w-4 h-4 border border-gray-300 rounded-sm bg-gray-50 focus:ring-3 focus:ring-blue-300 dark:bg-gray-700 dark:border-gray-600 dark:focus:ring-blue-600 dark:ring-offset-gray-800 dark:focus:ring-offset-gray-800"
    },
    select: {
      base: "bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
    },
    input_text: {
      base: "block w-full text-gray-900 border border-gray-300 rounded-lg bg-gray-50 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500",
      opts: {
        disabled: "cursor-not-allowed dark:placeholder-gray-400",
        color: {
          failure: "border-red-600 text-red-600 placeholder-red-700 dark:text-red-400 dark:placeholder-red-400 dark:border-red-400 focus:ring-red-500 dark:bg-gray-700 focus:border-red-500"
        },
        size: {
          large: "p-4 text-base",
          base: "p-2.5 text-sm",
          small: "p-2 text-xs"
        }
      }
    },
    error_text: {
      base: "text-sm text-red-600 dark:text-red-400 mt-2",
      opts: {
        size: {
          xxs: "text-xxs",
          xs: "text-xs",
          sm: "text-sm",
          md: "text-base",
          lg: "text-lg",
          xl: "text-xl"
        }
      }
    }
  }.freeze

  private_constant :COMPONENTS

  class << self
    # Returns the list of components defined in the theme.
    #
    # @return [Array] the array of components
    def components
      COMPONENTS
    end

    # Returns the keys of the COMPONENTS hash.
    #
    # @return [Array] an array of keys from the COMPONENTS hash
    def components_keys
      components.keys
    end

    # Checks if a given component exists within the components hash.
    #
    # @param component [String, Symbol] the name of the component to check for.
    # @return [Boolean] true if the component exists, false otherwise.
    def has_component?(component)
      return false unless components

      components.key?(component.to_sym)
    end


    # Retrieves the specified theme component or its nested elements.
    #
    # @param component [Symbol, String] the key representing the theme component.
    # @param elements [Array<Symbol, String>] optional nested keys to retrieve specific elements within the component.
    # @return [Object, nil] the value of the specified component or nested elements, or nil if not found.
    # @raise [ArgumentError] if the specified component or elements are invalid.
    def get(component, *elements)
      validate_component!(component)

      if elements.empty?
        return components[component]
      end

      data = components.dig(component, *elements)

      raise ArgumentError, "Invalid theme component: #{component} with elements: #{elements.inspect}" if data.nil?

      data
    end

    # Returns a string representation of the specified component and elements,
    # with spaces replaced by dots.
    #
    # @param component [Object] the component to retrieve
    # @param elements [Array<Object>] additional elements to retrieve
    # @return [String] the string representation of the component and elements with spaces replaced by dots
    def get_to_css_class(component, *elements)
      data = get(component, *elements)
      data = data[:base] if data.is_a?(Hash) && data[:base]

      raise ArgumentError, "You must point to a component element" unless data.is_a?(String)
      return "" if data.empty?

      # Replace spaces with dots and escape special characters
      classes = data.gsub(/[:#\.,\/]/) { |match| "\\#{match}" }
      classes = classes.tr(" ", ".")

      ".#{classes}"
    end

    # Validates the presence of a theme component.
    #
    # @param component [String] the name of the component to validate.
    # @return [void]
    # @raise [ArgumentError] if the component is not found in the theme.
    def validate_component!(component)
      raise ArgumentError, "Theme component '#{component}' not found" unless Theme.has_component?(component)
    end

    # Validates the provided options against the theme element options.
    #
    # @param options [Hash] The options to validate.
    # @param component [Symbol] The component to which the options belong.
    # @param elements [Array<Symbol>] The elements within the component.
    # @return [void]
    # @raise [ArgumentError] If an option has an invalid value or type.
    def validate_options!(options, component, *elements)
      theme_element_opts = get(component, *elements, :opts)

      theme_element_opts.each do |theme_opt_key, theme_opt_values|
        next unless options.key?(theme_opt_key)

        if theme_opt_values.is_a?(String)
          raise ArgumentError, "Option '#{theme_opt_key}' expects a boolean value" unless options[theme_opt_key] == true
        elsif theme_opt_values.is_a?(Hash)
          allowed_values = theme_opt_values.keys
          unless allowed_values.include?(options[theme_opt_key].to_sym)
            raise ArgumentError, "Invalid value '#{options[theme_opt_key]}' for option '#{theme_opt_key}'. Allowed values: #{allowed_values.join(', ')}"
          end
        end
      end
    end
  end

  class ComponentProcessor
    # Initializes a new ComponentProcessor.
    #
    # @param component [String, Symbol] the component to be themed.
    # @param options [Hash] a hash of options for the theme.
    # @param default_classes [String] the default CSS classes for the component.
    # @return [ComponentProcessor] a new ComponentProcessor instance.
    def initialize(component, options, default_classes)
      @component = component.to_sym
      @options = options
      @default_classes = default_classes
      @processed_elements = []
      @tw_merger = nil
    end

    # Processes the theme component elements.
    #
    # @param tw_merge [Boolean] whether to merge Tailwind classes (default: true)
    # @return [void]
    def process(tw_merge = true)
      result = process_component_elements(@component, @options, @default_classes)

      if result.is_a?(Hash) && result.size == 1
        processed_classes = result.values.first
      else
        processed_classes = result
      end

      if tw_merge
        @tw_merger = TailwindMerge::Merger.new

        processed_classes = merge_with_tailwind(processed_classes)
      end

      processed_classes
    end

    private

      # Processes the given component elements by fetching and processing component data.
      #
      # @param element [String, Symbol] the element to be processed.
      # @param options [Hash] additional options for processing the component.
      # @param default_classes [Array<String>] default CSS classes to be applied.
      # @return [void]
      # @raise [StandardError] if an error occurs during processing.
      def process_component_elements(element, options, default_classes)
        @processed_elements << element.to_sym

        component_data = fetch_component_data
        process_component_data(component_data, options, default_classes, @processed_elements.dup)
      ensure
        @processed_elements.pop
      end

      # Fetches data for the current component.
      #
      # This method retrieves the processed elements, excluding the first one,
      # and then calls the `Theme.get` method with the current component and
      # the remaining elements as arguments.
      # @return [Object] The data for the current component.
      def fetch_component_data
        elements = @processed_elements[1..]
        Theme.get(@component, *elements)
      end

      # Processes the component data based on its type.
      #
      # @param component_data [String, Hash] The data of the component to be processed.
      # @param options [Hash] Additional options for processing the component data.
      # @param default_classes [Array<String>] Default CSS classes to be applied.
      # @param element_path [Array<Symbol>] The path of elements being processed.
      # @return [Hash] A hash containing the processed component data.
      def process_component_data(component_data, options, default_classes, element_path)
        case component_data
        when String
          key = build_element_key(element_path)
          { key => component_data }
        when Hash
          process_component_hash(component_data, options, default_classes, element_path)
        else
          {}
        end
      end

      # Processes the component hash to generate a list of CSS classes.
      #
      # @param component_data [Hash] The hash containing component data.
      # @param options [Hash] The options provided for the component.
      # @param default_classes [Array<String>] The default classes to be applied.
      # @param element_path [Array<Symbol>] The path of elements being processed.
      # @return [Hash] A hash containing the processed component data.
      def process_component_hash(component_data, options, default_classes, element_path)
        result = {}

        if component_data[:base]
          key = build_element_key(element_path)
          result[key] = component_data[:base]
        end

        if component_data[:opts]
          Theme.validate_options!(options, @component, *element_path[1..])
          process_options(component_data[:opts], options, result, default_classes, element_path)
        end

        process_remaining_elements(component_data, options, default_classes, result)
      end

      # Processes the given component options and appends the corresponding classes to the result hash.
      #
      # @param component_opts [Hash] A hash where keys are option names and values are the possible values for those options.
      # @param options [Hash] A hash of options provided by the user.
      # @param result [Hash] A hash where the resulting classes will be stored.
      # @param default_classes [Array<String>] An array of default classes to be used if no specific class is found.
      # @param element_path [Array<Symbol>] The path of elements being processed.
      # @return [void]
      def process_options(component_opts, options, result, default_classes, element_path)
        component_opts.each do |opt_key, opt_values|
          next unless options[opt_key]

          new_class = extract_class_for_option(opt_values, options[opt_key])
          next unless new_class

          key = build_element_key(element_path)
          current_class = result[key] || ""
          result[key] = [ current_class, new_class, options[:class], default_classes ].compact.join(" ").strip
        end
      end

      # Extracts the class for a given option value.
      #
      # @param [Array, Hash] opt_values The possible option values, which can be an array or a hash.
      # @param [Object] option_value The value of the option to extract the class for.
      # @return [Object] The class corresponding to the option value if it exists, or the opt_values itself if option_value is true.
      def extract_class_for_option(opt_values, option_value)
        return opt_values if option_value == true

        opt_values[option_value.to_sym] if opt_values.is_a?(Hash)
      end

      # Processes the remaining elements in the component data, excluding :base and :opts keys.
      # For each remaining key, it processes the component elements and concatenates the resulting
      # sub-classes to the provided classes array.
      #
      # @param component_data [Hash] The data of the component containing various keys and values.
      # @param options [Hash] The options hash that may contain additional configuration.
      # @param default_classes [Array<String>] The array of default classes to be used.
      # @param classes [Array<String>] The array where the resulting classes will be concatenated.
      # @return [Array<String>] The array of classes containing the processed component data.
      def process_remaining_elements(component_data, options, default_classes, result)
        component_data.each do |key, value|
          next if [ :base, :opts ].include?(key)

          sub_result = process_component_elements(key, options, default_classes)
          result.merge!(sub_result)
        end

        result
      end

      # Merges the given classes with Tailwind CSS classes.
      #
      # @param classes [String, Hash] The classes to be merged. Can be a string or a hash.
      # @return [String, Hash] The merged classes. Returns a string if the input is a string,
      #   or a hash with merged values if the input is a hash.
      def merge_with_tailwind(classes)
        if classes.is_a?(Hash)
          classes.transform_values! { |classes| @tw_merger.merge(classes) }

          return classes
        end

        @tw_merger.merge(classes)
      end

      # Builds a key for the element path by joining all elements except the first one (component name).
      #
      # @param element_path [Array<Symbol>] The path of elements being processed.
      # @return [Symbol] The key for the element path.
      def build_element_key(element_path)
        return :base if element_path.size <= 1

        element_path[1..].join("_").to_sym
      end
  end
end
