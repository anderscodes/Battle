module Helpers
  module SetupHelper
    def visit_index_add_names_and_submit(name_1, name_2)
      visit ('/')

      fill_in 'name1', with: name_1
      fill_in 'name2', with: name_2

      click_button 'submit'
    end
  end
end
