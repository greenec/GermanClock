-- always on
local it = display.newText("ES", 0, 0, "mono.ttf", 40)
local is = display.newText("IST", 0, 0, "mono.ttf", 40)

-- initializes extra stuff
local extra1 = display.newText("K", 0, 0, "mono.ttf", 40)
extra1:setFillColor(.25)

local extra2 = display.newText("A", 0, 0, "mono.ttf", 40)
extra2:setFillColor(.25)

local extra3 = display.newText("XÄM", 0, 0, "mono.ttf", 40)
extra3:setFillColor(.25)

local extra4 = display.newText("L", 0, 0, "mono.ttf", 40)
extra4:setFillColor(.25)

local extra5 = display.newText("UNK", 0, 0, "mono.ttf", 40)
extra5:setFillColor(.25)

local extra6 = display.newText("TO", 0, 0, "mono.ttf", 40)
extra6:setFillColor(.25)

local extra7 = display.newText("M", 0, 0, "mono.ttf", 40);
extra7:setFillColor(.25)

local extra8 = display.newText("AUJ", 0, 0, "mono.ttf", 40);
extra8:setFillColor(.25)

-- initializes top text variables
local half = display.newText("HALB", 0, 0, "mono.ttf", 40)
local und = display.newText("UND", 0, 0, "mono.ttf", 40)
local ten = display.newText("ZEHN", 0, 0, "mono.ttf", 40)
local quarter = display.newText("VIERTEL", 0, 0, "mono.ttf", 40)
local twenty = display.newText("ZWANZIG", 0, 0, "mono.ttf", 40)
local five = display.newText("FÜNF", 0, 0, "mono.ttf", 40)
local past = display.newText("NACH", 0, 0, "mono.ttf", 40)
local to = display.newText("VOR", 0, 0, "mono.ttf", 40)

-- initializes bottom text variables
local oneNum = display.newText("EINS", 0, 0, "mono.ttf", 40)
local twoNum = display.newText("ZWEI", 0, 0, "mono.ttf", 40)
local threeNum = display.newText("DREI", 0, 0, "mono.ttf", 40)
local fourNum = display.newText("VIER", 0, 0, "mono.ttf", 40)
local fiveNum = display.newText("FÜNF", 0, 0, "mono.ttf", 40)
local sixNum = display.newText("SECHS", 0, 0, "mono.ttf", 40)
local sevenNum = display.newText("SIEBEN", 0, 0, "mono.ttf", 40)
local eightNum = display.newText("ACHT", 0, 0, "mono.ttf", 40)
local nineNum = display.newText("NEUN", 0, 0, "mono.ttf", 40)
local tenNum = display.newText("ZEHN", 0, 0, "mono.ttf", 40)
local elevenNum = display.newText("ELF", 0, 0, "mono.ttf", 40)
local twelveNum = display.newText("ZWÖLF", 0, 0, "mono.ttf", 40)
local oclock = display.newText("UHR", 0, 0, "mono.ttf", 40)

function toggleHour(hour)
	if hour == 1 then
		oneNum:setFillColor(1)
	end
	if hour == 2 then
		twoNum:setFillColor(1)
	end
	if hour == 3 then
		threeNum:setFillColor(1)
	end
	if hour == 4 then
		fourNum:setFillColor(1)
	end
	if hour == 5 then
		fiveNum:setFillColor(1)
	end
	if hour == 6 then
		sixNum:setFillColor(1)
	end
	if hour == 7 then
		sevenNum:setFillColor(1)
	end
	if hour == 8 then
		eightNum:setFillColor(1)
	end
	if hour == 9 then
		nineNum:setFillColor(1)
	end
	if hour == 10 then
		tenNum:setFillColor(1)
	end
	if hour == 11 then
		elevenNum:setFillColor(1)
	end
	if hour == 12 then
		twelveNum:setFillColor(1)
	end
	if hour == 13 then
		oneNum:setFillColor(1)
	end
end

function update()
	-- gets time
	local hour = tonumber(os.date("%I"))
	local minute = tonumber(os.date("%M"))

	-- sets everything to gray
	und:setFillColor(.25)
	half:setFillColor(.25)
	ten:setFillColor(.25)
	quarter:setFillColor(.25)
	twenty:setFillColor(.25)
	five:setFillColor(.25)
	past:setFillColor(.25)
	to:setFillColor(.25)

	oneNum:setFillColor(.25)
	twoNum:setFillColor(.25)
	threeNum:setFillColor(.25)
	fourNum:setFillColor(.25)
	fiveNum:setFillColor(.25)
	sixNum:setFillColor(.25)
	sevenNum:setFillColor(.25)
	eightNum:setFillColor(.25)
	nineNum:setFillColor(.25)
	tenNum:setFillColor(.25)
	elevenNum:setFillColor(.25)
	twelveNum:setFillColor(.25)
	oclock:setFillColor(.25)

	if minute <= 4 then
		oclock:setFillColor(1)
		toggleHour(hour)
	end

	if minute >= 5 and minute <= 9 then
		five:setFillColor(1)
		past:setFillColor(1)
		toggleHour(hour)
	end

	if minute >= 10 and minute <= 14 then
		ten:setFillColor(1)
		past:setFillColor(1)
		toggleHour(hour)
	end

	if minute >= 15 and minute <= 19 then
		quarter:setFillColor(1)
		past:setFillColor(1)
		toggleHour(hour)
	end

	if minute >= 20 and minute <= 24 then
		twenty:setFillColor(1)
		past:setFillColor(1)
		toggleHour(hour)
	end

	if minute >= 25 and minute <= 29 then
		five:setFillColor(1)
		und:setFillColor(1)
		twenty:setFillColor(1)
		past:setFillColor(1)
		toggleHour(hour)
	end

	if minute >= 30 and minute <= 34 then
		half:setFillColor(1)
		toggleHour(hour)
	end

	if minute >= 35 and minute <= 39 then
		five:setFillColor(1)
		und:setFillColor(1)
		twenty:setFillColor(1)
		to:setFillColor(1)
		toggleHour(hour + 1)
	end

	if minute >= 40 and minute <= 44 then
		twenty:setFillColor(1)
		to:setFillColor(1)
		toggleHour(hour + 1)
	end

	if minute >= 45 and minute <= 49 then
		quarter:setFillColor(1)
		to:setFillColor(1)
		toggleHour(hour + 1)
	end

	if minute >= 50 and minute <= 54 then
		ten:setFillColor(1)
		to:setFillColor(1)
		toggleHour(hour + 1)
	end

	if minute >= 55 and minute <= 59 then
		five:setFillColor(1)
		to:setFillColor(1)
		toggleHour(hour + 1)
	end
