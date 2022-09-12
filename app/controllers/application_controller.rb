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

  put '/patients/:id' do
    patients = Patient.find(params[:id])
    patients.update(
    body: params[:body]
    )
    patients.to_json
  end


  get '/doctors' do
    doctors = Doctor.all.order(:created_at)
    doctors.to_json
  end

  post '/doctors' do
    doctors = Doctor.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      phone: params[:phone],
      department: params[:department]   
    )
    doctors.to_json
  end

  delete '/doctors/:id' do
    doctors = Doctor.find(params[:id])
    doctors.destroy
    doctors.to_json
  end

  put '/doctors/:id' do
    doctors = Doctor.find(params[:id])
    doctors.update(
    body: params[:body]
    )
    doctors.to_json
  end

end
