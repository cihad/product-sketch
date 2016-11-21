Rails.application.routes.draw do

  get 'search/box'
  get 'search/results'

  get 'home/index'
  get 'home_controller/index'

  get 'shops/show'
  get 'shops/location'
  get 'shops/comments'

  get 'users/using'
  get 'users/used'

  get 'products/overview'
  get 'products/comments'
  get 'products/shops'

  get 'brands/show'

  [*1..6].each do |i|

    get "brands/alt" + i.to_s

  end

  # get 'brands/alt1'
  # get 'brands/alt2'
  # get 'brands/alt3'
  # get 'brands/alt4'
  # get 'brands/alt5'
  # get 'brands/alt6'

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
