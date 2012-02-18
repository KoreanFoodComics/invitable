require 'spec_helper'

describe Invitable::Engine do
  before { Invitable::Engine.stubs(:called_from).returns('/lib/invitable') }

  describe '.app_path' do
    it 'returns the path to the engine app directory' do
      Invitable::Engine.app_path.should eq '/app'
    end
  end

  describe 'controller_path' do
    it 'returns the path to the named engine controller' do
      Invitable::Engine.controller_path(:test_controller).should eq '/app/controllers/invitable/test_controller'
    end
  end

  describe 'helper_path' do
    it 'returns the path to the named engine helper' do
      Invitable::Engine.helper_path(:test_helper).should eq '/app/helpers/invitable/test_helper'
    end
  end

  describe 'mailer_path' do
    it 'returns the path to the named engine mailer' do
      Invitable::Engine.mailer_path(:test_mailer).should eq '/app/mailers/invitable/test_mailer'
    end
  end

  describe 'model_path' do
    it 'returns the path to the named engine model' do
      Invitable::Engine.model_path(:test_model).should eq '/app/models/invitable/test_model'
    end
  end
end
