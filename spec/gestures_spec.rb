describe ProMotion::Menu::Gestures do

  before do
    @object = Object.new
    @object.extend(ProMotion::Menu::Gestures)
  end

  it "assigns the correct gesture mode" do
    @object.mask_for_show(:pan_bezel).should == MMOpenDrawerGestureModeBezelPanningCenterView
  end

  it "correctly combines gestures" do
    @object.mask_for_hide([:pan_center, :tap_center]).should == (
      MMCloseDrawerGestureModePanningCenterView | MMCloseDrawerGestureModeTapCenterView
    )
  end

end
