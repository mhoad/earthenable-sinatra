class EarthEnable < Sinatra::Base

  get "/" do
    erb :index
  end

  get "/jobs" do
    erb :jobs
  end

  get "/our-floors" do
    erb :floors
  end

  get "/our-impact" do
    erb :impact
  end

  get "/our-story" do
    erb :about
  end

  get "/contact" do
    erb :contact
  end

  get "/donate" do
    erb :donate
  end

end