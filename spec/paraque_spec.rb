require File.dirname(__FILE__) + '/../lib/paraque'

describe Paraque do

  it "should return random business justification for stories" do
    YAML.should_receive(:load_file).and_return(['Porque sim','Porque é necessário'])
    Kernel.should_receive(:rand).with(1).and_return(1)
    Kernel.should_receive(:rand).with(1).and_return(0)
    Paraque.mesmo?.should eql('Porque é necessário')
    Paraque.mesmo?.should eql('Porque sim')
  end
end
