require 'uri'

module ApplicationHelper

  def placeholder width = 100, height = 100, bg_color: '#CCC', text_color: "#888" 
    data_uri = "data:image/svg+xml;charset=utf-8,"

    svg_string = %Q(
      <svg xmlns='http://www.w3.org/2000/svg' width='#{width}' height='#{height}'>
        <rect width='100%' height='100%' fill='#{bg_color}' />
        <text x='#{width/2}' y='#{height/2+((width+height)/36)}' font-family="sans-serif" font-size='#{(width+height)/18}' fill='#{text_color}' text-anchor='middle'>
          #{width} x #{height}
        </text>
      </svg>
    )

    data_uri += URI.escape(svg_string)

    data_uri
  end
end
