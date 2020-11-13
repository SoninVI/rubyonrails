Rails.application.routes.draw do
  root 'home#index'

  # get 'home/news'
  # get 'home/pages'

  get 'new' => 'news#index', as: 'news'
  get 'news_new' => 'news#new', as: 'news_new'
  post 'new' => 'news#create', as: 'new'
  get 'new_show' => 'news#show', as: 'new_show'
  get 'new/:id' => 'news#show', as: 'news_show'
  get 'news/:id/edit' => 'news#edit', as: 'news_edit'
  patch 'new/:id/update' => 'news#update', as: 'new_update'
  delete 'new/:id/delete' => 'news#destroy', as: 'new_delete'


  get 'pages' => 'pages#index', as: 'pages'
  get 'pages_new' => 'pages#new', as: 'page_new'
  post 'page' => 'pages#create', as: 'page'
  get 'page_show' => 'pages#show', as: 'page_show'
  get 'page/:id' => 'pages#show', as: 'pages_show'
  get 'pages/:id/edit' => 'pages#edit', as: 'pages_edit'
  patch 'page/:id/update' => 'pages#update', as: 'page_update'
  delete 'page/:id/delete' => 'pages#destroy', as: 'page_delete'


  get 'category' => 'category#index', as: 'category'
  get 'categoryes_new' => 'category#new', as: 'category_new'
  post 'category' => 'category#create', as: 'categorya'
  get 'category_show' => 'category#show', as: 'category_show'
  get 'category/:id' => 'category#show', as: 'categorya_show'
  get 'categoryes/:id/edit' => 'category#edit', as: 'category_edit'
  patch 'category/:id/update' => 'category#update', as: 'category_update'
  delete 'category/:id/delete' => 'category#destroy', as: 'category_delete'

  get 'article' => 'articles#index', as: 'articles'
  get 'articles_new' => 'articles#new', as: 'articles_new'
  post 'article' => 'articles#create', as: 'article'
  # get 'article_show' => 'articles#show', as: 'articles_show'
  get 'articles/:url' => 'articles#show', as: 'article_show'
  get 'articles/:url/edit' => 'articles#edit', as: 'articles_edit'
  patch 'article/:url/update' => 'articles#update', as: 'article_update'
  delete 'article/:url/delete' => 'articles#destroy', as: 'article_delete'
  delete 'articles/' => 'articles#destroy_all', as: 'article_delete_all'

  get 'tag' => 'tags#index', as: 'tags'
  get 'tags_new' => 'tags#new', as: 'tags_new'
  post 'tag' => 'tags#create', as: 'tag'
  get 'tag_new' => 'tags#show', as: 'tags_show'
  get 'tags/:id' => 'tags#show', as: 'tag_show'
  get 'tags/:id/edit' => 'tags#edit', as: 'tags_edit'
  patch 'tags/:id/update' => 'tags#update', as: 'tags_update'
  delete 'tags/:id/delete' => 'tags#destroy', as: 'tags_delete'

  get 'comment' => 'comments#index', as: 'comments'
  get 'comment_new' => 'comments#new', as: 'comments_new'
  post 'comment' => 'comments#create', as: 'comment'
  get 'comment_new' => 'comments#show', as: 'comments_show'
  get 'comments/:id' => 'comments#show', as: 'comment_show'
  get 'comments/:id/edit' => 'comments#edit', as: 'comment_edit'
  patch 'comments/:id/update' => 'comments#update', as: 'comment_update'
  delete 'comments/:id/delete' => 'comments#destroy', as: 'comment_delete'

  # get '/:article_slug/:url_slug' => 'article#show'


end
