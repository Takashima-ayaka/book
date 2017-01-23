require 'rails_helper'

RSpec.describe "Taggings", type: :request do
    let(:admin_user) { User.all.first }
    before(:each) { sign_in admin_user }
end
