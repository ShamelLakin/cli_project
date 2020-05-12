## listing all dependencies


require "pry"
require "httparty" ## interacting with my api
require "json"  ## parsing data from api in json
require 'dotenv/load'

require_relative "./cli_news/cli"
require_relative "./cli_news/api"
require_relative "./cli_news/article"

