require 'aws-sdk'

module Awsmfa
  class Client
    attr_reader :logger

    def initialize(cli_options = {}, aws_configuration = {})
      @cli_options = cli_options
      @logger ||= Logger.new STDOUT

      aws_configuration[:logger] = Logger.new STDOUT if @cli_options[:verbose]

      @iam = Aws::IAM::Resource.new aws_configuration
    end

    def list()
      @iam.virtual_mfa_devices.each do |d|
        user = d.user
        puts "#{d.serial_number}\t#{d.enable_date}\t#{user.name if user}"
      end
    end
  end
end
