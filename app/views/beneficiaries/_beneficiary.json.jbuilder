json.extract! beneficiary, :id, :name, :cpf, :phone, :address, :created_at, :updated_at
json.url beneficiary_url(beneficiary, format: :json)
