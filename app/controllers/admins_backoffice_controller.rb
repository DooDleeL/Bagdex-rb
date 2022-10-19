class AdminsBackofficeController < ApplicationController
    before_action :authenticate_user!
    layout 'admins_backoffice'
end
