function uncheck(el){ el.checked = false }

var b = document.getElementsByClassName("vam_global_banner")[0],
	st = document.getElementById("vam_global_site_navigation_toggle"),
	ft = document.getElementById("vam_global_site_search_toggle");

st.addEventListener("click", function(){uncheck(ft);});
ft.addEventListener("click", function(){uncheck(st);});

if (b.classList) { b.classList.add('js'); }
else { b.className += ' ' + 'js'; }
