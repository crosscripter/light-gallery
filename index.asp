<%@ Language="Javascript" %> 
<style>
@import url('https://fonts.googleapis.com/css2?family=Lato:wght@300&display=swap');
body {
	font-family: 'lato', sans-serif;
	background: #111;
	padding-left: 25%;
	padding-top: 15%;
	padding: 0 auto;
	color: #fff;
	text-shadow: 3px 3px 2px #000;
}
.box {
	float:left;
	color: #aaa;
	margin-left: -2.8%;
	text-align: right;
	text-shadow: 1px 2px 3px #000;
	box-shadow: 2px 3px 500px #aaa;
	transition: all 0.5s ease-in-out;
	cursor:pointer;
	filter: brightness(0.5);
}
.box:hover { 
	zoom: 3;
	position: relative;
	/* top: -5%; */
	opacity: 1;
	border: 1px solid white;
	color: white;
	z-index: 999;
	box-shadow: 0px 0px 10px #fff;
	position: relative;
	filter: brightness(1);
}
h4 { color: #555;  text-shadow: none; }
</style>
<h1>Light Gallery</h1>
<h4>A Example Photo Gallery Written in Classic ASP and JavaScript!</h4>
<% 
	function box(i, width, height) {
		var rgb = "rgb(" + 255 - i + "," + 255 - i + "," + 255 - i + ")";

		return "<div class='box' style='width:" + width + "px;height:" + height
			+ "px;font-size:" + i + "px;border:" + i / 10 + "px solid white;box-shadow:0px 0px 10px "
			+ rgb + ";background-image:url(https://picsum.photos/" + i * 100
			+ ");background-size:cover;top:" + -i + "%;'>" + i + "</div>";
	}
		
	for (var i = 0, endI = 30; i < endI; i++) { 
		Response.Write(box(i, i * 2, i * 3))
	}
%>
<script>
	window.addEventListener("load", function(e) {
		var elements = document.querySelectorAll(".box")
		for (var elem in elements) {
			elem = elements[elem];
			if (!elem.addEventListener) continue;
			console.log(elem);
			elem.addEventListener("mouseenter", function(e) {
				console.log("Hovering over #" + parseInt(e.target.innerText, 10));
			});
		}
	});
</script>