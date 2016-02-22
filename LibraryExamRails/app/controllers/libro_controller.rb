class LibroController < ApplicationController
  def index
    @libro = Libro.new
  end
  
  def create
    @libro = Libro.new
    @libro.title = params[:title]
    @libro.author = params[:author]
    @libro.genre = params[:genre]
    @libro.save
    
    render :index
  end
  
  def update_view
    id = params[:id].to_i
    @libro = Libro.find id
    
    render :index
  end
  
  def update
    id = params[:id].to_i
    @libro = Libro.find id
    @libro.title = params[:title]
    @libro.author = params[:author]
    @libro.genre = params[:genre]
    @libro.save
    
    @libro = Libro.new
    render :index
  end
  
  def delete
    arrayIds = params[:ids]
    Libro.delete arrayIds

    @libro = Libro.new
    render :index
  end
  
  def search_genre
    genre = params[:genre]
    @searchResults = Libro.where(genre: genre)
    
    @libro = Libro.new
    render :index
  end
  
  def search_author_title
    title = params[:title]
    author = params[:author]
    @searchResults = Libro.where(:title => title, :author => author)
    
    @libro = Libro.new
    render :index
  end
end
