class  Cultural_Assessment
  def self.setup_cfa
    begin
      $driver.get $base_url
      $report_file   = "C:\\Users\\webonise\\Desktop\\CRT Automation\\CRT\\result.csv"
      #Login to the product dashboard
      $driver.find_element(:id, 'username').send_keys 'anirban.tcs@crucibleapp.com'
      $driver.find_element(:id, 'password').send_keys 'anirban@6186'
      $driver.find_element(:class, 'btn-inverse').click

      #Spalash screen
      $driver.find_element(:class, 'nextSlideBtn').click
      #$driver.find_element(:class, 'backBtn').click
      #$driver.find_element(:class, 'nextSlideBtn').click
      $driver.find_element(:class, 'okButton').click

      #Setup CFA
      $driver.find_element(:class, 'culturalIcon').click
      $driver.find_element(:class, 'btnThin').click

      $driver.find_element(:id, 'CoreThemeCheckbox_1').click
      #$driver.find_element(:id, 'CoreThemeCheckbox_2').click
      $driver.find_element(:id, 'saveCoreThemes').click
      #Set parameters
      #$driver.find_element(:id, 'paramSubmit').click

      #select questions


      $driver.find_element(:xpath, ".//*[@id='23']").click
      $driver.find_element(:xpath, ".//*[@id='24']").click
      $driver.find_element(:xpath, ".//*[@id='21']").click
      $driver.find_element(:xpath, ".//*[@id='22']").click

      $driver.find_element(:id, 'doneBtn').click
      $driver.find_element(:id, 'saveQuestions').click

      $driver.find_element(:class, 'ui-slider-handle').focus
      $driver.find_element(:id, 'assessmentScoreSlider').send_keys 'arrow_up'
      $driver.find_element(:id, 'completedAssessment').click

    end
  end

end