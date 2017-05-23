<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script type="text/javascript">
	google.charts.load('current', {
		packages : [ 'corechart', 'line' ]
	});
	google.charts.setOnLoadCallback(drawBasic);

	
	function drawBasic() {
		var jsonData = $.ajax({
			url : "${pageContext.request.contextPath}" + "/userpage/chartFromRecordToJsonArray",
			dataType : "json",
			data : data,
			async : false
		}).responseText;
		var data = new google.visualization.DataTable(jsonData);
		var options = {
			chart : {
				title : 'My Smoking Pattern Chart'
			},
			vAxis : {
				viewWindowMode : 'explicit',
				viewWindow : {
					max : 30,
					min : 0
				}
			},
			bars : 'vertical', // Required for Material Bar Charts.
			height : 400,
			colors : ['#99daea','#ffad77']
		};

		var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
		chart.draw(data, options);
		var event = google.visualization.events.addListener(chart, 'select', selectHandler);

		function selectHandler() {
			var selection = chart.getSelection();
			var requestData = data.getValue(selection[0].row, 0);
			var dailyJsonData = $.ajax({
				url : "${pageContext.request.contextPath}" + "/userpage/chartFromRecordToJsonArrayDaily/" + requestData,
				type : "get",
				async : false
			}).responseText;
			var options = {
					chart : {
						title : 'My Smoking Pattern Chart'
					},
					vAxis : {
						viewWindowMode : 'explicit',
						viewWindow : {
							max : 10,
							min : 0
						}
					},
					bars : 'vertical', // Required for Material Bar Charts.
					height : 400,
					colors : ['#99daea']
				};
			data = new google.visualization.DataTable(dailyJsonData);
			google.visualization.events.removeListener(event);
			chart.draw(data, options);
		}
		

	}
	
	$(document).ready(function(){
		$("#refresh-btn").click(function(){
			var jsonData = $.ajax({
				url : "${pageContext.request.contextPath}" + "/userpage/chartFromRecordToJsonArray",
				dataType : "json",
				data : data,
				async : false
			}).responseText;
			var data = new google.visualization.DataTable(jsonData);
			var options = {
				chart : {
					title : 'My Smoking Pattern Chart'
				},
				vAxis : {
					viewWindowMode : 'explicit',
					viewWindow : {
						max : 30,
						min : 0
					}
				},
				bars : 'vertical', // Required for Material Bar Charts.
				height : 400,
				colors : ['#99daea','#ffad77']
			};

			var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
			chart.draw(data, options);
			var event = google.visualization.events.addListener(chart, 'select', selectHandler);

			function selectHandler() {
				var selection = chart.getSelection();
				var requestData = data.getValue(selection[0].row, 0);
				var dailyJsonData = $.ajax({
					url : "${pageContext.request.contextPath}" + "/userpage/chartFromRecordToJsonArrayDaily/" + requestData,
					type : "get",
					async : false
				}).responseText;
				var options = {
						chart : {
							title : 'My Smoking Pattern Chart'
						},
						vAxis : {
							viewWindowMode : 'explicit',
							viewWindow : {
								max : 10,
								min : 0
							}
						},
						bars : 'vertical', // Required for Material Bar Charts.
						height : 400,
						colors : ['#99daea']
					};
				data = new google.visualization.DataTable(dailyJsonData);
				google.visualization.events.removeListener(event);
				chart.draw(data, options);
			}
		})
	})
</script>


<div class="android-content mdl-layout__content">
	<a name="top"></a>
	<div class="container-wrapper">
	<div class="container">
		<h2>Your Smoking Pattern Chart</h2>
		<p class="lead">당신의 흡연기록 차트입니다.</p>
		<div id="chart_div"></div>
		<p space></p>
		<button id ="refresh-btn" type="button" class="btn btn-default">일간 차트</button>
	</div>
