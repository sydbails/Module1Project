require_relative 'spec_helper'

describe User do

    before(:each) do
        @test1 = User.find(42)
        @hemesh = User.find(7)
        @syd = User.find(39)
    end

describe "attributes" do
    it "has a username and first name given to it from our migration files" do
        expect(@test1.username).to eq("tester")
        expect(@test1.first_name).to eq("Test")
        expect(@hemesh.username).to eq("hemeshvpatel")
        expect(@hemesh.first_name).to eq("Hemesh")
        expect(@syd.username).to eq("sydbails")
        expect(@syd.first_name).to eq("syd")
    end
end

describe "favorites" do
    it "has a favorite" do
        expect(Favorite.where(username_id: 42).count.to eq(2))
    end
end
    


end
