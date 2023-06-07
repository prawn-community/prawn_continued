# frozen_string_literal: true

require_relative '../../pdf/core/pdf_object'
require_relative '../../pdf/core/annotations'
require_relative '../../pdf/core/byte_string'
require_relative '../../pdf/core/destinations'
require_relative '../../pdf/core/filters'
require_relative '../../pdf/core/stream'
require_relative '../../pdf/core/reference'
require_relative '../../pdf/core/literal_string'
require_relative '../../pdf/core/filter_list'
require_relative '../../pdf/core/page'
require_relative '../../pdf/core/object_store'
require_relative '../../pdf/core/document_state'
require_relative '../../pdf/core/name_tree'
require_relative '../../pdf/core/graphics_state'
require_relative '../../pdf/core/page_geometry'
require_relative '../../pdf/core/outline_root'
require_relative '../../pdf/core/outline_item'
require_relative '../../pdf/core/renderer'
require_relative '../../pdf/core/text'

module PDF
  module Core
    module Errors
      # This error is raised when pdf_object() fails
      FailedObjectConversion = Class.new(StandardError)

      # This error is raise when trying to restore a graphic state that
      EmptyGraphicStateStack = Class.new(StandardError)

      # This error is raised when Document#page_layout is set to anything
      # other than :portrait or :landscape
      InvalidPageLayout = Class.new(StandardError)
    end
  end
end
