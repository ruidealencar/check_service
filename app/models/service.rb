class Service < ApplicationRecord

  def self.curl(project)
    ping = `curl #{project.address}`
    ping.include?(project.project_name)
  end
end
