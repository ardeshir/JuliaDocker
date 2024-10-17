using Genie, Genie.Requests, Genie.Renderer.Json

route("/") do
	return "Healthy from Julia API!"
end

route("/optimize", method = POST) do 
	@show jsonpayload()
	@show rawpayload()

	json("$(jsonpayload())")
end 

up()

