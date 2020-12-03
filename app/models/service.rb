class Service < ApplicationRecord

  def self.curl(project)
    resp = `curl -Is #{project.address} -L | grep HTTP/`
    resp.include?("204") || resp.include?("200") || resp.include("201")
  end

end

# return false if (ping.include?("Found") || ping.include?("ERROR"))
# return ping.include?(project.address)
