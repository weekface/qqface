require 'qqface/helper'

module Qqface
  module Rails
    if ::Rails.version < "3.1"
      require "qqface/railtie"
    else
      require "qqface/engine"
    end
  end
end

ActionView::Base.send :include, Qqface::Helper