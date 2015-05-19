require "spec_helper"

describe User do
  it 'should have property of name' do
    user = User.new
    user.respond_to?(:name).should eq true
  end

  it 'be able to set the name property' do
    user = User.new
    user.respond_to?(:name=).should eq true
  end

  it 'should have property of age' do
    user = User.new
    user.respond_to?(:age).should eq true
  end

  it 'should be able to set the age property' do
    user = User.new
    user.respond_to?(:age=).should eq true
  end

  it 'should be able to set the name and age when initializing it' do
    user = User.new('Michael', 28)
    user.name.should eq 'Michael'
    user.age.should eq 28
  end

  it 'should be able to set the name property when initialized' do
    user = User.new('Michael')
    user.name.should eq 'Michael'
  end
end