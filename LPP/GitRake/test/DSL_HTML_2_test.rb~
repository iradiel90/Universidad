#!/usr/bin/env ruby

require 'test/unit'

class HTMLTEST < Test::Unit::TestCase
	
	def test_string_match
		
		q = HTML.new {
			html {
				head(:dir => "Prueba") { title "Mi pagina de prueba" }
				body do
					h1 "Esto es una prueba", :class => "test", :lang => "spanish"
					b "Ejemplo de lista:"
					ul do
						li "Elemento 1"
						li "Elemento 2"
						li "Elemento 3"
					end #ul
				end # body
			}
		}
		
		q = q.to_s
		assert_match(/dir = "Prueba"/, q)
		assert_no_match(/class = "spanish"/, q)
	end
	
end