require_relative 'helper.rb'
require "report_builder"
require "date"

Before do
    driver.start_driver
    driver.manage.timeouts.implicit_wait = 10
end

After do |scenario|
    scenario_name = scenario.name.gsub(/\s+/,'_').tr('/','_')
  
    if scenario.failed?
      tirar_foto(scenario_name.downcase!, 'falhou')
    else
      tirar_foto(scenario_name.downcase!, 'passou')
    end
    driver.quit_driver
end

at_exit do
  ReportBuilder.configure do |config|
    config.input_path = 'report/report.json'
    config.report_path = 'report/reportJson'
    config.report_types = [:HTML]
    config.report_title = 'Pixel Mobile'
    config.additional_info = {'Device'=> 'Android', 'environment'=> 'Dev', "Data do Teste"=> DateTime.now.to_s}
    config.color = "indigo"
  end
  ReportBuilder.build_report
end  