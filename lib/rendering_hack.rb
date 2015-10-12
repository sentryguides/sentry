module Middleman
  module CoreExtensions
    module Rendering

      # Rendering instance methods
      module InstanceMethods
        def _render_with_all_renderers(path, locs, context, opts, &block)
          # Keep rendering template until we've used up all extensions. This
          # handles cases like `style.css.sass.erb`
          content = nil

          ### Ugly hack: Always render markdown files as erb templates
          if File.extname(path) == ".md"
            content = template_data_for_file(path)
            path += ".erb"
          end
          ###

          while ::Tilt[path]
            begin
              opts[:template_body] = content if content

              content = if block_given?
                render_individual_file(path, locs, opts, context, &block)
              else
                render_individual_file(path, locs, opts, context)
              end

              path = File.basename(path, File.extname(path))
            rescue LocalJumpError
              raise "Tried to render a layout (calls yield) at #{path} like it was a template. Non-default layouts need to be in #{source}/#{config[:layouts_dir]}."
            end
          end

          content
        end
      end
    end
  end
end
