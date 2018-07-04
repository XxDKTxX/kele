require 'httparty'

module Roadmap
    
    include HTTParty
    
    base_uri 'https://www.bloc.io/api/v1'
    
    def get_roadmap(roadmap_id)
        response = self.class.get("/roadmaps/#{roadmap_id}", headers: { "authorization" => @auth_token})
        @roadmap = JSON.parse(response.body)
    end

    def get_checkpoint(checkpoint_id)
        response = self.class.get("/checkpoints/#{checkpoint_id}", headers: { "authorization" => @auth_token})
        @checkpoint = JSON.parse(response.body)
    end
    
    def get_checkpoint(checkpoint_id)
      response = self.class.get(api_url("checkpoints/#{checkpoint_id}"), headers: { "authorization" => @auth_token })
      @checkpoints = JSON.parse(response.body)
    end

    def get_remaining_checkpoints(chain_id)
    #chain id = 6698
      response = self.class.get(api_url("enrollment_chains/#{chain_id}/checkpoints_remaining_in_section"), headers: { "authorization" => @auth_token })
      @remaining_checkpoints = JSON.parse(response.body)
    end


end