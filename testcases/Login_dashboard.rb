class Login
  def self.dashboard
    begin
      $driver.get $base_url
      $report_file   = "C:\\Users\\webonise\\Desktop\\CRT Automation\\CRT\\result.csv"

      #Login to the product dashboard
      $driver.find_element(:id, 'username').send_keys 'anirban.tcs@crucibleapp.com'
      $driver.find_element(:id, 'password').send_keys 'anirban@6186'
      $driver.find_element(:class, 'btn-inverse').click

      #Spalash screen
      $driver.find_element(:class, 'nextSlideBtn').click
      $driver.find_element(:class, 'backBtn').click
      $driver.find_element(:class, 'nextSlideBtn').click
      $driver.find_element(:class, 'okButton').click

    end
  end
end