require_relative '../app/pages/page methods/mega-menu_met'


describe 'Mega-menu behaviors verification' do
  before(:all) do
    @mm = MegaMenuMethods.new
    visit '/'
  end

  context "Mega-menu function verification", :LM_39_03 do
    it 'Should redirect to given category page', :step_1 do
      @mm.hover_menu(0)
      @mm.click_sub_category(2)
      @mm.hover_menu(0)
      @mm.click_sub_category(5)
    end
  end
end
