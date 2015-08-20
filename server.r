res<-function(val,from,to){val*from/to}
Unit<-function(init){switch(init,
		"ounce"=28.35,
		"pound"=453.6,
		"long_ton"=1016*10^3,
		"short_ton"=907200,
		"ton"=1000000,
		"gram"=1,
		"kilogram"=1000,
		"cubic_meter"=1,
		"fluid_ounce"=0.0000296,
		"pint"=0.000473,
		"quart"=0.000946,
		"gallon"=0.003785,
		"cubic_foot"=0.02832,
		"liter"=0.001,
		"centiliter"=0.00001,
		"milliliter"=0.000001,
		"cubic_millimeter"=0.000000001,
		"cubic_centimeter"=0.000001,
		"square_inch"=0.00064516,
		"square_foot"=0.0929,
		"square_mile"=2588000,
		"acre"=4050,
		"square_meter"=1,
		"square_centimeter"=0.0001,
		"square_kilometer"=1000000,
		"hectare"=10000,
		"are"=100,
		"meter"=1,
		"mile"=1609.344,
		"furlong"=201.168,
		"chain"=20.1168,
		"yard"=0.9144,
		"foot"=0.3048,
		"span"=0.2286,
		"link"=0.201168,
		"hand"=0.1016,
		"inch"=0.0254,
		"centimeter"=0.01,
		"millimeter"=0.001,
		"kilometer"=1000
	)}
shinyServer(
function(input, output,basefrom,baseto) {

	output$lval <- renderPrint({input$lval})
	output$lfrom <- renderPrint({input$lfrom})
	output$lto <- renderPrint({input$lto})
	output$lresult <- renderPrint({signif(res(input$lval,Unit(input$lfrom),Unit(input$lto)),digits=2)})
	output$lphrase<-renderPrint({paste(input$lval,input$lfrom, " corresponds to", signif(res(input$lval,Unit(input$lfrom),Unit(input$lto)),digits=2),input$lto)})
	
	output$sval <- renderPrint({input$sval})
	output$sfrom <- renderPrint({input$sfrom})
	output$sto <- renderPrint({input$sto})
	output$sresult <- renderPrint({signif(res(input$sval,Unit(input$sfrom),Unit(input$sto)),digits=2)})
	output$sphrase<-renderPrint({paste(input$sval,input$sfrom, " corresponds to", signif(res(input$sval,Unit(input$sfrom),Unit(input$sto)),digits=2),input$sto)})

	output$vval <- renderPrint({input$vval})
	output$vfrom <- renderPrint({input$vfrom})
	output$vto <- renderPrint({input$vto})
	output$vresult <- renderPrint({signif(res(input$vval,Unit(input$vfrom),Unit(input$vto)),digits=2)})
	output$vphrase<-renderPrint({paste(input$vval,input$vfrom, " corresponds to", signif(res(input$vval,Unit(input$vfrom),Unit(input$vto)),digits=2),input$vto)})

	output$wval <- renderPrint({input$wval})
	output$wfrom <- renderPrint({input$wfrom})
	output$wto <- renderPrint({input$wto})
	output$wresult <- renderPrint({signif(res(input$wval,Unit(input$wfrom),Unit(input$wto)),digits=2)})
	output$wphrase<-renderPrint({paste(input$wval,input$wfrom, " corresponds to", signif(res(input$wval,Unit(input$wfrom),Unit(input$wto)),digits=2),input$wto)})

}
)