# frozen_string_literal: true

Rails.application.routes.draw do
  root 'palindroms#index', as: 'home'
  get 'result' => 'palindroms#result'
  get 'palindroms/result'
  get 'palindroms/check_data_xml', as: 'xml'
end
