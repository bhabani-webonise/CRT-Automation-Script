require './include.rb'
#require '../CRT/testcases/Login_dashboard'
#require '../CRT/CFA'
#require '../CRT/testcases/Create_RPA'
require '../CRT/testcases/User_Assessment'

class Crt < Test::Unit::TestCase

  @@browser = "chrome"
  build_path = PreRequisite.create_build_structure(Dir.pwd)
  $screenshot_directory_path = PreRequisite.create_screenshot_directory_path(Dir.pwd.to_s, build_path)
  $report_file = PreRequisite.create_report_file(Dir.pwd.to_s, build_path)
  $log_file = PreRequisite.create_log_file(Dir.pwd.to_s, build_path)

  SeleniumConfig = YAML.load_file(Dir.pwd.to_s + '/config/selenium-framework.yml')

  def setup
    #client = Selenium::WebDriver::Remote::Http::Default.new
    #client.timeout = 120 # seconds
    #$driver = Selenium::WebDriver.for(:remote, :http_client => client, :url => 'http://<IP ADDRESS>:<PORT NUMBER>/wd/hub', :desired_capabilities => @@browser.to_sym)
	$driver = Selenium::WebDriver.for @@browser.to_sym
    $base_url = 'http://crpt.crucibletesting.com/users/users/login'
    $driver.manage.timeouts.implicit_wait = 180
    @verification_errors = []
  end

  # Write the testcases here:

  def teardown
    $driver.quit
    assert_equal [], @verification_errors
  end

  #def test_scripts1
  #  Login.dashboard
  #end

  #def test_scripts2
  #  Cultural_Assessment.setup_cfa
  #end
  #def test_scripts3
  #  Role_Assessment.RPA
  #end
  def test_scripts4
    Assessment.UserExam
  end

  def verify(&blk)
    yield
  rescue Test::Unit::AssertionFailedError => ex
    @verification_errors << ex
  end

end