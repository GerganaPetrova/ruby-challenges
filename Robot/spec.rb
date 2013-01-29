describe "robot" do
  it "begin with start_position zero if none given" do
    robot { mark }.should eq [0]
  end
end
