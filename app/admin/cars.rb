ActiveAdmin.register Car do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
 permit_params :marca, :ppu, :model, :year, :client, :mec, :price, :diagnostico
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

index do 
    column :marca
    column :model
    column :ppu
    column :year
    column :client
    column :mec
    actions
end

form do |f|
    inputs 'Agregar un vehiculo' do
        inputs :marca
        inputs :model
        inputs :year
        inputs :ppu
        inputs :client
        inputs :mec
        inputs :diagnostico
        inputs :price
    end
    actions
end

filter :marca, as: :select
filter :model, as: :select
filter :year
filter :mec, as: :select


end
