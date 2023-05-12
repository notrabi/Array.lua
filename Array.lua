--[[

Path: \Documents\GitHub\Array.lua

¦¦¦¦¦¦+¦¦¦¦¦¦¦+¦¦¦¦¦¦¦+¦¦¦¦¦¦¦+¦¦¦+¦¦¦¦¦+¦¦¦¦¦+¦¦¦¦¦¦¦+¦¦¦¦¦+¦¦¦¦¦¦+¦
¦¦+--¦¦+¦¦+--¦¦+¦¦+--¦¦+¦¦+--¦¦++¦¦+¦¦¦++¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦+--¦¦+
¦¦¦¦¦¦¦¦¦¦¦¦¦¦++¦¦¦¦¦¦++¦¦¦¦¦¦¦¦¦+¦¦¦¦++¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
¦¦+--¦¦¦¦¦+--¦¦+¦¦+--¦¦+¦¦+--¦¦¦¦¦+¦¦++¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦+--¦¦¦
¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦+¦¦¦¦¦¦¦++¦¦¦¦¦¦++¦¦¦¦¦¦¦¦
+-+¦¦+-++-+¦¦+-++-+¦¦+-++-+¦¦+-+¦¦¦+-+¦¦¦+-++------+¦+-----+¦+-+¦¦+-+ Readable

Made for storing large numbers past 1.7e308. Maximum limit: 1.7e1.7e308

Made: June 26 2022 // Last Updated: May 12 2023

Credits: (User: How)

imcrazy: Every****ingthing

Array = {num,x10^x}

]]

local array = {}

function array.new(num:number)
	
	local i = 0
	
	if num >= 10 then
		
		repeat
			
			task.wait()
			
			num /= 10
			i += 1
			
		until num < 10
		
	end
	
	return {num,i}
	
end

function array.fromScientific(scientific:string)

	local num = scientific:match("%d+%.?%d*")
	local i = scientific:match("e(%-?%d+)")

	return {num,i}

end

function array.toNumber(array)

	return array[1] * (10 ^ array[2])

end

function array.toScientific(array)

	local num = tostring(array[1])
	local dec = "."

	dec ..= math.floor(num) % 10

	return num.."e"..array[2]

end

function array.add(a,b)

	local num1 = a[1] * 10 ^ a[2]
	local num2 = b[1] * 10 ^ b[2]

	return array.new(num1 + num2)

end

function array.sub(a,b)
	
	local i = a[2]
	local j = b[2]
	
	if i > j then
		
		for k = 1,i-j do
			
			b[1] /= 10
			j += 1
			
		end
		
	elseif j > i then
		
		for k = 1,j-i do
			
			a[1] /= 10
			i += 1
			
		end
		
	end
	
	local num = a[1]-b[1]
	
	if num < 1 then

		repeat

			task.wait()

			num *= 10
			i -= 1

		until num > 0

	elseif num >= 10 then

		repeat
			
			task.wait()
			
			num /= 10
			i += 1
			
		until num < 10
		
	end
	
	return {num,i}
	
end

return array

--Beautified Version
--credits: me (the furry)