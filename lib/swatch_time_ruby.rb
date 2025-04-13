# frozen_string_literal: true

require_relative 'swatch_time_ruby/version'
require 'time'

module SwatchTimeRuby
  class Error < StandardError; end

  def self.get_swatch_time(time = Time.now, use_at_symbol = true, show_decimals = true, add_date = false)
    time = Time.at(time, in: 'A')

    timeInMS = (((time.hour * 60 + time.min) * 60 + time.sec) * 1000) + time.subsec.to_f

    beat_time = if show_decimals
                  (timeInMS / 86_400).round(2)
                else
                  (timeInMS / 86_400).abs.floor
                end

    output = if use_at_symbol
               '@' + beat_time.to_s
             else
               beat_time
             end

    output = time.strftime('%d/%m/%Y') + ' @' + output.to_s if add_date

    output
  end
end
