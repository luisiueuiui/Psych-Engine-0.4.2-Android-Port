function onCreate()

	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-d-side-dark'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOverD'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEndD'); --put in mods/music/

	makeLuaSprite('skyDark','skyDark',-100,60)
	addLuaSprite('skyDark',false)
	scaleObject('skyDark',1,1)
	
	makeLuaSprite('cityDark','cityDark',-10,60)
	addLuaSprite('cityDark',false)
	scaleObject('cityDark',1,1)
	
	makeLuaSprite('win0DS','win0DS',-10,60)
	addLuaSprite('win0DS',false)
	scaleObject('win0DS',1,1)
	
	makeLuaSprite('trainDark','trainDark',2000,360)
	addLuaSprite('trainDark',false)
	scaleObject('trainDark',1,1)
	
	
	
	makeLuaSprite('behindTrainDark','behindTrainDark',-40,50)
	addLuaSprite('behindTrainDark',false)
	scaleObject('behindTrainDark',1.1,1.1)

	makeLuaSprite('streetDark','streetDark',-40,50)
	addLuaSprite('streetDark',false)
	scaleObject('streetDark',1.1,1.1)
	
	makeAnimatedLuaSprite('Crowd','Crowd2DARK',-130,100)
	addAnimationByPrefix('Crowd','bounce','Crowd2',24,true)
	addLuaSprite('Crowd',false)


end


function onBeatHit  (...) -- for every beat

	objectPlayAnimation('Crowd','bounce',true)
	

end

function onStepHit  (...) -- for every 	Step

end

function Update  (...)

end
