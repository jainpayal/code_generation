class GenerateTokenJob < ApplicationJob
  queue_as :default

  def perform(upto_number)
  	(1.."#{upto_number}".to_i).each do |i|
  		seed = "#{rand(10000)}-#{Time.now}"
  		code = Digest::SHA1.hexdigest(seed)[0,6]
  		SecretCode.create(code: code)
  	end
  end

end
