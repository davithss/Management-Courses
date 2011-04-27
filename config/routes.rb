ManagementCourses::Application.routes.draw do
  namespace :admin do
         resources :courses
  end
end
