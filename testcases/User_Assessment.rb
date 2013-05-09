class Assessment
  def self.UserExam
    $driver.get 'https://crpt.crucibleapp.com/users/candidates/add/xIxlQtD88e'
    f_name=Faker::Name.first_name
    $driver.find_element(:id, 'CandidateName').send_keys f_name
    exam_email="#{Faker::Internet.user_name}#{'@crucibleapp.com'}"
    $driver.find_element(:id, 'CandidateEmail').send_keys exam_email
    $driver.find_element(:class,' btn-large').click
    $driver.find_element(:link,'continue').click

    count = 1
    while count <= 25 do
      $driver.find_element(:xpath,'//div[2]/div/div/span').click
      $driver.find_element(:id,'saveAndContinue').click
      count = count+1
     end

    #RPA Assessment
    $driver.find_element(:class,'btn-large').click
    $driver.find_element(:link,'continue').click

    counts = 1
    while counts <= 9 do
    $driver.find_element(:xpath,'//div[2]/div[1]/a').click
    $driver.find_element(:link,'very effective').click
    $driver.find_element(:xpath,'//div[3]/div[1]/a').click
    $driver.find_element(:link,'ineffective').click
    $driver.find_element(:xpath,'//div[4]/div[1]/a').click
    $driver.find_element(:link,'counter productive').click
    $driver.find_element(:xpath,'//div[5]/div[1]/a').click
    $driver.find_element(:link,'somewhat effective').click
    $driver.find_element(:id,'saveAndContinue').click
    counts = counts+1
    end
  end
  end