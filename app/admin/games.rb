ActiveAdmin.register Game do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :game_name, :release_year, :price, :genre_id, :publisher_id, :platform_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:game_name, :release_year, :price, :genre_id, :publisher_id, :platform_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