</div>

	<a name="custom"></a>
	<div class="android-customized-section">
		<div class="android-customized-section-text">
			<div
				class="mdl-typography--font-light mdl-typography--display-1-color-contrast">Customised
				by you, for you</div>
			<p class="mdl-typography--font-light">
				Put the stuff that you care about right on your home screen: the
				latest news, the weather or a stream of your recent photos. <br>
				<a href="" class="android-link mdl-typography--font-light">Customise
					your phone</a>
			</p>
		</div>
		<div class="android-customized-section-image"></div>
	</div>

	<div class="android-more-section">
		<div
			class="android-section-title mdl-typography--display-1-color-contrast">More
			from Android</div>
		<div class="android-card-container mdl-grid">
			<div
				class="mdl-cell mdl-cell--3-col mdl-cell--4-col-tablet mdl-cell--4-col-phone mdl-card mdl-shadow--3dp">
				<div class="mdl-card__media">
					<img
						src="<c:url value="/resources/material/images/more-from-1.png"/>">
				</div>
				<div class="mdl-card__title">
					<h4 class="mdl-card__title-text">Get going on Android</h4>
				</div>
				<div class="mdl-card__supporting-text">
					<span class="mdl-typography--font-light mdl-typography--subhead">Four
						tips to make your switch to Android quick and easy</span>
				</div>
				<div class="mdl-card__actions">
					<a
						class="android-link mdl-button mdl-js-button mdl-typography--text-uppercase"
						href=""> Make the switch <i class="material-icons">chevron_right</i>
					</a>
				</div>
			</div>

			<div
				class="mdl-cell mdl-cell--3-col mdl-cell--4-col-tablet mdl-cell--4-col-phone mdl-card mdl-shadow--3dp">
				<div class="mdl-card__media">
					<img
						src="<c:url value="/resources/material/images/more-from-4.png"/>">
				</div>
				<div class="mdl-card__title">
					<h4 class="mdl-card__title-text">Create your own Android
						character</h4>
				</div>
				<div class="mdl-card__supporting-text">
					<span class="mdl-typography--font-light mdl-typography--subhead">Turn
						the little green Android mascot into you, your friends, anyone!</span>
				</div>
				<div class="mdl-card__actions">
					<a
						class="android-link mdl-button mdl-js-button mdl-typography--text-uppercase"
						href=""> androidify.com <i class="material-icons">chevron_right</i>
					</a>
				</div>
			</div>

			<div
				class="mdl-cell mdl-cell--3-col mdl-cell--4-col-tablet mdl-cell--4-col-phone mdl-card mdl-shadow--3dp">
				<div class="mdl-card__media">
					<img
						src="<c:url value="/resources/material/images/more-from-2.png"/>">
				</div>
				<div class="mdl-card__title">
					<h4 class="mdl-card__title-text">Get a clean customisable home
						screen</h4>
				</div>
				<div class="mdl-card__supporting-text">
					<span class="mdl-typography--font-light mdl-typography--subhead">A
						clean, simple, customisable home screen that comes with the power
						of Google Now: Traffic alerts, weather and much more, just a swipe
						away.</span>
				</div>
				<div class="mdl-card__actions">
					<a
						class="android-link mdl-button mdl-js-button mdl-typography--text-uppercase"
						href=""> Download now <i class="material-icons">chevron_right</i>
					</a>
				</div>
			</div>

			<div
				class="mdl-cell mdl-cell--3-col mdl-cell--4-col-tablet mdl-cell--4-col-phone mdl-card mdl-shadow--3dp">
				<div class="mdl-card__media">
					<img
						src="<c:url value="/resources/material/images/more-from-3.png"/>">
				</div>
				<div class="mdl-card__title">
					<h4 class="mdl-card__title-text">Millions to choose from</h4>
				</div>
				<div class="mdl-card__supporting-text">
					<span class="mdl-typography--font-light mdl-typography--subhead">Hail
						a taxi, find a recipe, run through a temple – Google Play has all
						the apps and games that let you make your Android device uniquely
						yours.</span>
				</div>
				<div class="mdl-card__actions">
					<a
						class="android-link mdl-button mdl-js-button mdl-typography--text-uppercase"
						href=""> Find apps <i class="material-icons">chevron_right</i>
					</a>
				</div>
			</div>
		</div>
	</div>

	<footer class="android-footer mdl-mega-footer">

		<div class="mdl-mega-footer--middle-section">
			<p class="mdl-typography--font-light">Satellite imagery: © 2014
				Astrium, DigitalGlobe</p>
			<p class="mdl-typography--font-light">Some features and devices
				may not be available in all areas</p>
		</div>

		<div class="mdl-mega-footer--bottom-section">
			<a class="android-link android-link-menu mdl-typography--font-light"
				id="version-dropdown"> Versions <i class="material-icons">arrow_drop_up</i>
			</a>
			<ul
				class="mdl-menu mdl-js-menu mdl-menu--top-left mdl-js-ripple-effect"
				for="version-dropdown">
				<li class="mdl-menu__item">5.0 Lollipop</li>
				<li class="mdl-menu__item">4.4 KitKat</li>
				<li class="mdl-menu__item">4.3 Jelly Bean</li>
				<li class="mdl-menu__item">Android History</li>
			</ul>
			<a class="android-link android-link-menu mdl-typography--font-light"
				id="developers-dropdown"> For Developers <i
				class="material-icons">arrow_drop_up</i>
			</a>
			<ul
				class="mdl-menu mdl-js-menu mdl-menu--top-left mdl-js-ripple-effect"
				for="developers-dropdown">
				<li class="mdl-menu__item">App developer resources</li>
				<li class="mdl-menu__item">Android Open Source Project</li>
				<li class="mdl-menu__item">Android SDK</li>
				<li class="mdl-menu__item">Android for Work</li>
			</ul>
			<a class="android-link mdl-typography--font-light" href="">Blog</a> <a
				class="android-link mdl-typography--font-light" href="">Privacy
				Policy</a>
		</div>

	</footer>
</div>