require "chicago_business_licenses/version"
require 'unirest'

module ChicagoBusinessLicenses
  class License
    attr_reader :account_number, :address, :application_created_date, :application_requirements_complete, :application_type, :city, :conditional_approval, :date_issued, :doing_business_as_name, :expiration_date, :id, :latitude, :legal_name, :license_approved_for_issuance, :license_code, :license_description, :license_id, :license_number, :license_start_date, :license_status, :license_status_change_date, :location, :longitude, :payment_date, :police_district, :precinct, :site_number, :state, :ward, :zip_code

    def initialize(license_api_info)
      @account_number = license_api_info["account_number"] ,
      @address = license_api_info["address"] ,
      @application_created_date = license_api_info["application_created_date"] ,
      @application_requirements_complete = license_api_info["application_requirements_complete"] ,
      @application_type = license_api_info["application_type"] ,
      @city = license_api_info["city"] ,
      @conditional_approval = license_api_info["conditional_approval"] ,
      @date_issued = license_api_info["date_issued"] ,
      @doing_business_as_name = license_api_info["doing_business_as_name"] ,
      @expiration_date = license_api_info["expiration_date"] ,
      @id = license_api_info["id"] ,
      @latitude = license_api_info["latitude"] ,
      @legal_name = license_api_info["legal_name"] ,
      @license_approved_for_issuance = license_api_info["license_approved_for_issuance"] ,
      @license_code = license_api_info["license_code"] ,
      @license_description = license_api_info["license_description"] ,
      @license_id = license_api_info["license_id"] ,
      @license_number = license_api_info["license_number"] ,
      @license_start_date = license_api_info["license_start_date"] ,
      @license_status = license_api_info["license_status"] ,
      @license_status_change_date = license_api_info["license_status_change_date"] ,
      @location = license_api_info["location"],
      @longitude = license_api_info["longitude"] ,
      @payment_date = license_api_info["payment_date"] ,
      @police_district = license_api_info["police_district"] ,
      @precinct = license_api_info["precinct"] ,
      @site_number = license_api_info["site_number"] ,
      @state = license_api_info["state"] ,
      @ward = license_api_info["ward"] ,
      @zip_code = license_api_info["zip_code"] 
    end

    def self.all
      api_array = Unirest.get("https://data.cityofchicago.org/resource/xqx5-8hwx.json").body

      create_licenses(api_array)      
    end

    def self.search(search_keyword)
      api_array = Unirest.get("https://data.cityofchicago.org/resource/xqx5-8hwx.json?$q=#{search_keyword}").body

      create_licenses(api_array)
    end

    # def self.first
    #   api_array = Unirest.get("https://data.cityofchicago.org/resource/xqx5-8hwx.json").body

    #   api_array.first
    # end

    # def self.last
    #   api_array = Unirest.get("https://data.cityofchicago.org/resource/xqx5-8hwx.json").body

    #   api_array.last
    # end

    # def self.find_by(search_keyword)
    #   api_array = Unirest.get("https://data.cityofchicago.org/resource/xqx5-8hwx.json?$q=#{search_keyword}").body
    # end

    def self.create_licenses(api_array)
      licenses = []

      api_array.each do |license_info|
        licenses << License.new(license_info)
      end

      licenses
    end

    private_class_method :create_licenses
  end
end


