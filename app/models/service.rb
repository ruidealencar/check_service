class Service < ApplicationRecord

  # def self.curl(project)
  def self.servidor_online(project)

    ping = `curl #{project.address}`

    (ping.include?(project.address)) && (ping.include?("404"))

  end

end

# return false if (ping.include?("Found") || ping.include?("ERROR"))
# return ping.include?(project.address)
