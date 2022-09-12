class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/patients" do
    patients = Patient.all.order(:created_at)
    patients.to_json
  end

  post '/patients' do
    patients = Patient.create(
      first_name: params[:first_name], 
      last_name: params[:last_name],
      age: params[:age],
      weight: params[:weight],
      phone: params[:phone],
      kin: params[:kin],
      drug_admin: params[:drug_admin]
      )
    patients.to_json
  end

  delete '/patients/:id' do
    patients = Patient.find(params[:id])
    patients.destroy
    patients.to_json
  end

end
