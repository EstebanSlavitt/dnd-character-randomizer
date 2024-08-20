Rails.application.routes.draw do
  get "api/dnd/:endpoint", to: "dnd_api#fetch_data"
end
