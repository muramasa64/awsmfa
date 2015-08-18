require 'thor'
require 'thor/aws'

module Awsmfa
  class CLI < Thor
    include Thor::Aws

    class_option :verbose, type: :boolean, default: false, aliases: [:v]

    desc :list, "List MFA Devices"
    def list
      client.list
    end

    private
    def client
      @client ||= Client.new options, aws_configuration
    end
  end
end
