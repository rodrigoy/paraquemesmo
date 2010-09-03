require File.dirname(__FILE__) + '/../lib/para_que'

describe ParaQue do

  it "should return random business justification for stories" do
    YAML.should_receive(:load_file).and_return(['Porque sim','Porque é necessário'])
    Kernel.should_receive(:rand).with(1).and_return(1)
    Kernel.should_receive(:rand).with(1).and_return(0)
    ParaQue.mesmo?.should eql('Porque é necessário')
    ParaQue.mesmo?.should eql('Porque sim')
  end
end
