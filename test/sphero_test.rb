require File.expand_path(File.dirname(__FILE__) + "/test_helper")
 
describe 'sphero' do
  let(:robot) { Artoo::MainRobot.new }
   
  it 'has work to do every 3 seconds' do
    robot.work
     
    robot.has_work?(:every, 3.seconds).wont_be_nil
  end
   
  it 'must roll every 3 seconds' do
    robot.sphero.expects(:roll).twice
     
    robot.work
    sleep 6.1
  end
   
  it 'receives collision event' do
    robot.expects(:contact)
     
    robot.work
    robot.sphero.publish("collision", "clunk")
    sleep 0.1
  end
end
