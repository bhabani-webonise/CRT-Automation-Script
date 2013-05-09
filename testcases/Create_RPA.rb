class Role_Assessment
    def self.RPA
    begin
      $driver.get $base_url
      #Login to the product dashboard
      $driver.find_element(:id, 'username').send_keys 'anirban.tcs@crucibleapp.com'
      $driver.find_element(:id, 'password').send_keys 'anirban@6186'
      $driver.find_element(:class, 'btn-inverse').click

      #Spalash screen
      $driver.find_element(:class, 'btnBlack').click
      #$driver.find_element(:class, 'backBtn').click
      #$driver.find_element(:class, 'nextSlideBtn').click
      $driver.find_element(:class, 'okButton').click

      #$driver.find_element(:class,'jobRolesIcon').click
      ##$driver.find_element(:class,'btnThin').click
      #$driver.find_element(:class,'btnBlack').click
      #
      #$driver.find_element(:id,'DaOrganisationsProduct0category_name_id').click
      #$driver.find_element(:id,'DaOrganisationsProduct1category_name_id').click
      #$driver.find_element(:id,'DaOrganisationsProduct2category_name_id').click
      #
      #$driver.find_element(:id,'nextSubmitButton').click
      #$driver.find_element(:id,'setResponseTags').click
      #$driver.find_element(:link, "Add more behaviours").click
      #$driver.find_element(:id,'DaOrganisationsProduct3category_name_id').click
      #$driver.find_element(:id,'nextSubmitButton').click

      $driver.find_element(:class,'jobRolesIcon').click
      $driver.find_element(:class,'btnThin').click
      job_title="#{Faker::Company.catch_phrase} #{'Engineer'}"
      $driver.find_element(:id, 'JobRoleName').send_keys job_title
      Selenium::WebDriver::Support::Select.new($driver.find_element(:class, "levelSelector")).select_by(:text, "Business unit 1")
      $driver.find_element(:class,'btnBlack').click

      $driver.find_element(:id,'RpaBehaviour0da_organisations_product_id').click
      $driver.find_element(:id,'RpaBehaviour1da_organisations_product_id').click
      $driver.find_element(:id,'RpaBehaviour2da_organisations_product_id').click
      $driver.find_element(:class,'nextBtn').click

      $driver.find_element(:id,'RpaScenario0ScenarioId').click
      $driver.find_element(:id,'3').click
      $driver.find_element(:xpath,"//form[@id='RpaScenarioSetScenariosForm']/div[2]/div[2]/div/span").click
      $driver.find_element(:id,'4').click
      $driver.find_element(:xpath,"//form[@id='RpaScenarioSetScenariosForm']/div[2]/div[3]/div/span").click
      $driver.find_element(:id,'6').click
      $driver.find_element(:class,' btnBlack').click
      $driver.find_element(:class,'nextBtn').click

      Selenium::WebDriver::Support::Select.new($driver.find_element(:class, "rpaResponseTag")).select_by(:text, "Very Effective")
      $driver.find_element(:xpath,"//form[@id='RpaScenarioAddResponseTagsForm']/div[2]/div[2]/div[2]/div/span/span[2]") .click
      Selenium::WebDriver::Support::Select.new($driver.find_element(:class, "rpaResponseTag")).select_by(:text, "Somewhat Effective")
      $driver.find_element(:xpath,"//form[@id='RpaScenarioAddResponseTagsForm']/div[2]/div[2]/div[3]/div/span/span[2]") .click
      Selenium::WebDriver::Support::Select.new($driver.find_element(:class, "rpaResponseTag")).select_by(:text, "Very Effective")
      $driver.find_element(:xpath,"//form[@id='RpaScenarioAddResponseTagsForm']/div[2]/div[2]/div[4]/div/span") .click
      Selenium::WebDriver::Support::Select.new($driver.find_element(:class, "rpaResponseTag")).select_by(:text, "Counter Productive")
      $driver.find_element(:id,'saveAndContinue').click

      Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "RpaResponse0RpaTagId")).select_by(:text, "very effective")
      $driver.find_element(:xpath, "//form[@id='RpaScenarioAddResponseTagsForm']/div[2]/div[2]/div[2]/div/span/span[2]").click
      Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "RpaResponse1RpaTagId")).select_by(:text, "somewhat effective")
      $driver.find_element(:xpath, "//form[@id='RpaScenarioAddResponseTagsForm']/div[2]/div[2]/div[3]/div/span/span[2]").click
      Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "RpaResponse2RpaTagId")).select_by(:text, "ineffective")
      $driver.find_element(:xpath, "//form[@id='RpaScenarioAddResponseTagsForm']/div[2]/div[2]/div[4]/div/span").click
      Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "RpaResponse3RpaTagId")).select_by(:text, "counter productive")

      $driver.find_element(:class,' btnBlack').click

      Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "RpaResponse0RpaTagId")).select_by(:text, "very effective")
      $driver.find_element(:xpath, "//form[@id='RpaScenarioAddResponseTagsForm']/div[2]/div[2]/div[2]/div/span/span[2]").click
      Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "RpaResponse1RpaTagId")).select_by(:text, "somewhat effective")
      $driver.find_element(:xpath, "//form[@id='RpaScenarioAddResponseTagsForm']/div[2]/div[2]/div[3]/div/span/span[2]").click
      Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "RpaResponse2RpaTagId")).select_by(:text, "ineffective")
      $driver.find_element(:xpath, "//form[@id='RpaScenarioAddResponseTagsForm']/div[2]/div[2]/div[4]/div/span").click
      Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "RpaResponse3RpaTagId")).select_by(:text, "counter productive")

      $driver.find_element(:class,' btnBlack').click

      $driver.find_element(:class, 'ui-slider-handle').click
      $driver.find_element(:id, 'passScoreSlider').send_keys 'ArrowUp'

      $driver.find_element(:id,'saveResponses').click

      Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "RpaResponse0RpaTagId")).select_by(:text, "very effective")
      $driver.find_element(:xpath, "//form[@id='RpaScenarioAddResponseTagsForm']/div[2]/div[2]/div[2]/div/span/span[2]").click
      Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "RpaResponse1RpaTagId")).select_by(:text, "somewhat effective")
      $driver.find_element(:xpath, "//form[@id='RpaScenarioAddResponseTagsForm']/div[2]/div[2]/div[3]/div/span/span[2]").click
      Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "RpaResponse2RpaTagId")).select_by(:text, "ineffective")
      $driver.find_element(:xpath, "//form[@id='RpaScenarioAddResponseTagsForm']/div[2]/div[2]/div[4]/div/span").click
      Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "RpaResponse3RpaTagId")).select_by(:text, "counter productive")

      $driver.find_element(:class,' btnBlack').click


      Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "RpaResponse0RpaTagId")).select_by(:text, "very effective")
      $driver.find_element(:xpath, "//form[@id='RpaScenarioAddResponseTagsForm']/div[2]/div[2]/div[2]/div/span/span[2]").click
      Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "RpaResponse1RpaTagId")).select_by(:text, "somewhat effective")
      $driver.find_element(:xpath, "//form[@id='RpaScenarioAddResponseTagsForm']/div[2]/div[2]/div[3]/div/span/span[2]").click
      Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "RpaResponse2RpaTagId")).select_by(:text, "ineffective")
      $driver.find_element(:xpath, "//form[@id='RpaScenarioAddResponseTagsForm']/div[2]/div[2]/div[4]/div/span").click
      Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "RpaResponse3RpaTagId")).select_by(:text, "counter productive")

      $driver.find_element(:class,' btnBlack').click

      Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "RpaResponse0RpaTagId")).select_by(:text, "very effective")
      $driver.find_element(:xpath, "//form[@id='RpaScenarioAddResponseTagsForm']/div[2]/div[2]/div[2]/div/span/span[2]").click
      Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "RpaResponse1RpaTagId")).select_by(:text, "somewhat effective")
      $driver.find_element(:xpath, "//form[@id='RpaScenarioAddResponseTagsForm']/div[2]/div[2]/div[3]/div/span/span[2]").click
      Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "RpaResponse2RpaTagId")).select_by(:text, "ineffective")
      $driver.find_element(:xpath, "//form[@id='RpaScenarioAddResponseTagsForm']/div[2]/div[2]/div[4]/div/span").click
      Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "RpaResponse3RpaTagId")).select_by(:text, "counter productive")

      $driver.find_element(:class,' btnBlack').click

      Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "RpaResponse0RpaTagId")).select_by(:text, "very effective")
      $driver.find_element(:xpath, "//form[@id='RpaScenarioAddResponseTagsForm']/div[2]/div[2]/div[2]/div/span/span[2]").click
      Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "RpaResponse1RpaTagId")).select_by(:text, "somewhat effective")
      $driver.find_element(:xpath, "//form[@id='RpaScenarioAddResponseTagsForm']/div[2]/div[2]/div[3]/div/span/span[2]").click
      Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "RpaResponse2RpaTagId")).select_by(:text, "ineffective")
      $driver.find_element(:xpath, "//form[@id='RpaScenarioAddResponseTagsForm']/div[2]/div[2]/div[4]/div/span").click
      Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "RpaResponse3RpaTagId")).select_by(:text, "counter productive")

      $driver.find_element(:class,' btnBlack').click


      Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "RpaResponse0RpaTagId")).select_by(:text, "very effective")
      $driver.find_element(:xpath, "//form[@id='RpaScenarioAddResponseTagsForm']/div[2]/div[2]/div[2]/div/span/span[2]").click
      Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "RpaResponse1RpaTagId")).select_by(:text, "somewhat effective")
      $driver.find_element(:xpath, "//form[@id='RpaScenarioAddResponseTagsForm']/div[2]/div[2]/div[3]/div/span/span[2]").click
      Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "RpaResponse2RpaTagId")).select_by(:text, "ineffective")
      $driver.find_element(:xpath, "//form[@id='RpaScenarioAddResponseTagsForm']/div[2]/div[2]/div[4]/div/span").click
      Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "RpaResponse3RpaTagId")).select_by(:text, "counter productive")

      $driver.find_element(:class,' btnBlack').click

      Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "RpaResponse0RpaTagId")).select_by(:text, "very effective")
      $driver.find_element(:xpath, "//form[@id='RpaScenarioAddResponseTagsForm']/div[2]/div[2]/div[2]/div/span/span[2]").click
      Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "RpaResponse1RpaTagId")).select_by(:text, "somewhat effective")
      $driver.find_element(:xpath, "//form[@id='RpaScenarioAddResponseTagsForm']/div[2]/div[2]/div[3]/div/span/span[2]").click
      Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "RpaResponse2RpaTagId")).select_by(:text, "ineffective")
      $driver.find_element(:xpath, "//form[@id='RpaScenarioAddResponseTagsForm']/div[2]/div[2]/div[4]/div/span").click
      Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "RpaResponse3RpaTagId")).select_by(:text, "counter productive")

      $driver.find_element(:class,' btnBlack').click
      Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "RpaResponse0RpaTagId")).select_by(:text, "very effective")
      $driver.find_element(:xpath, "//form[@id='RpaScenarioAddResponseTagsForm']/div[2]/div[2]/div[2]/div/span/span[2]").click
      Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "RpaResponse1RpaTagId")).select_by(:text, "somewhat effective")
      $driver.find_element(:xpath, "//form[@id='RpaScenarioAddResponseTagsForm']/div[2]/div[2]/div[3]/div/span/span[2]").click
      Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "RpaResponse2RpaTagId")).select_by(:text, "ineffective")
      $driver.find_element(:xpath, "//form[@id='RpaScenarioAddResponseTagsForm']/div[2]/div[2]/div[4]/div/span").click
      Selenium::WebDriver::Support::Select.new($driver.find_element(:id, "RpaResponse3RpaTagId")).select_by(:text, "counter productive")

      $driver.find_element(:class,' btnBlack').click


    end
    end


end