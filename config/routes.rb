Rails.application.routes.draw do


  get "answers", to: "comparisons#create"

  get 'comparisons/compare'
  post 'comparisons/compare_sections'
  root to: 'comparisons#compare'
end

