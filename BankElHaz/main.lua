
function allPlayers(scores)

	for i = 1 , numOfPlayers , 1
	do
		print(i.."- "..player[i]["name"].." "..((scores == 1 and player[i]["score"] or "")))		
	end
			
end


function main()
	print("Enter the index  of player you want to edit : ")

	allPlayers(1)

	local success,err = pcall(editPlayer(player,io.read("*n","*l")))
	if not success then 
	error("The only acceptable inputs are (+, *, - or /)")
	end
end



function editPlayer(player,index)
	print("which operation do you want to do? (+, *, - or /) or type \"ex\" to exit editing mode")
	opr = io.read("*l")


	action = {
		['+'] = function () print("How much to add? : ") add = io.read("*l")  player[index]["score"] = player[index]["score"] + add end, 
		['-'] = function () print("How much to substract? : ") sub =  io.read("*l")  player[index]["score"] = player[index]["score"] - sub end, 
 		['/'] = function () print("How much to divaide? : ") div = io.read("*l")  player[index]["score"] = player[index]["score"] / div end,
		['*'] = function () print("How much to multiple? : ") mul  =  io.read("*l")  player[index]["score"] = player[index]["score"] * mul end,
	["ex"] = function () end 
		 
	}



	if (opr == '*'or opr == '/' or opr == '-' or opr == '+' or opr == "ex") then
		action[opr]()
	end
main()
	
end





print("how many players are coming?")
numOfPlayers = io.read("*n","*l")

player = {}


for i = 1, numOfPlayers, 1
do
	player[i] = {}
end


for i = 1 , numOfPlayers , 1
do
	print("Enter name of player "..i )
	player[i]["name"] = io.read("*l")
	print("Enter score of player "..i)
	player[i]["score"] = io.read("*n","*l")
end

print("shall the Game START !!!")

main()

