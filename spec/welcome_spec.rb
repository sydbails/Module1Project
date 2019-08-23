require_relative 'spec_helper'
require_relative '../app/models/user.rb'
require_relative '../app/models/joke.rb'
require_relative '../app/models/favorite.rb'

describe User do

    before(:each) do
        @test2 = User.create(username: "tester2", first_name: "Tester")
        # @test3 = User.find(7)
        # @syd = User.find(39)
    end

    describe "attributes" do
        it "has a username and first name given to it from our migration files" do
            expect(@test2.username).to eq("tester2")
            expect(@test2.first_name).to eq("Tester")
            # expect(@hemesh.username).to eq("hemeshvpatel")
            # expect(@hemesh.first_name).to eq("Hemesh")
            # expect(@syd.username).to eq("sydbails")
            # expect(@syd.first_name).to eq("syd")
        end
    end

    # describe "favorites" do
    #     it "has a favorite" do
    #         expect(Favorite.where(username_id: 42).count.to eq(2))
    #     end
    # end
    


end
