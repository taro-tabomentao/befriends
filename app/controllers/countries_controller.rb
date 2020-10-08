class CountriesController < ApplicationController
  def index
    @asia_countries = Country.find_all_by_region 'Asia'
    @europe_countries = Country.find_all_by_region 'Europe'
    @north_america_countries = Country.find_all_by_region 'North America'
    @south_america_countries = Country.find_all_by_region 'South America'
    @central_america_countries = Country.find_all_by_region 'Central America'
    @oceania_countries = Country.find_all_by_region 'Oceania'
    @africa_countries = Country.find_all_by_region 'Africa'
    @middle_east_countries = Country.find_all_by_region 'Middle East'
  end

  def show
    @country = Country.find(params[:id])
    @events = Event.where(country_id: params[:id]).order(id: 'desc')
    @education_events = Event.where(country_id: params[:id], category_id: 11).order(id: 'desc')
    @sports_events = Event.where(country_id: params[:id], category_id: 12).order(id: 'desc')
    @language_events = Event.where(country_id: params[:id], category_id: 10).order(id: 'desc')
    @articles = Article.where(country_id: params[:id]).order(id: 'desc')
    @life_articles = Article.where(country_id: params[:id], category_id: 2).order(id: 'desc')
    @community_articles = Article.where(country_id: params[:id], category_id: 5).order(id: 'desc')
    @food_articles = Article.where(country_id: params[:id], category_id: 9).order(id: 'desc')
    @questions = Question.where(country_id: params[:id]).order(id: 'desc')
  end
end
