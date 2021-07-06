module Jekyll
  module SortStable   
    def sort_stable(input, key)
      input.sort_by.with_index { |h,i| [h[key], i] }
    end
  end
end

Liquid::Template.register_filter(Jekyll::SortStable)