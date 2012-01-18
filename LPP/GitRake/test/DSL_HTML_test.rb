#!/usr/bin/env ruby

require 'test/unit'
load 'lib/DSL_HTML.rb'

class HTMLTEST < Test::Unit::TestCase
	
	def test_pagina
		
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
		
		res =<<-DELIM
			<html ><head dir = "Prueba" ><title >Mi pagina de prueba</title>
			</head>
			 <body ><h1 class = "test" lang = "spanish" >Esto es una prueba</h1>
			 <b >Ejemplo de lista:</b>
			 <ul ><li >Elemento 1</li>
			 <li >Elemento 2</li>
			 <li >Elemento 3</li>
			</ul>
			</body>
			</html>
		DELIM
		
		q = q.to_s.gsub( /\s+/, '' )
		res = res.to_s.gsub( /\s+/, '' )
		assert_equal q, res
		
	end
	
end