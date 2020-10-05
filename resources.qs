const Resources  = [{
	name : "resource1",
	desc : "Композиты",
	icon : "🧱",
}, {
	name : "resource2",
	desc : "Механизмы",
	icon : "⚙️"
}, {
	name : "resource3",
	desc : "Реагенты",
	icon : "🛢"
}];

function getResourceInfo(r, c) {
	return Resources[r].desc + `: ${c}` + Resources[r].icon;
}

function getResourceCount(r, c) {
	return `${c}` + Resources[r].icon;
}

for(let Resources_index=0; Resources_index<Resources.length; Resources_index++) Resources[Resources_index].index = Resources_index;

function createResourcesIcons() {
	let arr = [];
	for(let Resources_index=0; Resources_index<Resources.length; Resources_index++) arr.push(Resources[Resources_index].icon);
	return arr;
}

const Resources_icons = createResourcesIcons();