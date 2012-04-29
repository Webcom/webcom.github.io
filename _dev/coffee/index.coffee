comment '''


	Webcom ApS
	CVR: 30585437
	Source: https://github.com/webjay/webcom.dk


'''
doctype 5
html lang: 'en', ->
	head ->
		meta charset: 'utf-8'
		title 'Webcom'
		meta name: 'viewport', content: 'width=device-width, initial-scale=1.0'
		meta name: 'description', content: 'Fine web since 1996'
		meta name: 'author', content: 'Jacob Friis Saxberg'
		link rel: 'stylesheet', href: 'bootstrap/css/bootstrap.min.css'
		link rel: 'stylesheet', href: 'bootstrap/css/bootstrap-responsive.min.css'
		ie 'lt IE 9', ->
			script src: 'http://html5shim.googlecode.com/svn/trunk/html5.js'
		script 'var _gaq = ["_setAccount", "UA-183817-3", "_trackPageview"];'
		script src: 'http://www.google-analytics.com/ga.js', async: 'async'

	body ->

		div '.container', ->

			section '#contact.row', ->
				address '.offset10.span2.vcard', ->
					p ->
						i '.icon-bullhorn', ''
						text ' '
						span '.tel', '+45 70270767'
					p ->
						i '.icon-comment', ''
						text ' '
						a '.email', href: 'mailto:info@webcom.dk', 'info@webcom.dk'

			section '#brand.vcard', ->
				img '#logo', src: 'img/webcom.png', alt: 'Webcom'
				h1 '.org.hide', 'Webcom ApS'
				div '#tagline', ->
					em '“Fine web since 1996”'

			article '#main.row', ->
				header '.span3', ->
					h1 '.manchet', 'The web is constantly evolving.'
					h1 '.manchet', 'Through our passion we play along on the edge which gives us unique knowledge.'
				div '.span8.offset1', ->
					section '#startups', ->
						header '.page-header', ->
							h1 ->
								text 'Startups'
								text ' '
								small 'At the edge of technology we ship'
						div '.row', ->
							div '.span4', ->
								h2 'Eksperten'
								p 'Eksperten was launched in 1998 and soon after became the largest IT community in Scandinavia. Eksperten was sold to IDG in 2002 and is still going strong.'
							div '.span4', ->
								h2 'Sharksforum'
								p 'Sharksforum launched in 2001 as a spinoff from Eksperten. We had plenty of freelance connections but too few who requested them, thus in 2006 we decided to close it.'
						div '.row', ->
							div '.span4', ->
								h2 'Mentory'
								p 'A mentorship with a learning relationship that benefit through conversation and guidance.'
							div '.span4', ->
								h2 'Webalogic'
								p 'Content management delivered online. No installation required. Webalogic have served clients since 1998.'
						div '.row', ->
							div '.span4', ->
								h2 'Gignal'
								p 'Gignal aggregates content created at events and presents it on your site and on physical screens.'
