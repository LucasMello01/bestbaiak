function onStepIn(cid, item, position, fromPosition)

local tileConfig = {
	kickPos = { x =160, y = 54, z = 7},
	kickMsg = "Voc� n�o e um player donate para virar acesse nosso website!",
	enterMsg = "Bem Vindo a area donate, agradecemos a sua doa��o!",
	enterEffect = CONST_ME_MAGIC_RED,
}

if isPlayer(cid) == true then
if vip.hasVip(cid) == FALSE then
		doTeleportThing(cid, tileConfig.kickPos)
		doSendMagicEffect(tileConfig.kickPos, tileConfig.kickEffect)
		doPlayerSendCancel(cid, tileConfig.kickMsg)
		return
	end
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, tileConfig.enterMsg)
		doSendMagicEffect(position, tileConfig.enterEffect)
		return true
end
end