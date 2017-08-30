var changFrom = function(selectvalue) {
	console.log(selectvalue);
	document.getElementById('orgnzNo1').value = '';
	document.getElementById('organzinput').value = '';
	if (selectvalue === '대학원') {

		document.getElementById('organzinfo').style.display = 'block';
		document.getElementById('organzinfo2').style.display = 'block';
		document.getElementById('organzinfo3').style.display = 'none';
		document.getElementById('search').innerHTML = "<input type='button' value='기관검색하기' onclick='openOrganzSearch(\"대학교\");'> ";

	} else if (selectvalue === '학과') {
		document.getElementById('organzinfo').style.display = 'block';
		document.getElementById('organzinfo2').style.display = 'none';
		document.getElementById('organzinfo3').style.display = 'block';
		document.getElementById('search').innerHTML = "<input type='button' value='기관검색하기' onclick='openOrganzSearch(\"대학원\");'> ";

	} else if (selectvalue === '대학교') {
		document.getElementById('organzinfo').style.display = 'none';
		document.getElementById('organzinfo2').style.display = 'none';
		document.getElementById('organzinfo3').style.display = 'none';
		document.getElementById('search').innerHTML = "";

	} else {
		document.getElementById('organzinfo').style.visibility = 'hidden';
	}

}