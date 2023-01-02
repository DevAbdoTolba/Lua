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

function allPlayers(scores)
	for i = 1 , numOfPlayers , 1
	do
		print(i.."- "..player[i]["name"].." "..((scores == 1 and player[i]["score"] or "")))		
	end
			
end

print("shall the Game START !!!")
print("Enter the index  of player you want to edit : ")

allPlayers(1)






