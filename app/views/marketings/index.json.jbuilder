json.array!(@marketings) do |marketing|
  json.extract! marketing, :id, :Name, :Business_Name, :Email, :Phone_Number, :Address, :url
  json.url marketing_url(marketing, format: :json)
end
