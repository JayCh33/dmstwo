json.extract! vehicle, :id, :vehicle_make, :vehicle_category, :vehicle_model, :vehicle_condition, :vehicle_registration_date, :vehicle_engine, :vehicle_power, :vehicle_drive_type, :vehicle_fuel_type, :vehicle_doors, :vehicle_color, :vehicle_interior_type, :vehicle_airbags, :vehicle_euroclass, :vehicle_price, :vehicle_life_cycle, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)