class ArtykulsController < ApplicationController
  

  def index
    @artykuly = Artykul.sortuj
  end

  def edycja
  end

  def pokaz
  end

  def usun
  end

  def nowa

    @artykuly=Artykul.new({:nazwa=>"Tytuł?"})
    @strona=Strona.order('pozycja ASC')
    @licznik=Artykul.count + 1
  end
  
  def utworz
    @artykuly =Artykul.new(artykul_parametry)
    if @artykuly.save
      flash[:notice] = "Artykuł został utworzony"
      redirect_to(:action=>'index')
    else
      @licznik = Artykul.count +1
      @strona = Strona.order('pozycja ASC')
      render('nowa')
    end
  end
def artykul_parametry
  params.require(:artykuly).permit(:nazwa, :pozycja, :widoczny, :created_at, :strona_id, :zdjecie)

end
end
