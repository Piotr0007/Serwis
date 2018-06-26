class TestController < ApplicationController

	layout false
	
  def index
  	# to jest odwolanie do pliku index.html.rb
  	@testowa="Witaj w kursie RoR"
  	@imiona=["ala", "ola","ewa"]
    @id=params[:id].to_i
   

  end
  def o_mnie
    #to jest odwolanie do pliku o_mnie.html.erb
  
 
  @o_mnie=%q{Czesc, mam na imie Piotr. Jestem absolwentem polskich uczelni. 
  Z zawodu jestem programistą. Obecnie mieszkam w UK.}


  end
  def test
  	render('witaj')
  end
  def kurs
redirect_to('https://www.facebook.com')
  end
    def sklep
redirect_to('http://www.ebay.co.uk')
  end
end
