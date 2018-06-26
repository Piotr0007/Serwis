Rails.application.routes.draw do


  get 'artykuls/index'

  get 'artykuls/edycja'

  get 'artykuls/pokaz'

  get 'artykuls/usun'

  get 'artykuls/nowa'

  get 'artukuls/index'

  get 'artukuls/nowy'

  get 'artukuls/edycja'

  get 'artukuls/usun'

  get 'artukuls/pokaz'

  get 'stronas/index'

  get 'stronas/pokaz'

  get 'stronas/nowa'

  get 'stronas/edycja'

  get 'stronas/usun'

  get 'kategories/index'

  get 'kategories/pokaz'

  get 'kategories/nowa'

  get 'kategories/edycja'

  get 'kategories/usun'

 root "test#index"
 #get "test/index"
  match':controller(/:action(/:id))', :via=> [:get, :post]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
