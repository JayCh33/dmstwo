ActiveAdmin.register Vehicle do
  menu priority: 2

  permit_params :vehicle_make, :vehicle_identification_number, :vehicle_registration_plate, :vehicle_type,
                :vehicle_category, :vehicle_model, :vehicle_condition,
                :vehicle_registration_date, :vehicle_engine,
                :vehicle_power, :vehicle_drive_type, :vehicle_fuel_type,
                :vehicle_doors, :vehicle_color, :vehicle_interior_type,
                :vehicle_airbags, :vehicle_euroclass, :vehicle_price,
                :vehicle_life_cycle, :image, :customer_id

  scope :all
  scope :customer_vehicle
  scope :courtesy_vehicle
  scope :demo_vehicle
  scope :inventory_vehicle
  scope :vehicle_of_interest

  form do |f|
    f.inputs do
      f.input :image
      f.input :vehicle_identification_number
      f.input :vehicle_registration_plate
      f.input :vehicle_type, collection: ['Customer vehicle','Courtesy vehicle', 'Demo vehicle',
                                          'Inventory vehicle', 'Vehicle of interest']
      f.input :customer
      f.input :vehicle_make, collection: ['Alfa Romeo', 'Audi', 'BMW','Citroen','Fiat',
                                          'Ford', 'Hyundai', 'Mercedes-Benz', 'Nissan', 'Opel',
                                          'Peygeot', 'Renault', 'Seat' ,'Suzuki', 'Toyota' ,'Volkswagen']
      f.input :vehicle_model
      f.input :vehicle_category, collection: ['Passenger','Jeep','SUV','Caravan',
                                              'Commercial Passenger','Roadster',
                                              'Coupe sport','Van']
      f.input :vehicle_condition, collection: ['New', 'Used'],
              prompt: 'Select condition'
      f.input :vehicle_registration_date, :start_year => 1970, :end_year => Time.now.year + 2
      #f.date_select :vehicle_registration_date, :start_year => Time.now.year - 40, :end_year => Time.now.year + 10
      f.input :vehicle_engine, collection: ['300 cc', '400 cc', '500 cc', '600 cc', '700 cc', '800 cc',
                                            '900 cc', '1000 cc', '1100 cc', '1200 cc', '1300 cc',
                                            '1400 cc', '1500 cc', '1600 cc', '1700 cc', '1800 cc',
                                            '1900 cc', '2000 cc', '2250 cc', '2500 cc', '3000 cc',
                                            '3500 cc', '4000 cc', ],
              prompt: 'Select engine'
      f.input :vehicle_power, collection: ['35 bhp', '50 bhp', '60 bhp', '75 bhp', '90 bhp', '100 bhp',
                                           '110 bhp', '120 bhp', '130 bhp', '140 bhp', '150 bhp', '160 bhp',
                                           '170 bhp', '180 bhp', '190 bhp', '200 bhp', '250 bhp', '300 bhp',
                                           '350 bhp', '400 bhp', '450 bhp'],
              prompt: 'Select power'
      f.input :vehicle_drive_type, collection: ['4x4', 'FWD', 'RWD']
      f.input :vehicle_fuel_type, collection: ['Electric','Gas/LPG','Gasoline','Hybrid Gas','Hybrid Petrol',
                                               'Natural Gas','Petroleum','Other'],
              prompt: 'Select fuel type'
      f.input :vehicle_doors, collection: ['2-3 Doors', '4-5 Doors', '6-7 Doors', 'Other'],
              prompt: 'Select number of doors'
      f.input :vehicle_color, as: :select, collection: ['Beige','Black','Blue','Bordeaux','Brown','Chromium','Dark Green',
                                                        'Dark Red','Dark Blue','Gold','Green','Grey','Lemon','Light Blue',
                                                        'Orange','Ping','Purple-Violet','Red','Silver','White','Yellow',
                                                        'Other']
      f.input :vehicle_interior_type, collection: ['Alcantar','Full leather','Part leather',
                                                   'Velour','Leatherette','Cloth','Other'],
              prompt: 'Select interior type'
      f.input :vehicle_airbags, collection: ['N/A','over 1','over 2', 'over 4', 'over 6', 'over 8', 'over 10'],
              prompt: 'Select number of airbags'
      f.input :vehicle_euroclass, collection: ['Euro 1','Euro 2','Euro 3','Euro 4','Euro 5','Euro 6',
                                               'Euro 6c','Euro 6d','Euro 6d-TEMP'],
              prompt: 'Select Euroclass'
      f.input :vehicle_life_cycle,:input_html => {'rows' => 5}
      f.input :vehicle_price, label: 'Price (€)',placeholder: '0.00'
    end
    f.actions
  end

  index do
    selectable_column
    column :image do |ad|
      image_tag ad.image.thumb
    end
    column :vehicle_identification_number
    column :vehicle_type
    column :vehicle_color
    column :vehicle_make
    column :vehicle_model
    number_column :vehicle_price, as: :currency, unit: "€", separator: ","
    actions
  end

  show do
    attributes_table do
      row :image do |ad|
        image_tag ad.image.medium
      end
      row :customer
      row :vehicle_identification_number
      row :vehicle_registration_plate
      row :vehicle_type
      row :vehicle_make
      row :vehicle_category
      row :vehicle_model
      row :vehicle_condition
      row :vehicle_registration_date
      row :vehicle_engine
      row :vehicle_power
      row :vehicle_drive_type
      row :vehicle_fuel_type
      row :vehicle_doors
      row :vehicle_color, as: :color_picker
      row :vehicle_interior_type
      row :vehicle_airbags
      row :vehicle_euroclass
      number_row :vehicle_price, as: :currency, unit: "€", separator: ","
      row :vehicle_life_cycle
    end
    active_admin_comments
  end

  sidebar 'Vehicle Registration Details', :only => :show do
    table_for vehicle do
      column :created_at do
        vehicle.created_at
      end
    end
    table_for vehicle do
      column :updated_at do
        vehicle.updated_at
      end
    end
  end

  filter :customer, as: :select
  filter :vehicle_make, as: :select
  filter :vehicle_category, as: :select
  filter :vehicle_model, as: :select
  filter :vehicle_condition, as: :select
  filter :vehicle_color, as: :select
  filter :vehicle_registration_date
  filter :vehicle_engine, as: :select
  filter :vehicle_power, as: :select
  filter :vehicle_drive_type, as: :select
  filter :vehicle_fuel_type, as: :select
  filter :vehicle_doors, as: :select
  filter :vehicle_interior_type, as: :select
  filter :vehicle_airbags, as: :select
  filter :vehicle_euroclass, as: :select
  filter :vehicle_price, as: :numeric_range_filter
end
