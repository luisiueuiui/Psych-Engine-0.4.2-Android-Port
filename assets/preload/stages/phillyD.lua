function onCreate()

	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-d-side'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOverD'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEndD'); --put in mods/music/

	makeLuaSprite('skyDS','skyDS',-100,60)
	addLuaSprite('skyDS',false)
	scaleObject('skyDS',1,1)
	
	makeLuaSprite('cityDS','cityDS',-10,60)
	addLuaSprite('cityDS',false)
	scaleObject('cityDS',1,1)
	
	makeLuaSprite('win0DS','win0DS',-10,60)
	addLuaSprite('win0DS',false)
	scaleObject('win0DS',1,1)
	
	makeLuaSprite('trainDS','trainDS',2000,360)
	addLuaSprite('trainDS',false)
	scaleObject('trainDS',1,1)
	
	
	
	makeLuaSprite('behindTrainDS','behindTrainDS',-40,50)
	addLuaSprite('behindTrainDS',false)
	scaleObject('behindTrainDS',1.1,1.1)

	makeLuaSprite('streetDS','streetDS',-40,50)
	addLuaSprite('streetDS',false)
	scaleObject('streetDS',1.1,1.1)
	
	


	close(true)
end


function onBeatHit  (...) -- for every beat

end

function onStupHit  (...) -- for every 	Step

end

function Update  (...)

end
