# frozen_string_literal: true

require_relative "swatch_time_ruby/version"
require 'time'

module SwatchTimeRuby
  class Error < StandardError; end
  def getSwatchTime(time = Time.now, useAtSymbol = true, showDecimals= true, addDate = false)
    =begin
    I F*CKING HATE RUBY anyways i love ruby's time parsing functionality
    anyways
    the way swatch time works is that it's beholden to the timezone in Biel, Switzerland
    this is because Swatch is a swiss company
    sadly, we cannot expect the user to pass in time that is in CET already
    because also it Isnt Actually Fucking CET
    CET observes daylight savings because (incoherent rambling)
    so we must ensure that the string is ACTUALLY in UTC+1
    =end
    time = Time.at(time, in: '+01:00')
    =begin
    now we must convert to milliseconds
    =end
    timeInMS = ((time.hour * 60 + time.min) * 60 + time.sec)* 1000 + time.ms
end
