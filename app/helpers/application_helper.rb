module ApplicationHelper
  def inline_svg(filename, options = {})
    file = Rails.root.join('app', 'assets', 'images', filename)
    
    return unless File.exist?(file)

    svg = File.read(file).html_safe
    
    if options[:class].present?
      svg = svg.to_s.sub('>', " class='#{options[:class]}'>").html_safe
    end

    svg
  end
end