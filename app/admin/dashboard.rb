ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    columns do  
      column do
          panel 'Usuarios ' do
            ul do
              User.last(5).map do |user|
                li user.email
              end
            end
          end
        end
        column do
          panel 'Autos ingresados' do
            ul do
              Car.last(5).map do |car|
                li "Marca: #{car.marca} - Modelo: #{car.model} - Cliente: #{car.client}"
              end
            end
          end
        end
      end
    

  columns do 
    panel "Personal activo" do
      render 'shared/chart'
    end

    panel "Vehiculos ingresados" do
      render 'shared/chart2'
    end
  end
end
end
