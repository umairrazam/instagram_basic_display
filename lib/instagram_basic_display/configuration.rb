# frozen_string_literal: true

# Copyright 2020 ConvertKit, LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

module InstagramBasicDisplay
  # Holds configuration values that are used to make requests against the
  # Instagram API
  class Configuration
    attr_accessor :client_id, :client_secret, :redirect_uri, :auth_token

    # Constructor method
    #
    # @param auth_token [String] token that will be used to make requests
    #
    # @return void
    def initialize(auth_token: nil)
      @client_id = set_client_id
      @client_secret = set_client_secret
      @redirect_uri = set_redirect_uri
      @auth_token = auth_token
    end

    def set_client_id
      #ENV.fetch('INSTAGRAM_CLIENT_ID')
      #Rails.application.credentials[:INSTAGRAM_CLIENT_ID]
      Rails.application.credentials.instagram[:client_id]
    end

    def set_client_secret
      #ENV.fetch('INSTAGRAM_CLIENT_SECRET')
      #Rails.application.credentials[:INSTAGRAM_CLIENT_SECRET]
      Rails.application.credentials.instagram[:client_secret]
    end

    def set_redirect_uri
      #ENV.fetch('INSTAGRAM_REDIRECT_URI')
      #Rails.application.credentials[:INSTAGRAM_REDIRECT_URI]
      Rails.application.credentials.instagram[:access_token]
    end
  end
end
