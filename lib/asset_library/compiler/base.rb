class AssetLibrary
  module Compiler
    class Base
      def initialize(config)
        @config = config || {}
        @asset_modules = []
      end

      attr_reader :config, :asset_modules

      def add_asset_module(asset_module)
        @asset_modules << asset_module
      end

      def write_all_caches(format = nil)
        raise NotImplementedError, "abstract method"
      end
    end
  end
end
