require "appium_lib"
require "appium_console"
require "pry"
require_relative 'helper.rb'

World(Helper) 

 def login
    @login1 ||= Login.new
  end

  def acc
    @acc ||= Acc.new
  end

  def car
    @car ||= Car.new
  end

  def desejos
    @desej ||= Desejos.new
  end

caps = Appium.load_appium_txt file: File.expand_path("caps/appium.txt",__dir__), verbose: true
Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object

