Rails.application.routes.draw do

  devise_for :users
	root 'books#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  	# get 'users/:id/show' => 'users#show', as: 'show'
	get 'books/:id/topic' => 'books#topic', as: 'topic'
	resources :users, only: [:index, :show, :update, :edit]
	resources :books

	# getはページ変異
	# アドレスバーに打ち込むurl
	# 打ち込んだ時の行き先
	# as: urlの言い換え（railsの文の中でしか使えない）

end
