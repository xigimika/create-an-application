Rails.application.routes.draw do

	get '/top' => 'books#top'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



	get '/books' => 'books#index'
	post '/books' => 'books#create'
	get '/books/:id' => 'books#index', as: 'book'
	get '/books' => 'books#index'
	get '/books/:id/edit' => 'books#edit', as: 'edit_book'
	get 'books/:id/topic' => 'books#topic', as: 'topic'
	# getはページ変異
	# アドレスバーに打ち込むurl
	# 打ち込んだ時の行き先
	# as: urlの言い換え（railsの文の中でしか使えない）
	patch '/books/:id' => 'books#update', as: 'update_book'
	delete '/books/:id' => 'books#destroy', as: 'destroy_book'


end
