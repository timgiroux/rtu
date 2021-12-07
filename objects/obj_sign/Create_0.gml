display_text = 0;
text = "";

if(!global.has_joe) {
	text += "You haven\'t saved Joe!";
}
if(!global.shard_self_get || !global.shard_son_get || !global.shard_wife_get) {
	text += " You haven\'t collected all three shards!";
}