end

function position()
	-- "it" positioning
	local xpadding = (display.contentWidth - ((it.width / 2) * 11)) / 2
	it.x = xpadding + (it.width / 2)
	local ypadding = (display.contentHeight - ((it.height / 3) * 10) - 10 * (it.height / 3)) / 2
	it.y = ypadding + (it.height / 3)

	-- X positioning

	-- line 1
	extra1.x = it.x + it.width / 2 + extra1.width / 2
	is.x = extra1.x + extra1.width / 2 + is.width / 2
	extra2.x = is.x + is.width / 2 + extra2.width / 2
	five.x = extra2.x + extra2.width / 2 + five.width / 2

	-- line 2
	und.x = it.x - it.width / 2 + und.width / 2
	extra7.x = und.x + und.width / 2 + extra7.width / 2
	quarter.x = extra7.x + extra7.width / 2 + quarter.width / 2

	-- line 3
	ten.x = it.x - it.width / 2 + past.width / 2
	twenty.x = ten.x + ten.width / 2 + twenty.width / 2

	-- line 4
	half.x = it.x - it.width / 2 + half.width / 2
	to.x = half.x + half.width / 2 + to.width / 2
	past.x = to.x + to.width / 2 + past.width / 2

	-- line 5
	oneNum.x = it.x - it.width / 2 + oneNum.width / 2
	extra3.x = oneNum.x + oneNum.width / 2 + extra3.width / 2
	twoNum.x = extra3.x + extra3.width / 2 + twoNum.width / 2

	-- line 6
	threeNum.x = it.x - it.width / 2 + threeNum.width / 2
	extra8.x = threeNum.x + threeNum.width / 2 + extra8.width / 2
	fourNum.x = extra8.x + extra8.width / 2 + fourNum.width / 2

	-- line 7
	fiveNum.x = it.x - it.width / 2 + fiveNum.width / 2
	extra6.x = fiveNum.x + fiveNum.width / 2 + extra6.width / 2
	sixNum.x = extra6.x + extra6.width / 2 + sixNum.width / 2

	-- line 8
	sevenNum.x = it.x - it.width / 2 + sevenNum.width / 2
	extra4.x = sevenNum.x + sevenNum.width / 2 + extra4.width / 2
	eightNum.x = extra4.x + extra4.width / 2 + eightNum.width / 2

	-- line 9
	nineNum.x = it.x - it.width / 2 + tenNum.width / 2
	tenNum.x = nineNum.x + nineNum.width / 2 + tenNum.width / 2
	elevenNum.x = tenNum.x + tenNum.width / 2 + elevenNum.width / 2

	-- line 10
	twelveNum.x = it.x - it.width / 2 + twelveNum.width / 2
	extra5.x = twelveNum.x + twelveNum.width / 2 + extra5.width / 2
	oclock.x = extra5.x + extra5.width / 2 + oclock.width / 2

	-- Y positioning

	-- line 1
	extra1.y = it.y
	is.y = it.y
	extra2.y = it.y
	five.y = it.y

	-- line 2
	und.y = it.y + it.height / 3 + und.height / 3
	extra7.y = und.y
	quarter.y = und.y

	-- line 3
	ten.y = und.y + und.height / 3 + ten.height / 3
	twenty.y = ten.y

	-- line 4
	half.y = ten.y + ten.height / 3 + half.height / 3
	to.y = half.y
	past.y = to.y

	-- line 5
	oneNum.y = to.y + to.height / 3 + oneNum.height / 3
	extra3.y = oneNum.y
	twoNum.y = oneNum.y

	-- line 6
	threeNum.y = oneNum.y + oneNum.height / 3 + threeNum.height / 3
	extra8.y = threeNum.y
	fourNum.y = threeNum.y

	-- line 7
	fiveNum.y = threeNum.y + threeNum.height / 3 + fiveNum.height / 3
	extra6.y = fiveNum.y
	sixNum.y = fiveNum.y

	-- line 8
	sevenNum.y = fiveNum.y + fiveNum.height / 3 + sevenNum.height / 3
	extra4.y = sevenNum.y
	eightNum.y = sevenNum.y

	-- line 9
	nineNum.y = sevenNum.y + sevenNum.height / 3 + nineNum.height / 3
	tenNum.y = nineNum.y
	elevenNum.y = nineNum.y

	--line 10
	twelveNum.y = tenNum.y + tenNum.height / 3 + twelveNum.height / 3
	extra5.y = twelveNum.y
	oclock.y = twelveNum.y
end

position()
update()

timer.performWithDelay(1000, update, 0)
