class AssetLibrary
  module Compiler
    class Default < Base
      def write_all_caches(format = nil)
        asset_modules.each do |asset_module|
          asset_module.each_compilation do |inputs, output|
            open(output, 'w') do |file|
              inputs.each { |path| file << File.read(path) }
            end
          end
        end
      end
    end
  end
end
