function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Checks if it's the correct note type
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Pico Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_assets_DEATH'); --Change Notes texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'noteSplashesDeath'); --Change Note Splash texture
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.046'); --Default value is: 0.23, health gained on hit. 1 = Gains Half HP Bar
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.6'); --Default value is: 0.0475, health lost on miss. 1 = Lose Half HP Bar
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false); -- Play Miss Animation when you hit the note?
			

			

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Dose Miss have penalties
			end
		end
	end
end

-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
function goodNoteHit(id, noteData, noteType, isSustainNote) --Checks after BF hits the note
	if noteType == 'Pico Note' then --Checks if it's the corret note type
		characterPlayAnim('dad','shoot',true) --Plays Opponents Aninimation
		--debugPrint('Shoot')
		
		if noteData == 0 then
			characterPlayAnim('boyfriend','singLEFTdodge',true)		
		
		elseif noteData == 1 then
			characterPlayAnim('boyfriend','singDOWNdodge',true)
		
		elseif noteData == 2 then
			characterPlayAnim('boyfriend','singUPdodge',true)
		
		elseif noteData == 3 then
			characterPlayAnim('boyfriend','singRIGHTdodge',true)
		

		end	
	end
end

function opponentNoteHit(id, direction, noteType, isSustainNote) --Checks when Opponent hits the note
	if noteType == 'Pico Note' then
		characterPlayAnim('dad','reload',true) --Plays Aninimation for Opponent
		--debugPrint('Reload')
	end
end

function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'Pico Note' then --Checks if it's the corret note type
		characterPlayAnim('dad','shoot',true) --Plays Opponents Aninimation
		--debugPrint('Missed Note')
	end
end