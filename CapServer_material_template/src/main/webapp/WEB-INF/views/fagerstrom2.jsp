<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div class="android-content mdl-layout__content">
	<a name="top"></a>
	

<div class="container-wrapper">
	<div class="container">
		<h2>FagerStrom Test</h2>
		<p class="lead">파거스트롬 테스트!</p>
		<form name="q1" action=<c:url value="/userpage/fagerstromresult"/> method="get">

			<table class="table table-condensed" action>
				<tr>
					<td>
						<h4>1. 아침에 일어나서 얼마만에 첫 담배를 피우십니까?</h4>
						<div class="funkyradio">
							<div class="funkyradio-success">
								<input type="radio" name="radio-1" id="radio1" value="3" checked />
								<label for="radio1">5분 이내</label>
							</div>
							<div class="funkyradio-success">
								<input type="radio" name="radio-1" id="radio2" value="2" /> <label
									for="radio2">6 ~ 30분</label>
							</div>
							<div class="funkyradio-success">
								<input type="radio" name="radio-1" id="radio3" value="1" /> <label
									for="radio3">30분 초과</label>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td><br>
						<h4>2. 금연구역에서 담배를 참기가 어렵습니까?</h4>
						<div class="funkyradio">
							<div class="funkyradio-success">
								<input type="radio" name="radio-2" id="radio2-1" value="1"
									checked /> <label for="radio2-1">예</label>
							</div>
							<div class="funkyradio-success">
								<input type="radio" name="radio-2" id="radio2-2" value="0" /> <label
									for="radio2-2">아니오</label>
							</div>
						</div></td>
				</tr>
				<tr>
					<td><br>
						<h4>3. 하루 중 담배 맛이 가장 좋을 때는 언제입니까?</h4>
						<div class="funkyradio">
							<div class="funkyradio-success">
								<input type="radio" name="radio-3" id="radio3-1" value="1"
									checked /> <label for="radio3-1">첫 담배</label>
							</div>
							<div class="funkyradio-success">
								<input type="radio" name="radio-3" id="radio3-2" value="0" /> <label
									for="radio3-2">그 외</label>
							</div>
						</div></td>
				</tr>
				<tr>
					<td><br>
						<h4>4. 몸이 아파 하루 종일 누워있을 때에도 담배를 피우십니까?</h4>
						<div class="funkyradio">
							<div class="funkyradio-success">
								<input type="radio" name="radio-4" id="radio4-1" value="1"
									checked /> <label for="radio4-1">예</label>
							</div>
							<div class="funkyradio-success">
								<input type="radio" name="radio-4" id="radio4-2" value="0" /> <label
									for="radio4-2">아니오</label>
							</div>
						</div></td>
				</tr>
				<tr>

					<td><br>
						<button type="submit" class="btn btn-success btn-md">SUBMIT</button></td>
				</tr>
			</table>
		</form>

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