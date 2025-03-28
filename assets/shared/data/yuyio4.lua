function onUpdatePost()
	if curStep == 1664 then
		noteTweenY("downoppx1", 0, 430, 0.6, "quartInOut");
		noteTweenY("downoppx2", 1, 430, 0.6, "quartInOut");
		noteTweenY("downoppx3", 2, 430, 0.6, "quartInOut");
		noteTweenY("downoppx4", 3, 430, 0.6, "quartInOut");
		noteTweenY("downx5", 4, 430, 0.6, "quartInOut");
		noteTweenY("downx6", 5, 430, 0.6, "quartInOut");
		noteTweenY("downx7", 6, 430, 0.6, "quartInOut");
		noteTweenY("downx8", 7, 430, 0.6, "quartInOut");

		noteTweenX("downoppx1x", 0,  defaultPlayerStrumX0 - 320, 0.6, "quartInOut");
		noteTweenX("downoppx2x", 1, defaultPlayerStrumX1 - 320, 0.6, "quartInOut");
		noteTweenX("downoppx3x", 2, defaultPlayerStrumX2 - 320, 0.6, "quartInOut");
		noteTweenX("downoppx4x", 3, defaultPlayerStrumX3 - 320, 0.6, "quartInOut");
		noteTweenX("downx5x", 4, defaultPlayerStrumX0 - 320, 0.6, "quartInOut");
		noteTweenX("downx6x", 5, defaultPlayerStrumX1 - 320, 0.6, "quartInOut");
		noteTweenX("downx7x", 6, defaultPlayerStrumX2 - 320, 0.6, "quartInOut");
		noteTweenX("downx8x", 7, defaultPlayerStrumX3 - 320, 0.6, "quartInOut");

		doTweenY('scoreup', 'scoreTxt', 115, 0.6, 'quartInOut')
	end
end