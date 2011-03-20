class Api::UsersController < Api::BaseController
  resource_controller_for_api
  actions :index, :show, :create, :update
  create.before :assign_user_roles
 
  # Create new user object
  # Generate new unique api REST token for new user 
  # Look at api/app/models/user_decorator.rb
  create.after do  
      object.generate_api_key! 
  end
  
  # Assign specific roles to new user
  def assign_user_roles
      Rails.logger.debug "User role/s assigned."
      return unless params[:user]
      @user.roles.delete_all
      params[:user][:role] ||= {}
      params[:user][:role][:user] = 1   # all new accounts have user role
      #params[:user][:role][:admin] = 1  # all new accounts have admin role
      Role.all.each { |role|
        @user.roles << role unless params[:user][:role][role.name].blank?
      }
      params[:user].delete(:role)
  end
  
  private
  
end