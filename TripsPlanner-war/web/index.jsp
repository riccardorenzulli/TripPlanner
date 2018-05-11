<%-- 
    Document   : index
    Created on : 11-mag-2018, 15.24.13
    Author     : giovannibonetta
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="user" class="com.tripsplanner.model.entity.User" scope="session" />
<!DOCTYPE html>
<html class="load-full-screen"><head>

	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="LimpidThemes">
        <meta name="google-signin-client_id" content="682887231528-qe2dfr4gba9fn1dmef7q97bq7l6o6m98.apps.googleusercontent.com">


	<title>Cruise - Responsive Travel Agency Template</title>

    <!-- STYLES -->
	<link href="assets/css/animate.min.css" rel="stylesheet">
	<link href="assets/css/bootstrap-select.min.css" rel="stylesheet">
	<link href="assets/css/owl.carousel.css" rel="stylesheet">
	<link href="assets/css/owl-carousel-theme.css" rel="stylesheet">
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" media="screen">
	<link href="assets/css/flexslider.css" rel="stylesheet" media="screen">
	<link href="assets/css/style.css" rel="stylesheet" media="screen">
	<!-- LIGHT -->
	<link rel="stylesheet" type="text/css" href="assets/css/dummy.css" id="select-style">
	<link href="assets/font-awesome/css/font-awesome.min.css" rel="stylesheet">

	<!-- FONTS -->

	<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,800,700,600" rel="stylesheet" type="text/css">
        
        <!-- SCRIPTS -->
        <script src="scripts/login.js"></script>
        <script src="https://apis.google.com/js/platform.js" async defer></script>

</head>

<body class="load-full-screen"><div id="supersized" class="quality" style="display: block;"><a target="_blank" style="display: block; opacity: 1;" class="prevslide"><img src="assets/images/slide.jpg" style="width: 1841px; height: 1233.47px; left: 0px; top: -355.5px;"></a><a target="_blank" style="display: block; opacity: 1;" class="activeslide"><img src="assets/images/slide.jpg" style="width: 1841px; height: 1233.47px; left: 0px; top: -355.5px;"></a><a target="_blank"><img src="assets/images/slide2.jpg" style="width: 1841px; height: 1233.47px; left: 0px; top: -355.5px;"></a></div><div id="supersized" class="quality" style="display: block;"><a target="_blank" style="display: block; opacity: 1;" class=""><img src="assets/images/slide.jpg" style="width: 1841px; height: 1233.47px; left: 0px; top: -355.5px;"></a><a target="_blank" style="display: block; opacity: 1;" class="activeslide"><img src="assets/images/slide2.jpg" style="width: 1841px; height: 1233.47px; left: 0px; top: -355.5px;"></a><a target="_blank"><img src="assets/images/slide.jpg" style="width: 1841px; height: 1233.47px; left: 0px; top: -355.5px;"></a></div>

<!-- BEGIN: PRELOADER -->
<div id="loader" class="load-full-screen" style="display: none;">
	<div class="loading-animation">
		<span><i class="fa fa-plane"></i></span>
		<span><i class="fa fa-bed"></i></span>
		<span><i class="fa fa-ship"></i></span>
		<span><i class="fa fa-suitcase"></i></span>
	</div>
</div>
<!-- END: PRELOADER -->
<!-- BEGIN: SITE-WRAPPER -->
<div class="site-wrapper">
<!-- BEGIN: NAV SECTION -->
<section>
	<div class="row transparent-menu-top">
		<div class="container clear-padding">
			<div class="navbar-contact">
				<div class="col-md-7 col-sm-6 clear-padding">
					<a href="#" class="transition-effect hidden"><i class="fa fa-phone"></i> (+91) 1234567890</a>
					<a href="#" class="transition-effect"><i class="fa fa-envelope-o hidden"></i>TripsPlanner</a>
				</div>
				<div class="col-md-5 col-sm-6 clear-padding search-box">
					<div class="col-md-6 col-xs-5 clear-padding hidden">
						<form>
							<div class="input-group">
								<input name="search" class="form-control" required="" placeholder="Search" type="text">
								<span class="input-group-addon"><i class="fa fa-search fa-fw"></i></span>
							</div>
						</form>
					</div>
					<div class="col-md-6 col-xs-7 clear-padding user-logged">
						<a href="#" class="transition-effect">
							<img src="<jsp:getProperty name="user" property="imgURL"/>" alt="cruise">
							<jsp:getProperty name="user" property="name"/>
						</a>

						<a href="javascript:genericLogout('${sessionScope.typeLogin}')" class="transition-effect">
							<i class="fa fa-sign-out"></i>Logout</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="clearfix"></div>
	<div class="row transparent-menu hidden">
		<div class="container clear-padding">
			<!-- BEGIN: HEADER -->
			<div class="navbar-wrapper">
				<div class="navbar navbar-default" role="navigation">
					<!-- BEGIN: NAV-CONTAINER -->
					<div class="nav-container">
						<div class="navbar-header">
							<!-- BEGIN: TOGGLE BUTTON (RESPONSIVE)-->
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>

							<!-- BEGIN: LOGO -->
							<a class="navbar-brand logo" href="index.html">CRUISE</a>
						</div>

						<!-- BEGIN: NAVIGATION -->
						<div class="navbar-collapse collapse">
							<ul class="nav navbar-nav navbar-right">
								<li class="dropdown">
									<a class="dropdown-toggle" href="#" data-toggle="dropdown"><i class="fa fa-home"></i> HOME <i class="fa fa-caret-down"></i></a>
									<ul class="dropdown-menu">
										<li><a href="index.html"> HOME STYLE 1</a></li>
										<li><a href="index-2.html"> HOME STYLE 2</a></li>
										<li><a href="index-3.html"> HOME STYLE 3</a></li>
										<li><a href="index-4.html"> HOME STYLE 4</a></li>
										<li><a href="index-5.html"> HOME STYLE 5</a></li>
									</ul>
								</li>
								<li class="dropdown mega">
									<a class="dropdown-toggle" href="#" data-toggle="dropdown"><i class="fa fa-bed"></i> HOTELS <i class="fa fa-caret-down"></i></a>
									<ul class="dropdown-menu mega-menu">
										<li class="col-md-3 col-sm-3 desc">
											<h4>HOTELS</h4>
											<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
										</li>
										<li class="col-md-3 col-sm-4 links">
											<h5>PAGES</h5>
											<ul>
												<li><a href="hotel.html">HOTEL SEARCH</a></li>

												<li><a href="hotel-list.html">HOTEL LIST</a></li>
												<li><a href="hotel-grid.html">HOTEL GRID</a></li>
												<li><a href="hotel-booking.html">HOTEL BOOKING</a></li>
												<li><a href="hotel-booking-2.html">HOTEL BOOKING 2</a></li>
												<li><a href="hotel-detailed-3.html">HOTEL DETAILED</a></li>
												<li><a href="hotel-detailed.html">HOTEL DETAILED 2</a></li>
											</ul>
											<h5 class="top-margin">TOP REGION</h5>
											<ul>
												<li><a href="#">ASIA</a></li>
												<li><a href="#">AFRICA</a></li>
												<li><a href="#">EAST ASIA</a></li>
												<li><a href="#">WESTERN EUROPE</a></li>
												<li><a href="#">SOUTH AMERICA</a></li>
												<li><a href="#">LATIN AMERICA</a></li>
											</ul>
										</li>
										<li class="col-md-3 col-sm-4 links">
											<h5>TOP REGION</h5>
											<ul>
												<li><a href="#">ASIA</a></li>
												<li><a href="#">AFRICA</a></li>
												<li><a href="#">EAST ASIA</a></li>
												<li><a href="#">WESTERN EUROPE</a></li>
												<li><a href="#">SOUTH AMERICA</a></li>
												<li><a href="#">LATIN AMERICA</a></li>
											</ul>
											<h5 class="top-margin">TOP DESTINATION</h5>
											<ul>
												<li><a href="#">BENGLURU</a></li>
												<li><a href="#">CHENNAI</a></li>
												<li><a href="#">CALIFORNIA</a></li>
												<li><a href="#">GOA</a></li>
												<li><a href="#">NEW YORK</a></li>
												<li><a href="#">NEW DELHI</a></li>
											</ul>
										</li>
										<li class="col-md-3 col-sm-4 links">
											<div class="img-div clear-top">
												<img src="assets/images/tour1.jpg" alt="cruise">
												<div class="overlay">
													<h5>20% OFF</h5>
													<p>On Paris HOTELS</p>
													<a href="#">KNOW MORE</a>
												</div>
											</div>
											<div class="img-div">
												<img src="assets/images/tour1.jpg" alt="cruise">
												<div class="overlay">
													<h5>20% OFF</h5>
													<p>On Paris HOTELS</p>
													<a href="#">KNOW MORE</a>
												</div>
											</div>
										</li>
									</ul>
									<div class="clearfix"></div>
								</li>
								<li class="dropdown mega">
									<a class="dropdown-toggle" href="#" data-toggle="dropdown"><i class="fa fa-plane"></i> FLIGHTS <i class="fa fa-caret-down"></i></a>
									<ul class="dropdown-menu mega-menu">
										<li class="col-md-3 col-sm-3 desc">
											<h4>FLIGHTS</h4>
											<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
										</li>
										<li class="col-md-3 col-sm-4 links">
											<h5>PAGES</h5>
											<ul>
												<li><a href="flight.html">FLIGHT SEARCH</a></li>
												<li><a href="flight-list-2.html">FLIGHT LIST</a></li>
												<li><a href="flight-list.html">FLIGHT LIST 2</a></li>
												<li><a href="flight-booking.html">FLIGHT BOOKING</a></li>
											</ul>
											<div class="img-div">
												<img src="assets/images/tour1.jpg" alt="cruise">
												<div class="overlay">
													<h5>30% OFF</h5>
													<p>On BANGKOK FLIGHTS</p>
													<a href="#">KNOW MORE</a>
												</div>
											</div>
										</li>
										<li class="col-md-3 col-sm-4 links">
											<h5>TOP REGION</h5>
											<ul>
												<li><a href="#">ASIA</a></li>
												<li><a href="#">AFRICA</a></li>
												<li><a href="#">EAST ASIA</a></li>
												<li><a href="#">WESTERN EUROPE</a></li>
											</ul>
											<div class="img-div">
												<img src="assets/images/tour1.jpg" alt="cruise">
												<div class="overlay">
													<h5>10% OFF</h5>
													<p>On DUBAI FLIGHTS</p>
													<a href="#">KNOW MORE</a>
												</div>
											</div>
										</li>
										<li class="col-md-3 col-sm-4 links">
											<h5>CHEAP FLIGHTS TO</h5>
											<ul>
												<li><a href="#">BENGLURU</a></li>
												<li><a href="#">CHENNAI</a></li>
												<li><a href="#">CALIFORNIA</a></li>
												<li><a href="#">GOA</a></li>
											</ul>
											<div class="img-div">
												<img src="assets/images/tour1.jpg" alt="cruise">
												<div class="overlay">
													<h5>20% OFF</h5>
													<p>On Paris Flights</p>
													<a href="#">KNOW MORE</a>
												</div>
											</div>
										</li>
									</ul>
									<div class="clearfix"></div>
								</li>
								<li class="dropdown mega">
									<a class="dropdown-toggle" href="#" data-toggle="dropdown"><i class="fa fa-suitcase"></i> TOURS <i class="fa fa-caret-down"></i></a>
									<ul class="dropdown-menu mega-menu">
										<li class="col-md-3 col-sm-3 desc">
											<h4>TOURS</h4>
											<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
										</li>
										<li class="col-md-3 col-sm-4 links">
											<h5>PAGES</h5>
											<ul>
												<li><a href="holiday.html">TOUR SEARCH</a></li><li><a href="holidays-list.html">TOUR LIST</a></li>
												<li><a href="holidays-grid.html">TOUR GRID</a></li>
												<li><a href="holidays-grid-2.html">TOUR GRID 2</a></li>
												<li><a href="holiday-detail-2.html">TOUR DETAIL</a></li>
												<li><a href="holiday-detail.html">TOUR DETAIL 2</a></li>
												<li><a href="holiday-booking.html">TOUR BOOKING</a></li>
												<li><a href="holiday-booking-2.html">TOUR BOOKING 2</a></li>
											</ul>
										</li>
										<li class="col-md-3 col-sm-4 links">
											<h5>TOP REGION</h5>
											<ul>
												<li><a href="#">ASIA</a></li>
												<li><a href="#">AFRICA</a></li>
												<li><a href="#">EAST ASIA</a></li>
												<li><a href="#">WESTERN EUROPE</a></li>
												<li><a href="#">SOUTH AMERICA</a></li>
												<li><a href="#">LATIN AMERICA</a></li>
												<li><a href="#">ASIA</a></li>
											</ul>
										</li>
										<li class="col-md-3 col-sm-4 links">
											<div class="img-div clear-top">
												<img src="assets/images/tour1.jpg" alt="cruise">
												<div class="overlay">
													<h5>DUBAI</h5>
													<p>Starting From $599</p>
													<a href="#">KNOW MORE</a>
												</div>
											</div>
										</li>
									</ul>
									<div class="clearfix"></div>
								</li>
								<li class="dropdown mega">
									<a class="dropdown-toggle" href="#" data-toggle="dropdown"><i class="fa fa-taxi"></i> CARS <i class="fa fa-caret-down"></i></a>
									<ul class="dropdown-menu mega-menu">
										<li class="col-md-3 col-sm-3 desc">
											<h4>CARS</h4>
											<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
										</li>
										<li class="col-md-3 col-sm-4 links">
											<h5>PAGES</h5>
											<ul>
												<li><a href="car.html">CAR SEARCH</a></li>
												<li><a href="car-grid-3.html">CAR GRID</a></li>
												<li><a href="car-list.html">CAR LIST</a></li>
												<li><a href="car-detailed-2.html">CAR DETAIL</a></li>
												<li><a href="car-detailed.html">CAR DETAIL 2</a></li>
											</ul>
										</li>
										<li class="col-md-3 col-sm-4 links">
											<h5>TOP REGION</h5>
											<ul>
												<li><a href="#">ASIA</a></li>
												<li><a href="#">AFRICA</a></li>
												<li><a href="#">EAST ASIA</a></li>
												<li><a href="#">WESTERN EUROPE</a></li>
												<li><a href="#">SOUTH AMERICA</a></li>
											</ul>
										</li>
										<li class="col-md-3 col-sm-4 links">
											<div class="img-div clear-top">
												<img src="assets/images/tour1.jpg" alt="cruise">
												<div class="overlay">
													<h5>DUBAI</h5>
													<p>Starting From $599</p>
													<a href="#">KNOW MORE</a>
												</div>
											</div>
										</li>
									</ul>
									<div class="clearfix"></div>
								</li>
								<li class="dropdown mega">
									<a class="dropdown-toggle" href="#" data-toggle="dropdown"><i class="fa fa-ship"></i> CRUISE <i class="fa fa-caret-down"></i></a>
									<ul class="dropdown-menu mega-menu">
										<li class="col-md-3 col-sm-3 desc">
											<h4>CRUISES</h4>
											<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
										</li>
										<li class="col-md-3 col-sm-4 links">
											<h5>PAGES</h5>
											<ul>
												<li><a href="cruise.html">CRUISE SEARCH</a></li>
												<li><a href="cruise-list.html">CRUISE LIST</a></li>
												<li><a href="cruise-detail-2.html">CRUISE DETAIL</a></li>
												<li><a href="cruise-detail.html">CRUISE DETAIL 2</a></li>
											</ul>
										</li>
										<li class="col-md-3 col-sm-4 links">
											<h5>TOP REGION</h5>
											<ul>
												<li><a href="#">ASIA</a></li>
												<li><a href="#">AFRICA</a></li>
												<li><a href="#">EAST ASIA</a></li>
												<li><a href="#">WESTERN EUROPE</a></li>
												<li><a href="#">SOUTH AMERICA</a></li>
											</ul>
										</li>
										<li class="col-md-3 col-sm-4 links">
											<div class="img-div clear-top">
												<img src="assets/images/tour1.jpg" alt="cruise">
												<div class="overlay">
													<h5>DUBAI</h5>
													<p>Starting From $599</p>
													<a href="#">KNOW MORE</a>
												</div>
											</div>
										</li>
									</ul>
									<div class="clearfix"></div>
								</li>
								<li class="dropdown mega">
									<a class="dropdown-toggle" href="#" data-toggle="dropdown"><i class="fa fa-file"></i> PAGES <i class="fa fa-caret-down"></i></a>
									<ul class="dropdown-menu mega-menu">
										<li class="col-md-3 col-sm-4 links">
											<h5>BLOG PAGES</h5>
											<ul>
												<li><a href="blog-right-sidebar.html">RIGHT SIDEBAR</a></li>
												<li><a href="blog-left-sidebar.html">LEFT SIDEBAR</a></li>
												<li><a href="blog-full-width.html">FULL WIDTH</a></li>
												<li><a href="single-right-sidebar.html">SINGLE RIGHT SIDEBAR</a></li>
												<li><a href="single-left-sidebar.html">SINGLE LEFT SIDEBAR</a></li>
												<li><a href="single-full-width.html">SINGLE FULL WIDTH</a></li>
											</ul>
										</li>
										<li class="col-md-3 col-sm-4 links">
											<h5>SPECIAL PAGES</h5>
											<ul>
												<li><a href="coming-soon.html">COMING SOON</a></li>
												<li><a href="404.html">404</a></li>
												<li><a href="404-2.html">404 2</a></li>
												<li><a href="loading.html">LOADING</a></li>
												<li><a href="login.html">LOGIN/REGSITER</a></li>
												<li><a href="elements.html">ELEMENTS</a></li>
												<li><a href="thank-you.html">COMING SOON</a></li>
											</ul>
										</li>
										<li class="col-md-3 col-sm-4 links">
											<h5>EXTRA PAGES</h5>
											<ul>
												<li><a href="user-profile.html">USER DASHBOARD</a></li>
												<li><a href="gallery-3column.html">GALLERY 3 COLUMN</a></li>
												<li><a href="gallery-4column.html">GALLERY 4 COLUMN</a></li>
												<li><a href="about-us.html">ABOUT US</a></li>
												<li><a href="contact-us.html">CONTACT US</a></li>
											</ul>
										</li>
										<li class="col-md-3 col-sm-4 links">
											<div class="img-div clear-top">
												<img src="assets/images/tour1.jpg" alt="cruise">
												<div class="overlay">
													<h5>DUBAI</h5>
													<p>Starting From $599</p>
													<a href="#">KNOW MORE</a>
												</div>
											</div>
										</li>
									</ul>
									<div class="clearfix"></div>
								</li>
							</ul>
						</div>
						<!-- END: NAVIGATION -->
					</div>
					<!--END: NAV-CONTAINER -->
				</div>
			</div>
			<!-- END: HEADER -->
		</div>
	</div>
</section>
<!-- END: NAV SECTION -->

<!-- BEGIN: SEARCH SECTION -->
<section>
	<div class="row full-width-search">
		<div class="container clear-padding">
			<div class="col-md-8 search-section">
				<div role="tabpanel">
					<!-- BEGIN: CATEGORY TAB -->
					<ul role="tablist" id="searchTab" class="nav nav-tabs search-top hidden">
						<li role="presentation" class="active text-center">
							<a href="#flight" aria-controls="flight" role="tab" data-toggle="tab">
								<i class="fa fa-plane"></i>
								<span>FLIGHTS</span>
							</a>
						</li>
						<li role="presentation" class="text-center">
							<a href="#hotel" aria-controls="hotel" role="tab" data-toggle="tab">
								<i class="fa fa-bed"></i>
								<span>HOTELS</span>
							</a>
						</li>
						<li role="presentation" class="text-center">
							<a href="#holiday" aria-controls="holiday" role="tab" data-toggle="tab">
								<i class="fa fa-suitcase"></i>
								<span>HOLIDAYS</span>
							</a>
						</li>
						<li role="presentation" class="text-center">
							<a href="#taxi" aria-controls="taxi" role="tab" data-toggle="tab">
								<i class="fa fa-cab"></i>
								<span>CAR</span>
							</a>
						</li>
						<li role="presentation" class="text-center">
							<a href="#cruise" aria-controls="cruise" role="tab" data-toggle="tab">
								<i class="fa fa-ship"></i>
								<span>CRUISE</span>
							</a>
						</li>
					</ul>
					<!-- END: CATEGORY TAB -->

					<!-- BEGIN: TAB PANELS -->
					<div class="tab-content">
							<!-- BEGIN: FLIGHT SEARCH -->
							<div role="tabpanel" class="tab-pane active" id="flight">
								<form>
									<div class="col-md-12 product-search-title">Book Flight Tickets</div>
									<div class="col-md-12 search-col-padding">
										<label class="radio-inline">
											<input name="inlineRadioOptions" id="inlineRadio1" value="One Way" type="radio"> One Way
										</label>
										<label class="radio-inline">
											<input name="inlineRadioOptions" id="inlineRadio2" value="Round Trip" type="radio"> Round Trip
										</label>
									</div>
									<div class="clearfix"></div>
									<div class="col-md-6 col-sm-6 search-col-padding">
										<label>Leaving From</label>
										<div class="input-group">
											<input name="departure_city" class="form-control" required="" placeholder="E.g. London" type="text">
											<span class="input-group-addon"><i class="fa fa-map-marker fa-fw"></i></span>
										</div>
									</div>
									<div class="col-md-6 col-sm-6 search-col-padding">
										<label>Leaving To</label>
										<div class="input-group">
											<input name="destination_city" class="form-control" required="" placeholder="E.g. New York" type="text">
											<span class="input-group-addon"><i class="fa fa-map-marker fa-fw"></i></span>
										</div>
									</div>
									<div class="clearfix"></div>
									<div class="col-md-6 col-sm-6 search-col-padding">
										<label>Departure</label>
										<div class="input-group">
											<input id="departure_date" name="departure_date" class="form-control hasDatepicker" placeholder="DD/MM/YYYY" type="text">
											<span class="input-group-addon"><i class="fa fa-calendar fa-fw"></i></span>
										</div>
									</div>
									<div class="col-md-6 col-sm-6 search-col-padding">
										<label>Return</label>
										<div class="input-group">
											<input id="return_date" class="form-control hasDatepicker" name="return_date" placeholder="DD/MM/YYYY" type="text">
											<span class="input-group-addon"><i class="fa fa-calendar fa-fw"></i></span>
										</div>
									</div>
									<div class="clearfix"></div>
									<div class="col-md-4 col-sm-4 search-col-padding">
										<label>Adult</label><br>
										<span class="ui-spinner ui-widget ui-widget-content ui-corner-all" style="height: 40px;"><span class="ui-spinner ui-widget ui-widget-content ui-corner-all"><input id="adult_count" name="adult_count" value="1" class="form-control quantity-padding ui-spinner-input" aria-valuemin="1" aria-valuenow="1" autocomplete="off" role="spinbutton"><a class="ui-spinner-button ui-spinner-up ui-corner-tr ui-button ui-widget ui-state-default ui-button-text-only" tabindex="-1" role="button"><span class="ui-button-text"><span class="ui-icon ui-icon-triangle-1-n"><i class="fa fa-plus"></i></span></span></a><a class="ui-spinner-button ui-spinner-down ui-corner-br ui-button ui-widget ui-state-default ui-button-text-only" tabindex="-1" role="button"><span class="ui-button-text"><span class="ui-icon ui-icon-triangle-1-s"><i class="fa fa-minus"></i></span></span></a></span><a class="ui-spinner-button ui-spinner-up ui-corner-tr ui-button ui-widget ui-state-default ui-button-text-only" tabindex="-1" role="button"><span class="ui-button-text"><span class="ui-icon ui-icon-triangle-1-n"><i class="fa fa-plus"></i></span></span></a><a class="ui-spinner-button ui-spinner-down ui-corner-br ui-button ui-widget ui-state-default ui-button-text-only" tabindex="-1" role="button"><span class="ui-button-text"><span class="ui-icon ui-icon-triangle-1-s"><i class="fa fa-minus"></i></span></span></a></span>
									</div>
									<div class="col-md-4 col-sm-4 search-col-padding">
										<label>Child</label><br>
										<span class="ui-spinner ui-widget ui-widget-content ui-corner-all" style="height: 40px;"><span class="ui-spinner ui-widget ui-widget-content ui-corner-all"><input id="child_count" name="child_count" value="1" class="form-control quantity-padding ui-spinner-input" aria-valuemin="1" aria-valuenow="1" autocomplete="off" role="spinbutton" type="text"><a class="ui-spinner-button ui-spinner-up ui-corner-tr ui-button ui-widget ui-state-default ui-button-text-only" tabindex="-1" role="button"><span class="ui-button-text"><span class="ui-icon ui-icon-triangle-1-n"><i class="fa fa-plus"></i></span></span></a><a class="ui-spinner-button ui-spinner-down ui-corner-br ui-button ui-widget ui-state-default ui-button-text-only" tabindex="-1" role="button"><span class="ui-button-text"><span class="ui-icon ui-icon-triangle-1-s"><i class="fa fa-minus"></i></span></span></a></span><a class="ui-spinner-button ui-spinner-up ui-corner-tr ui-button ui-widget ui-state-default ui-button-text-only" tabindex="-1" role="button"><span class="ui-button-text"><span class="ui-icon ui-icon-triangle-1-n"><i class="fa fa-plus"></i></span></span></a><a class="ui-spinner-button ui-spinner-down ui-corner-br ui-button ui-widget ui-state-default ui-button-text-only" tabindex="-1" role="button"><span class="ui-button-text"><span class="ui-icon ui-icon-triangle-1-s"><i class="fa fa-minus"></i></span></span></a></span>
									</div>
									<div class="col-md-4 col-sm-4 search-col-padding hidden">
										<label>Class</label><br>
										<select class="selectpicker bs-select-hidden">
											<option>Business</option>
											<option>Economy</option>
										</select><div class="btn-group bootstrap-select"><button type="button" class="btn dropdown-toggle custom-select-button" data-toggle="dropdown" title="Business"><span class="filter-option pull-left">Business</span>&nbsp;<span class="caret"></span></button><div class="dropdown-menu open"><ul class="dropdown-menu inner" role="menu"><li data-original-index="0" class="selected"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Business</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="1"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Economy</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li></ul></div></div><div class="btn-group bootstrap-select"><button type="button" class="btn dropdown-toggle custom-select-button" data-toggle="dropdown" title="Business"><span class="filter-option pull-left">Business</span>&nbsp;<span class="caret"></span></button><div class="dropdown-menu open"><ul class="dropdown-menu inner" role="menu"><li data-original-index="0" class="selected"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Business</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="1"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Economy</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li></ul></div></div>
									</div>
									<div class="clearfix"></div>
									<div class="col-md-12 search-col-padding">
										<button type="submit" class="search-button btn transition-effect">Search Flights</button>
									</div>
									<div class="clearfix"></div>
								</form>
							</div>
							<!-- END: FLIGHT SEARCH -->

							<!-- START: HOTEL SEARCH -->
							<div role="tabpanel" class="tab-pane" id="hotel">
								<form>
									<div class="col-md-12 product-search-title">Book Hotel Rooms</div>
									<div class="col-md-12 search-col-padding">
										<label>I Want To Go</label>
										<div class="input-group">
											<input name="destination-city" class="form-control" required="" placeholder="E.g. New York" type="text">
											<span class="input-group-addon"><i class="fa fa-map-marker fa-fw"></i></span>
										</div>
									</div>
									<div class="clearfix"></div>
									<div class="col-md-6 col-sm-6 search-col-padding">
										<label>Check - In</label>
										<div class="input-group">
											<input name="check-in" id="check_in" class="form-control hasDatepicker" placeholder="DD/MM/YYYY" type="text">
											<span class="input-group-addon"><i class="fa fa-calendar fa-fw"></i></span>
										</div>
									</div>
									<div class="col-md-6 col-sm-6 search-col-padding">
										<label>Check - Out</label>
										<div class="input-group">
											<input name="check-out" id="check_out" class="form-control hasDatepicker" placeholder="DD/MM/YYYY" type="text">
											<span class="input-group-addon"><i class="fa fa-calendar fa-fw"></i></span>
										</div>
									</div>
									<div class="clearfix"></div>
									<div class="col-md-3 col-sm-3 search-col-padding">
										<label>Adult</label><br>
										<span class="ui-spinner ui-widget ui-widget-content ui-corner-all"><span class="ui-spinner ui-widget ui-widget-content ui-corner-all"><input id="hotel_adult_count" name="adult_count" value="1" class="form-control quantity-padding ui-spinner-input" aria-valuemin="1" aria-valuenow="1" autocomplete="off" role="spinbutton"><a class="ui-spinner-button ui-spinner-up ui-corner-tr ui-button ui-widget ui-state-default ui-button-text-only" tabindex="-1" role="button"><span class="ui-button-text"><span class="ui-icon ui-icon-triangle-1-n"><i class="fa fa-plus"></i></span></span></a><a class="ui-spinner-button ui-spinner-down ui-corner-br ui-button ui-widget ui-state-default ui-button-text-only" tabindex="-1" role="button"><span class="ui-button-text"><span class="ui-icon ui-icon-triangle-1-s"><i class="fa fa-minus"></i></span></span></a></span><a class="ui-spinner-button ui-spinner-up ui-corner-tr ui-button ui-widget ui-state-default ui-button-text-only" tabindex="-1" role="button"><span class="ui-button-text"><span class="ui-icon ui-icon-triangle-1-n"><i class="fa fa-plus"></i></span></span></a><a class="ui-spinner-button ui-spinner-down ui-corner-br ui-button ui-widget ui-state-default ui-button-text-only" tabindex="-1" role="button"><span class="ui-button-text"><span class="ui-icon ui-icon-triangle-1-s"><i class="fa fa-minus"></i></span></span></a></span>
									</div>
									<div class="col-md-3 col-sm-3 search-col-padding">
										<label>Child</label><br>
										<span class="ui-spinner ui-widget ui-widget-content ui-corner-all"><span class="ui-spinner ui-widget ui-widget-content ui-corner-all"><input id="hotel_child_count" name="child_count" value="1" class="form-control quantity-padding ui-spinner-input" aria-valuemin="1" aria-valuenow="1" autocomplete="off" role="spinbutton" type="text"><a class="ui-spinner-button ui-spinner-up ui-corner-tr ui-button ui-widget ui-state-default ui-button-text-only" tabindex="-1" role="button"><span class="ui-button-text"><span class="ui-icon ui-icon-triangle-1-n"><i class="fa fa-plus"></i></span></span></a><a class="ui-spinner-button ui-spinner-down ui-corner-br ui-button ui-widget ui-state-default ui-button-text-only" tabindex="-1" role="button"><span class="ui-button-text"><span class="ui-icon ui-icon-triangle-1-s"><i class="fa fa-minus"></i></span></span></a></span><a class="ui-spinner-button ui-spinner-up ui-corner-tr ui-button ui-widget ui-state-default ui-button-text-only" tabindex="-1" role="button"><span class="ui-button-text"><span class="ui-icon ui-icon-triangle-1-n"><i class="fa fa-plus"></i></span></span></a><a class="ui-spinner-button ui-spinner-down ui-corner-br ui-button ui-widget ui-state-default ui-button-text-only" tabindex="-1" role="button"><span class="ui-button-text"><span class="ui-icon ui-icon-triangle-1-s"><i class="fa fa-minus"></i></span></span></a></span>
									</div>
									<div class="col-md-3 col-sm-3 search-col-padding">
										<label>Rooms</label><br>
										<select class="selectpicker bs-select-hidden" name="rooms">
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5</option>
											<option>6</option>
										</select><div class="btn-group bootstrap-select"><button type="button" class="btn dropdown-toggle custom-select-button" data-toggle="dropdown" title="1"><span class="filter-option pull-left">1</span>&nbsp;<span class="caret"></span></button><div class="dropdown-menu open"><ul class="dropdown-menu inner" role="menu"><li data-original-index="0" class="selected"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">1</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="1"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">2</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="2"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">3</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="3"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">4</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="4"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">5</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="5"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">6</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li></ul></div></div><div class="btn-group bootstrap-select"><button type="button" class="btn dropdown-toggle custom-select-button" data-toggle="dropdown" title="1"><span class="filter-option pull-left">1</span>&nbsp;<span class="caret"></span></button><div class="dropdown-menu open"><ul class="dropdown-menu inner" role="menu"><li data-original-index="0" class="selected"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">1</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="1"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">2</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="2"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">3</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="3"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">4</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="4"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">5</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="5"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">6</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li></ul></div></div>
									</div>
									<div class="col-md-3 col-sm-3 search-col-padding">
										<label>Nights</label><br>
										<select class="selectpicker bs-select-hidden" name="nights">
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5</option>
											<option>6</option>
										</select><div class="btn-group bootstrap-select"><button type="button" class="btn dropdown-toggle custom-select-button" data-toggle="dropdown" title="1"><span class="filter-option pull-left">1</span>&nbsp;<span class="caret"></span></button><div class="dropdown-menu open"><ul class="dropdown-menu inner" role="menu"><li data-original-index="0" class="selected"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">1</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="1"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">2</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="2"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">3</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="3"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">4</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="4"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">5</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="5"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">6</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li></ul></div></div><div class="btn-group bootstrap-select"><button type="button" class="btn dropdown-toggle custom-select-button" data-toggle="dropdown" title="1"><span class="filter-option pull-left">1</span>&nbsp;<span class="caret"></span></button><div class="dropdown-menu open"><ul class="dropdown-menu inner" role="menu"><li data-original-index="0" class="selected"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">1</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="1"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">2</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="2"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">3</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="3"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">4</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="4"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">5</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="5"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">6</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li></ul></div></div>
									</div>
									<div class="clearfix"></div>
									<div class="col-md-12 search-col-padding">
										<button type="submit" class="search-button btn transition-effect">Search Hotels</button>
									</div>
									<div class="clearfix"></div>
								</form>
							</div>
							<!-- END: HOTEL SEARCH -->

							<!-- START: BEGIN HOLIDAY -->
							<div role="tabpanel" class="tab-pane" id="holiday">
								<form>
									<div class="col-md-12 product-search-title">Book Holiday Packages</div>
									<div class="col-md-6 col-sm-6 search-col-padding">
										<label>From</label>
										<div class="input-group">
											<input name="pack-departure-city" class="form-control" required="" placeholder="E.g. New York" type="text">
											<span class="input-group-addon"><i class="fa fa-map-marker fa-fw"></i></span>
										</div>
									</div>
									<div class="col-md-6 col-sm-6 search-col-padding">
										<label>I Want To Go</label>
										<div class="input-group">
											<input name="pack-destination-city" class="form-control" required="" placeholder="E.g. New York" type="text">
											<span class="input-group-addon"><i class="fa fa-map-marker fa-fw"></i></span>
										</div>
									</div>
									<div class="clearfix"></div>
									<div class="col-md-6 col-sm-6 search-col-padding">
										<label>Starting From</label>
										<div class="input-group">
											<input id="package_start" class="form-control hasDatepicker" placeholder="DD/MM/YYYY" type="text">
											<span class="input-group-addon"><i class="fa fa-calendar fa-fw"></i></span>
										</div>
									</div>
									<div class="col-md-6 col-sm-6 search-col-padding">
										<label>Duration(Optional)</label><br>
										<select class="selectpicker bs-select-hidden" name="holiday_duration">
											<option>3 Days</option>
											<option>5 Days</option>
											<option>1 Week</option>
											<option>2 Weeks</option>
											<option>1 Month</option>
											<option>1+ Month</option>
										</select><div class="btn-group bootstrap-select"><button type="button" class="btn dropdown-toggle custom-select-button" data-toggle="dropdown" title="3 Days"><span class="filter-option pull-left">3 Days</span>&nbsp;<span class="caret"></span></button><div class="dropdown-menu open"><ul class="dropdown-menu inner" role="menu"><li data-original-index="0" class="selected"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">3 Days</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="1"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">5 Days</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="2"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">1 Week</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="3"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">2 Weeks</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="4"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">1 Month</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="5"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">1+ Month</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li></ul></div></div><div class="btn-group bootstrap-select"><button type="button" class="btn dropdown-toggle custom-select-button" data-toggle="dropdown" title="3 Days"><span class="filter-option pull-left">3 Days</span>&nbsp;<span class="caret"></span></button><div class="dropdown-menu open"><ul class="dropdown-menu inner" role="menu"><li data-original-index="0" class="selected"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">3 Days</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="1"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">5 Days</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="2"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">1 Week</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="3"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">2 Weeks</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="4"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">1 Month</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="5"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">1+ Month</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li></ul></div></div>
									</div>
									<div class="clearfix"></div>
									<div class="col-md-6 col-sm-6 search-col-padding">
										<label>Package Type(Optional)</label><br>
										<select class="selectpicker bs-select-hidden" name="package_type">
											<option>Group</option>
											<option>Family</option>
											<option>Individual</option>
											<option>Honeymoon</option>
										</select><div class="btn-group bootstrap-select"><button type="button" class="btn dropdown-toggle custom-select-button" data-toggle="dropdown" title="Group"><span class="filter-option pull-left">Group</span>&nbsp;<span class="caret"></span></button><div class="dropdown-menu open"><ul class="dropdown-menu inner" role="menu"><li data-original-index="0" class="selected"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Group</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="1"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Family</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="2"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Individual</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="3"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Honeymoon</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li></ul></div></div><div class="btn-group bootstrap-select"><button type="button" class="btn dropdown-toggle custom-select-button" data-toggle="dropdown" title="Group"><span class="filter-option pull-left">Group</span>&nbsp;<span class="caret"></span></button><div class="dropdown-menu open"><ul class="dropdown-menu inner" role="menu"><li data-original-index="0" class="selected"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Group</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="1"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Family</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="2"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Individual</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="3"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Honeymoon</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li></ul></div></div>
									</div>
									<div class="col-md-6 col-sm-6 search-col-padding">
										<label>Budget(Optional)</label><br>
										<select class="selectpicker bs-select-hidden" name="package_budget">
											<option>500</option>
											<option>1000</option>
											<option>1000+</option>
										</select><div class="btn-group bootstrap-select"><button type="button" class="btn dropdown-toggle custom-select-button" data-toggle="dropdown" title="500"><span class="filter-option pull-left">500</span>&nbsp;<span class="caret"></span></button><div class="dropdown-menu open"><ul class="dropdown-menu inner" role="menu"><li data-original-index="0" class="selected"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">500</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="1"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">1000</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="2"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">1000+</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li></ul></div></div><div class="btn-group bootstrap-select"><button type="button" class="btn dropdown-toggle custom-select-button" data-toggle="dropdown" title="500"><span class="filter-option pull-left">500</span>&nbsp;<span class="caret"></span></button><div class="dropdown-menu open"><ul class="dropdown-menu inner" role="menu"><li data-original-index="0" class="selected"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">500</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="1"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">1000</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="2"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">1000+</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li></ul></div></div>
									</div>
									<div class="clearfix"></div>
									<div class="col-md-12 search-col-padding">
										<button type="submit" class="search-button btn transition-effect">Search Packages</button>
									</div>
									<div class="clearfix"></div>
								</form>
							</div>
							<!-- END: HOLIDAYS -->

							<!-- START: CAR SEARCH -->
							<div role="tabpanel" class="tab-pane" id="taxi">
								<form>
									<div class="col-md-12 product-search-title">Search Perfect Car</div>
									<div class="col-md-6 col-sm-6 search-col-padding">
										<label>Pick Up Location</label>
										<div class="input-group">
											<input name="departure-city" class="form-control" required="" placeholder="E.g. New York" type="text">
											<span class="input-group-addon"><i class="fa fa-map-marker fa-fw"></i></span>
										</div>
									</div>
									<div class="col-md-6 col-sm-6 search-col-padding">
										<label>Drop Off Location</label>
										<div class="input-group">
											<input name="destination-city" class="form-control" required="" placeholder="E.g. New York" type="text">
											<span class="input-group-addon"><i class="fa fa-map-marker fa-fw"></i></span>
										</div>
									</div>
									<div class="clearfix"></div>
									<div class="col-md-6 col-sm-6 search-col-padding">
										<label>Pick Up Date</label>
										<div class="input-group">
											<input id="car_start" class="form-control hasDatepicker" placeholder="MM/DD/YYYY" type="text">
											<span class="input-group-addon"><i class="fa fa-calendar fa-fw"></i></span>
										</div>
									</div>
									<div class="col-md-6 col-sm-6 search-col-padding">
										<label>Pick Off Date</label>
										<div class="input-group">
											<input id="car_end" class="form-control hasDatepicker" placeholder="MM/DD/YYYY" type="text">
											<span class="input-group-addon"><i class="fa fa-calendar fa-fw"></i></span>
										</div>
									</div>
									<div class="clearfix"></div>
									<div class="col-md-6 col-sm-6 search-col-padding">
										<label>Car Brnad(Optional)</label><br>
										<select class="selectpicker bs-select-hidden" name="brand">
											<option>BMW</option>
											<option>Audi</option>
											<option>Mercedes</option>
											<option>Suzuki</option>
											<option>Honda</option>
											<option>Hyundai</option>
											<option>Toyota</option>
										</select><div class="btn-group bootstrap-select"><button type="button" class="btn dropdown-toggle custom-select-button" data-toggle="dropdown" title="BMW"><span class="filter-option pull-left">BMW</span>&nbsp;<span class="caret"></span></button><div class="dropdown-menu open"><ul class="dropdown-menu inner" role="menu"><li data-original-index="0" class="selected"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">BMW</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="1"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Audi</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="2"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Mercedes</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="3"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Suzuki</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="4"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Honda</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="5"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Hyundai</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="6"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Toyota</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li></ul></div></div><div class="btn-group bootstrap-select"><button type="button" class="btn dropdown-toggle custom-select-button" data-toggle="dropdown" title="BMW"><span class="filter-option pull-left">BMW</span>&nbsp;<span class="caret"></span></button><div class="dropdown-menu open"><ul class="dropdown-menu inner" role="menu"><li data-original-index="0" class="selected"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">BMW</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="1"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Audi</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="2"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Mercedes</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="3"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Suzuki</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="4"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Honda</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="5"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Hyundai</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="6"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Toyota</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li></ul></div></div>
									</div>
									<div class="col-md-6 col-sm-6 search-col-padding">
										<label>Car Type(Optional)</label><br>
										<select class="selectpicker bs-select-hidden" name="car_type">
											<option>Limo</option>
											<option>Sedan</option>
										</select><div class="btn-group bootstrap-select"><button type="button" class="btn dropdown-toggle custom-select-button" data-toggle="dropdown" title="Limo"><span class="filter-option pull-left">Limo</span>&nbsp;<span class="caret"></span></button><div class="dropdown-menu open"><ul class="dropdown-menu inner" role="menu"><li data-original-index="0" class="selected"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Limo</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="1"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Sedan</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li></ul></div></div><div class="btn-group bootstrap-select"><button type="button" class="btn dropdown-toggle custom-select-button" data-toggle="dropdown" title="Limo"><span class="filter-option pull-left">Limo</span>&nbsp;<span class="caret"></span></button><div class="dropdown-menu open"><ul class="dropdown-menu inner" role="menu"><li data-original-index="0" class="selected"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Limo</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="1"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Sedan</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li></ul></div></div>
									</div>
									<div class="clearfix"></div>
									<div class="col-md-12 search-col-padding">
										<button type="submit" class="search-button btn transition-effect">Search Cars</button>
									</div>
									<div class="clearfix"></div>
								</form>
							</div>
							<!-- END: CAR SEARCH -->

							<!-- START: CRUISE SEARCH -->
							<div role="tabpanel" class="tab-pane" id="cruise">
								<form>
									<div class="col-md-12 product-search-title">Cruise Holidays</div>
									<div class="col-md-6 col-sm-6 search-col-padding">
										<label>From</label>
										<div class="input-group">
											<input name="pack-departure-city" class="form-control" required="" placeholder="E.g. New York" type="text">
											<span class="input-group-addon"><i class="fa fa-map-marker fa-fw"></i></span>
										</div>
									</div>
									<div class="col-md-6 col-sm-6 search-col-padding">
										<label>I Want To Go</label>
										<div class="input-group">
											<input name="pack-destination-city" class="form-control" required="" placeholder="E.g. New York" type="text">
											<span class="input-group-addon"><i class="fa fa-map-marker fa-fw"></i></span>
										</div>
									</div>
									<div class="clearfix"></div>
									<div class="col-md-6 col-sm-6 search-col-padding">
										<label>Starting From</label>
										<div class="input-group">
											<input id="cruise_start" class="form-control hasDatepicker" placeholder="DD/MM/YYYY" type="text">
											<span class="input-group-addon"><i class="fa fa-calendar fa-fw"></i></span>
										</div>
									</div>
									<div class="col-md-6 col-sm-6 search-col-padding">
										<label>Duration(Optional)</label><br>
										<select class="selectpicker bs-select-hidden" name="holiday_duration">
											<option>3 Days</option>
											<option>5 Days</option>
											<option>1 Week</option>
											<option>2 Weeks</option>
											<option>1 Month</option>
											<option>1+ Month</option>
										</select><div class="btn-group bootstrap-select"><button type="button" class="btn dropdown-toggle custom-select-button" data-toggle="dropdown" title="3 Days"><span class="filter-option pull-left">3 Days</span>&nbsp;<span class="caret"></span></button><div class="dropdown-menu open"><ul class="dropdown-menu inner" role="menu"><li data-original-index="0" class="selected"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">3 Days</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="1"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">5 Days</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="2"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">1 Week</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="3"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">2 Weeks</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="4"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">1 Month</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="5"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">1+ Month</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li></ul></div></div><div class="btn-group bootstrap-select"><button type="button" class="btn dropdown-toggle custom-select-button" data-toggle="dropdown" title="3 Days"><span class="filter-option pull-left">3 Days</span>&nbsp;<span class="caret"></span></button><div class="dropdown-menu open"><ul class="dropdown-menu inner" role="menu"><li data-original-index="0" class="selected"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">3 Days</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="1"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">5 Days</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="2"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">1 Week</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="3"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">2 Weeks</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="4"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">1 Month</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="5"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">1+ Month</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li></ul></div></div>
									</div>
									<div class="clearfix"></div>
									<div class="col-md-6 col-sm-6 search-col-padding">
										<label>Package Type(Optional)</label><br>
										<select class="selectpicker bs-select-hidden" name="package_type">
											<option>Group</option>
											<option>Family</option>
											<option>Individual</option>
											<option>Honeymoon</option>
										</select><div class="btn-group bootstrap-select"><button type="button" class="btn dropdown-toggle custom-select-button" data-toggle="dropdown" title="Group"><span class="filter-option pull-left">Group</span>&nbsp;<span class="caret"></span></button><div class="dropdown-menu open"><ul class="dropdown-menu inner" role="menu"><li data-original-index="0" class="selected"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Group</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="1"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Family</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="2"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Individual</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="3"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Honeymoon</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li></ul></div></div><div class="btn-group bootstrap-select"><button type="button" class="btn dropdown-toggle custom-select-button" data-toggle="dropdown" title="Group"><span class="filter-option pull-left">Group</span>&nbsp;<span class="caret"></span></button><div class="dropdown-menu open"><ul class="dropdown-menu inner" role="menu"><li data-original-index="0" class="selected"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Group</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="1"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Family</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="2"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Individual</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="3"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Honeymoon</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li></ul></div></div>
									</div>
									<div class="col-md-6 col-sm-6 search-col-padding">
										<label>Budget(Optional)</label><br>
										<select class="selectpicker bs-select-hidden" name="package_budget">
											<option>500</option>
											<option>1000</option>
											<option>1000+</option>
										</select><div class="btn-group bootstrap-select"><button type="button" class="btn dropdown-toggle custom-select-button" data-toggle="dropdown" title="500"><span class="filter-option pull-left">500</span>&nbsp;<span class="caret"></span></button><div class="dropdown-menu open"><ul class="dropdown-menu inner" role="menu"><li data-original-index="0" class="selected"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">500</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="1"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">1000</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="2"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">1000+</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li></ul></div></div><div class="btn-group bootstrap-select"><button type="button" class="btn dropdown-toggle custom-select-button" data-toggle="dropdown" title="500"><span class="filter-option pull-left">500</span>&nbsp;<span class="caret"></span></button><div class="dropdown-menu open"><ul class="dropdown-menu inner" role="menu"><li data-original-index="0" class="selected"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">500</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="1"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">1000</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="2"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">1000+</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li></ul></div></div>
									</div>
									<div class="clearfix"></div>
									<div class="col-md-12 search-col-padding">
										<button type="submit" class="search-button btn transition-effect">Search Cruises</button>
									</div>
									<div class="clearfix"></div>
								</form>
							</div>
							<!-- END: CRUISE SEARCH -->

						</div>
						<!-- END: TAB PANE -->
				</div>
			</div>
			<div class="offer-slider">
				<div id="offer1" class="owl-carousel col-md-4 text-right owl-theme owl-loaded hidden owl-responsive-1000 owl-hidden" style="">



				<div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(-99.999px, 0px, 0px); transition: all 0.25s ease 0s; width: 199.998px;"><div class="owl-item cloned" style="width: 33.333px; margin-right: 0px;"><div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(-1800px, 0px, 0px); transition: all 0.25s ease 0s; width: 2520px;"><div class="owl-item cloned" style="width: 360px; margin-right: 0px;"><div class="item">
						<h3>Romantic Paris</h3>
						<h4>Starting From $999/Person</h4>
						<a href="#">KNOW MORE</a>
					</div></div><div class="owl-item cloned" style="width: 360px; margin-right: 0px;"><div class="item">
						<h3>Sky High Dubai</h3>
						<h4>Starting From $399/Person</h4>
						<a href="#">KNOW MORE</a>
					</div></div><div class="owl-item" style="width: 360px; margin-right: 0px;"><div class="item">
						<h3>Hong Kong Fun</h3>
						<h4>Starting From $599/Person</h4>
						<a href="#">KNOW MORE</a>
					</div></div><div class="owl-item" style="width: 360px; margin-right: 0px;"><div class="item">
						<h3>Romantic Paris</h3>
						<h4>Starting From $999/Person</h4>
						<a href="#">KNOW MORE</a>
					</div></div><div class="owl-item" style="width: 360px; margin-right: 0px;"><div class="item">
						<h3>Sky High Dubai</h3>
						<h4>Starting From $399/Person</h4>
						<a href="#">KNOW MORE</a>
					</div></div><div class="owl-item cloned active" style="width: 360px; margin-right: 0px;"><div class="item">
						<h3>Hong Kong Fun</h3>
						<h4>Starting From $599/Person</h4>
						<a href="#">KNOW MORE</a>
					</div></div><div class="owl-item cloned" style="width: 360px; margin-right: 0px;"><div class="item">
						<h3>Romantic Paris</h3>
						<h4>Starting From $999/Person</h4>
						<a href="#">KNOW MORE</a>
					</div></div></div></div></div><div class="owl-item cloned" style="width: 33.333px; margin-right: 0px;"><div class="owl-controls"><div class="owl-nav"><div class="owl-prev" style="display: none;">prev</div><div class="owl-next" style="display: none;">next</div></div><div style="" class="owl-dots"><div class="owl-dot active"><span></span></div><div class="owl-dot"><span></span></div><div class="owl-dot"><span></span></div></div></div></div><div class="owl-item" style="width: 33.333px; margin-right: 0px;"><div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(-1800px, 0px, 0px); transition: all 0.25s ease 0s; width: 2520px;"><div class="owl-item cloned" style="width: 360px; margin-right: 0px;"><div class="item">
						<h3>Romantic Paris</h3>
						<h4>Starting From $999/Person</h4>
						<a href="#">KNOW MORE</a>
					</div></div><div class="owl-item cloned" style="width: 360px; margin-right: 0px;"><div class="item">
						<h3>Sky High Dubai</h3>
						<h4>Starting From $399/Person</h4>
						<a href="#">KNOW MORE</a>
					</div></div><div class="owl-item" style="width: 360px; margin-right: 0px;"><div class="item">
						<h3>Hong Kong Fun</h3>
						<h4>Starting From $599/Person</h4>
						<a href="#">KNOW MORE</a>
					</div></div><div class="owl-item" style="width: 360px; margin-right: 0px;"><div class="item">
						<h3>Romantic Paris</h3>
						<h4>Starting From $999/Person</h4>
						<a href="#">KNOW MORE</a>
					</div></div><div class="owl-item" style="width: 360px; margin-right: 0px;"><div class="item">
						<h3>Sky High Dubai</h3>
						<h4>Starting From $399/Person</h4>
						<a href="#">KNOW MORE</a>
					</div></div><div class="owl-item cloned active" style="width: 360px; margin-right: 0px;"><div class="item">
						<h3>Hong Kong Fun</h3>
						<h4>Starting From $599/Person</h4>
						<a href="#">KNOW MORE</a>
					</div></div><div class="owl-item cloned" style="width: 360px; margin-right: 0px;"><div class="item">
						<h3>Romantic Paris</h3>
						<h4>Starting From $999/Person</h4>
						<a href="#">KNOW MORE</a>
					</div></div></div></div></div><div class="owl-item active" style="width: 33.333px; margin-right: 0px;"><div class="owl-controls"><div class="owl-nav"><div class="owl-prev" style="display: none;">prev</div><div class="owl-next" style="display: none;">next</div></div><div style="" class="owl-dots"><div class="owl-dot active"><span></span></div><div class="owl-dot"><span></span></div><div class="owl-dot"><span></span></div></div></div></div><div class="owl-item cloned active" style="width: 33.333px; margin-right: 0px;"><div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(-1800px, 0px, 0px); transition: all 0.25s ease 0s; width: 2520px;"><div class="owl-item cloned" style="width: 360px; margin-right: 0px;"><div class="item">
						<h3>Romantic Paris</h3>
						<h4>Starting From $999/Person</h4>
						<a href="#">KNOW MORE</a>
					</div></div><div class="owl-item cloned" style="width: 360px; margin-right: 0px;"><div class="item">
						<h3>Sky High Dubai</h3>
						<h4>Starting From $399/Person</h4>
						<a href="#">KNOW MORE</a>
					</div></div><div class="owl-item" style="width: 360px; margin-right: 0px;"><div class="item">
						<h3>Hong Kong Fun</h3>
						<h4>Starting From $599/Person</h4>
						<a href="#">KNOW MORE</a>
					</div></div><div class="owl-item" style="width: 360px; margin-right: 0px;"><div class="item">
						<h3>Romantic Paris</h3>
						<h4>Starting From $999/Person</h4>
						<a href="#">KNOW MORE</a>
					</div></div><div class="owl-item" style="width: 360px; margin-right: 0px;"><div class="item">
						<h3>Sky High Dubai</h3>
						<h4>Starting From $399/Person</h4>
						<a href="#">KNOW MORE</a>
					</div></div><div class="owl-item cloned active" style="width: 360px; margin-right: 0px;"><div class="item">
						<h3>Hong Kong Fun</h3>
						<h4>Starting From $599/Person</h4>
						<a href="#">KNOW MORE</a>
					</div></div><div class="owl-item cloned" style="width: 360px; margin-right: 0px;"><div class="item">
						<h3>Romantic Paris</h3>
						<h4>Starting From $999/Person</h4>
						<a href="#">KNOW MORE</a>
					</div></div></div></div></div><div class="owl-item cloned" style="width: 33.333px; margin-right: 0px;"><div class="owl-controls"><div class="owl-nav"><div class="owl-prev" style="display: none;">prev</div><div class="owl-next" style="display: none;">next</div></div><div style="" class="owl-dots"><div class="owl-dot active"><span></span></div><div class="owl-dot"><span></span></div><div class="owl-dot"><span></span></div></div></div></div></div></div><div class="owl-controls"><div class="owl-nav"><div class="owl-prev" style="display: none;">prev</div><div class="owl-next" style="display: none;">next</div></div><div style="" class="owl-dots"><div class="owl-dot"><span></span></div><div class="owl-dot active"><span></span></div></div></div></div>
			</div>
		</div>
	</div>
</section>
<!-- END: SEARCH SECTION -->

<!-- BEGIN: HOW IT WORK -->
<section id="how-it-work">
		<div class="row work-row">
			<div class="container">
				<div class="section-title text-center">
					<h2>HOW IT WORKS?</h2>
					<h4>SEARCH - SELECT - BOOK</h4>
					<div class="space"></div>
					<p>
						Lorem Ipsum is simply dummy text. Lorem Ipsum is simply dummy text of the printing and typesetting industry.<br>
						Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
					</p>
				</div>
				<div class="work-step">
					<div class="col-md-4 col-sm-4 first-step text-center">
						<i class="fa fa-search"></i>
						<h5>SEARCH</h5>
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
					</div>
					<div class="col-md-4 col-sm-4 second-step text-center">
						<i class="fa fa-heart-o"></i>
						<h5>SELECT</h5>
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
					</div>
					<div class="col-md-4 col-sm-4 third-step text-center">
						<i class="fa fa-shopping-cart"></i>
						<h5>BOOK</h5>
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
					</div>
				</div>
			</div>
		</div>
</section>
<!--END: HOW IT WORK -->

<!-- START: PRODUCT SECTION-->
<section class="hotel-product home-product hidden">
	<!-- START: PRODUCT ROW 1 -->
	<div class="row light-row">
			<div class="col-md-6 clear-padding wow slideInLeft animated" style="visibility: visible; animation-name: slideInLeft;">
				<div class="product-wrapper">
					<div class="col-md-6 col-sm-6 home-product-padding tooltip-right">
						<h4>Romantic Paris</h4>
						<h5><i class="fa fa-map-marker"></i> France</h5>
						<p>Lorem Ipsum is simply dummy text. Lorem Ipsum is simply dummy text of the printing.</p>
						<div class="rating-box">
							<div class="pull-left">
								<img src="assets/images/tripadvisor.png" alt="cruise"><span>4.0/5</span>
							</div>
							<div class="pull-right">
								<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-half-o"></i><span>4.5/5</span>
							</div>
						</div>
						<div class="clearfix"></div>
						<div class="pricing-info">
							<div class="pull-left">
								<span>$999/Person</span>
							</div>
							<div class="pull-right">
								<a href="#" class="wow fadeIn animated" style="visibility: visible; animation-name: fadeIn;">BOOK NOW</a>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="col-md-6 col-sm-6 clear-padding image-sm text-center">
						<img src="assets/images/home2.jpg" alt="cruise">
						<div class="detail-link-wrapper">
							<div class="detail-link">
								<a href="#"><i class="fa fa-search"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
				<div class="product-wrapper">
					<div class="col-md-6 col-sm-6 clear-padding image-sm text-center">
						<img src="assets/images/home2.jpg" alt="cruise">
						<div class="detail-link-wrapper">
							<div class="detail-link">
								<a href="#"><i class="fa fa-search"></i></a>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-sm-6 home-product-padding tooltip-left">
						<h4>Blue Beach</h4>
						<h5><i class="fa fa-map-marker"></i> Dubai</h5>
						<p>Lorem Ipsum is simply dummy text. Lorem Ipsum is simply dummy text of the printing.</p>
						<div class="rating-box">
							<div class="pull-left">
								<img src="assets/images/tripadvisor.png" alt="cruise"><span>4.0/5</span>
							</div>
							<div class="pull-right">
								<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-half-o"></i><span>4.5/5</span>
							</div>
						</div>
						<div class="clearfix"></div>
						<div class="pricing-info">
							<div class="pull-left">
								<span>$899/Person</span>
							</div>
							<div class="pull-right">
								<a href="#" class="wow fadeIn animated" style="visibility: visible; animation-name: fadeIn;">BOOK NOW</a>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<div class="clearfix visible-sm-block"></div>
			<div class="col-md-6 clear-padding image-lg wow slideInRight animated" style="visibility: visible; animation-name: slideInRight;">
				<img src="assets/images/home.jpg" alt="cruise">
				<div class="overlay">
					<div class="product-detail text-center">
						<h3>Africa Safari</h3>
						<h5><i class="fa fa-map-marker"></i> KENYA</h5>
						<p>Lorem Ipsum is simply dummy text. Lorem Ipsum is simply dummy text of the printing.</p>
						<div class="rating-box">
							<div class="pull-left">
								<img src="assets/images/tripadvisor.png" alt="cruise"><span>4.0/5</span>
							</div>
							<div class="pull-right">
								<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-half-o"></i><span>4.5/5</span>
							</div>
						</div>
						<div class="clearfix"></div>
						<div class="pricing-info">
							<div class="pull-left">
								<span>$499/Person</span>
							</div>
							<div class="pull-right">
								<a href="#" class="wow fadeIn animated" style="visibility: visible; animation-name: fadeIn;">BOOK NOW</a>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
	</div>
	<!-- END: PRODUCT ROW 1 -->
</section>
<!-- END: PRODUCT SECTION -->

<!-- BEGIN: TOP DESTINATION SECTION -->
<section id="home-top-destination">
	<div class="row image-background">
		<div class="td-overlay">
			<div class="container">
				<div class="light-section-title text-center">
					<h2>TOP DESTINATION</h2>
					<h4>EXPLORE</h4>
					<div class="space"></div>
					<p>
						Lorem Ipsum is simply dummy text. Lorem Ipsum is simply dummy text of the printing and typesetting industry.<br>
						Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
					</p>
				</div>
				<div class="col-md-10 col-md-offset-1 on-top clear-padding">
					<div class="col-md-6 col-sm-6 td-product text-center clear-padding wow slideInUp" data-wow-delay="0.1s" style="visibility: hidden; animation-delay: 0.1s; animation-name: none;">
						<img src="assets/images/tour1.jpg" alt="cruise">
						<div class="overlay">
							<div class="wrapper">
								<h5>FRANCE</h5>
								<h3><span>ROMANTIC PARIS</span></h3>
								<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.</p>
								<a href="#">KNOW MORE</a>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-sm-6 td-product text-center clear-padding wow slideInUp" data-wow-delay="0.2s" style="visibility: hidden; animation-delay: 0.2s; animation-name: none;">
						<img src="assets/images/tour1.jpg" alt="cruise">
						<div class="overlay">
							<div class="wrapper">
								<h5>BANGKOK</h5>
								<h3><span>DISENYLAND BANGKOK</span></h3>
								<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.</p>
								<a href="#">KNOW MORE</a>
							</div>
						</div>
					</div>
					<div class="clearfix visible-md-block"></div>
					<div class="col-md-6 col-sm-6 td-product text-center clear-padding wow slideInUp" data-wow-delay="0.1s" style="visibility: hidden; animation-delay: 0.1s; animation-name: none;">
						<img src="assets/images/tour1.jpg" alt="cruise">
						<div class="overlay">
							<div class="wrapper">
								<h5>DUBAI</h5>
								<h3><span>SKY HIGH DUBAI</span></h3>
								<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.</p>
								<a href="#">KNOW MORE</a>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-sm-6 td-product text-center clear-padding wow slideInUp" data-wow-delay="0.2s" style="visibility: hidden; animation-delay: 0.2s; animation-name: none;">
						<img src="assets/images/tour1.jpg" alt="cruise">
						<div class="overlay">
							<div class="wrapper">
								<h5>AUSTRIA</h5>
								<h3><span>HILLY VIEW</span></h3>
								<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.</p>
								<a href="#">KNOW MORE</a>
							</div>
						</div>
					</div>
					<div class="clearfix visible-md-block"></div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- END: TOP DESTINATION SECTION -->

<!-- BEGIN: RECENT BLOG POST -->
<section id="recent-blog">
	<div class="row top-offer hidden">
		<div class="container">
			<div class="section-title text-center">
				<h2>RECENT BLOG POSTS</h2>
				<h4>NEWS</h4>
			</div>
			<div class="owl-carousel owl-theme owl-loaded owl-responsive-1000 owl-hidden" id="post-list">






			<div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 65px;"><div class="owl-item active" style="width: 2.5px; margin-right: 30px;"><div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(-1170px, 0px, 0px); transition: all 0s ease 0s; width: 4095px;"><div class="owl-item cloned" style="width: 262.5px; margin-right: 30px;"><div class="room-grid-view wow slideInUp animated" data-wow-delay="0.3s" style="visibility: visible; animation-delay: 0.3s; animation-name: slideInUp;">
					<img src="assets/images/offer3.jpg" alt="cruise">
					<div class="room-info">
						<div class="post-title">
							<h5>POST TITLE GOES HERE</h5>
							<p><i class="fa fa-calendar"></i> Jul 15, 2015</p>
						</div>
						<div class="post-desc">
							<p>Lorem Ipsum is simply dummy text. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
						</div>
						<div class="room-book">
							<div class="col-md-8 col-sm-6 col-xs-6 clear-padding post-alt">
								<h5><i class="fa fa-comments"></i> 2 <i class="fa fa-share-alt"></i> 20 </h5>
							</div>
							<div class="col-md-4 col-sm-6 col-xs-6 clear-padding">
								<a href="#" class="text-center">MORE</a>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div></div><div class="owl-item cloned" style="width: 262.5px; margin-right: 30px;"><div class="room-grid-view wow slideInUp animated" data-wow-delay="0.4s" style="visibility: visible; animation-delay: 0.4s; animation-name: slideInUp;">
					<img src="assets/images/offer4.jpg" alt="cruise">
					<div class="room-info">
						<div class="post-title">
							<h5>POST TITLE GOES HERE</h5>
							<p><i class="fa fa-calendar"></i> Jul 15, 2015</p>
						</div>
						<div class="post-desc">
							<p>Lorem Ipsum is simply dummy text. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
						</div>
						<div class="room-book">
							<div class="col-md-8 col-sm-6 col-xs-6 clear-padding post-alt">
								<h5><i class="fa fa-comments"></i> 2 <i class="fa fa-share-alt"></i> 20 </h5>
							</div>
							<div class="col-md-4 col-sm-6 col-xs-6 clear-padding">
								<a href="#" class="text-center">MORE</a>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div></div><div class="owl-item cloned" style="width: 262.5px; margin-right: 30px;"><div class="room-grid-view wow slideInUp animated" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInUp;">
					<img src="assets/images/offer3.jpg" alt="cruise">
					<div class="room-info">
						<div class="post-title">
							<h5>POST TITLE GOES HERE</h5>
							<p><i class="fa fa-calendar"></i> Jul 15, 2015</p>
						</div>
						<div class="post-desc">
							<p>Lorem Ipsum is simply dummy text. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
						</div>
						<div class="room-book">
							<div class="col-md-8 col-sm-6 col-xs-6 clear-padding post-alt">
								<h5><i class="fa fa-comments"></i> 2 <i class="fa fa-share-alt"></i> 20 </h5>
							</div>
							<div class="col-md-4 col-sm-6 col-xs-6 clear-padding">
								<a href="#" class="text-center">MORE</a>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div></div><div class="owl-item cloned" style="width: 262.5px; margin-right: 30px;"><div class="room-grid-view wow slideInUp animated" data-wow-delay="0.6s" style="visibility: visible; animation-delay: 0.6s; animation-name: slideInUp;">
					<img src="assets/images/offer2.jpg" alt="cruise">
					<div class="room-info">
						<div class="post-title">
							<h5>POST TITLE GOES HERE</h5>
							<p><i class="fa fa-calendar"></i> Jul 15, 2015</p>
						</div>
						<div class="post-desc">
							<p>Lorem Ipsum is simply dummy text. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
						</div>
						<div class="room-book">
							<div class="col-md-8 col-sm-6 col-xs-6 clear-padding post-alt">
								<h5><i class="fa fa-comments"></i> 2 <i class="fa fa-share-alt"></i> 20 </h5>
							</div>
							<div class="col-md-4 col-sm-6 col-xs-6 clear-padding">
								<a href="#" class="text-center">MORE</a>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div></div><div class="owl-item active" style="width: 262.5px; margin-right: 30px;"><div class="room-grid-view wow slideInUp animated" data-wow-delay="0.1s" style="visibility: visible; animation-delay: 0.1s; animation-name: slideInUp;">
					<img src="assets/images/offer1.jpg" alt="cruise">
					<div class="room-info">
						<div class="post-title">
							<h5>POST TITLE GOES HERE</h5>
							<p><i class="fa fa-calendar"></i> Jul 15, 2015</p>
						</div>
						<div class="post-desc">
							<p>Lorem Ipsum is simply dummy text. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
						</div>
						<div class="room-book">
							<div class="col-md-8 col-sm-6 col-xs-6 clear-padding post-alt">
								<h5><i class="fa fa-comments"></i> 2 <i class="fa fa-share-alt"></i> 20 </h5>
							</div>
							<div class="col-md-4 col-sm-6 col-xs-6 clear-padding">
								<a href="#" class="text-center">MORE</a>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div></div><div class="owl-item active" style="width: 262.5px; margin-right: 30px;"><div class="room-grid-view wow slideInUp animated" data-wow-delay="0.2s" style="visibility: visible; animation-delay: 0.2s; animation-name: slideInUp;">
					<img src="assets/images/offer2.jpg" alt="cruise">
					<div class="room-info">
						<div class="post-title">
							<h5>POST TITLE GOES HERE</h5>
							<p><i class="fa fa-calendar"></i> Jul 15, 2015</p>
						</div>
						<div class="post-desc">
							<p>Lorem Ipsum is simply dummy text. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
						</div>
						<div class="room-book">
							<div class="col-md-8 col-sm-6 col-xs-6 clear-padding post-alt">
								<h5><i class="fa fa-comments"></i> 2 <i class="fa fa-share-alt"></i> 20 </h5>
							</div>
							<div class="col-md-4 col-sm-6 col-xs-6 clear-padding">
								<a href="#" class="text-center">MORE</a>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div></div><div class="owl-item active" style="width: 262.5px; margin-right: 30px;"><div class="room-grid-view wow slideInUp animated" data-wow-delay="0.3s" style="visibility: visible; animation-delay: 0.3s; animation-name: slideInUp;">
					<img src="assets/images/offer3.jpg" alt="cruise">
					<div class="room-info">
						<div class="post-title">
							<h5>POST TITLE GOES HERE</h5>
							<p><i class="fa fa-calendar"></i> Jul 15, 2015</p>
						</div>
						<div class="post-desc">
							<p>Lorem Ipsum is simply dummy text. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
						</div>
						<div class="room-book">
							<div class="col-md-8 col-sm-6 col-xs-6 clear-padding post-alt">
								<h5><i class="fa fa-comments"></i> 2 <i class="fa fa-share-alt"></i> 20 </h5>
							</div>
							<div class="col-md-4 col-sm-6 col-xs-6 clear-padding">
								<a href="#" class="text-center">MORE</a>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div></div><div class="owl-item active" style="width: 262.5px; margin-right: 30px;"><div class="room-grid-view wow slideInUp animated" data-wow-delay="0.4s" style="visibility: visible; animation-delay: 0.4s; animation-name: slideInUp;">
					<img src="assets/images/offer4.jpg" alt="cruise">
					<div class="room-info">
						<div class="post-title">
							<h5>POST TITLE GOES HERE</h5>
							<p><i class="fa fa-calendar"></i> Jul 15, 2015</p>
						</div>
						<div class="post-desc">
							<p>Lorem Ipsum is simply dummy text. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
						</div>
						<div class="room-book">
							<div class="col-md-8 col-sm-6 col-xs-6 clear-padding post-alt">
								<h5><i class="fa fa-comments"></i> 2 <i class="fa fa-share-alt"></i> 20 </h5>
							</div>
							<div class="col-md-4 col-sm-6 col-xs-6 clear-padding">
								<a href="#" class="text-center">MORE</a>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div></div><div class="owl-item" style="width: 262.5px; margin-right: 30px;"><div class="room-grid-view wow slideInUp animated" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInUp;">
					<img src="assets/images/offer3.jpg" alt="cruise">
					<div class="room-info">
						<div class="post-title">
							<h5>POST TITLE GOES HERE</h5>
							<p><i class="fa fa-calendar"></i> Jul 15, 2015</p>
						</div>
						<div class="post-desc">
							<p>Lorem Ipsum is simply dummy text. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
						</div>
						<div class="room-book">
							<div class="col-md-8 col-sm-6 col-xs-6 clear-padding post-alt">
								<h5><i class="fa fa-comments"></i> 2 <i class="fa fa-share-alt"></i> 20 </h5>
							</div>
							<div class="col-md-4 col-sm-6 col-xs-6 clear-padding">
								<a href="#" class="text-center">MORE</a>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div></div><div class="owl-item" style="width: 262.5px; margin-right: 30px;"><div class="room-grid-view wow slideInUp animated" data-wow-delay="0.6s" style="visibility: visible; animation-delay: 0.6s; animation-name: slideInUp;">
					<img src="assets/images/offer2.jpg" alt="cruise">
					<div class="room-info">
						<div class="post-title">
							<h5>POST TITLE GOES HERE</h5>
							<p><i class="fa fa-calendar"></i> Jul 15, 2015</p>
						</div>
						<div class="post-desc">
							<p>Lorem Ipsum is simply dummy text. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
						</div>
						<div class="room-book">
							<div class="col-md-8 col-sm-6 col-xs-6 clear-padding post-alt">
								<h5><i class="fa fa-comments"></i> 2 <i class="fa fa-share-alt"></i> 20 </h5>
							</div>
							<div class="col-md-4 col-sm-6 col-xs-6 clear-padding">
								<a href="#" class="text-center">MORE</a>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div></div><div class="owl-item cloned" style="width: 262.5px; margin-right: 30px;"><div class="room-grid-view wow slideInUp animated" data-wow-delay="0.1s" style="visibility: visible; animation-delay: 0.1s; animation-name: slideInUp;">
					<img src="assets/images/offer1.jpg" alt="cruise">
					<div class="room-info">
						<div class="post-title">
							<h5>POST TITLE GOES HERE</h5>
							<p><i class="fa fa-calendar"></i> Jul 15, 2015</p>
						</div>
						<div class="post-desc">
							<p>Lorem Ipsum is simply dummy text. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
						</div>
						<div class="room-book">
							<div class="col-md-8 col-sm-6 col-xs-6 clear-padding post-alt">
								<h5><i class="fa fa-comments"></i> 2 <i class="fa fa-share-alt"></i> 20 </h5>
							</div>
							<div class="col-md-4 col-sm-6 col-xs-6 clear-padding">
								<a href="#" class="text-center">MORE</a>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div></div><div class="owl-item cloned" style="width: 262.5px; margin-right: 30px;"><div class="room-grid-view wow slideInUp animated" data-wow-delay="0.2s" style="visibility: visible; animation-delay: 0.2s; animation-name: slideInUp;">
					<img src="assets/images/offer2.jpg" alt="cruise">
					<div class="room-info">
						<div class="post-title">
							<h5>POST TITLE GOES HERE</h5>
							<p><i class="fa fa-calendar"></i> Jul 15, 2015</p>
						</div>
						<div class="post-desc">
							<p>Lorem Ipsum is simply dummy text. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
						</div>
						<div class="room-book">
							<div class="col-md-8 col-sm-6 col-xs-6 clear-padding post-alt">
								<h5><i class="fa fa-comments"></i> 2 <i class="fa fa-share-alt"></i> 20 </h5>
							</div>
							<div class="col-md-4 col-sm-6 col-xs-6 clear-padding">
								<a href="#" class="text-center">MORE</a>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div></div><div class="owl-item cloned" style="width: 262.5px; margin-right: 30px;"><div class="room-grid-view wow slideInUp animated" data-wow-delay="0.3s" style="visibility: visible; animation-delay: 0.3s; animation-name: slideInUp;">
					<img src="assets/images/offer3.jpg" alt="cruise">
					<div class="room-info">
						<div class="post-title">
							<h5>POST TITLE GOES HERE</h5>
							<p><i class="fa fa-calendar"></i> Jul 15, 2015</p>
						</div>
						<div class="post-desc">
							<p>Lorem Ipsum is simply dummy text. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
						</div>
						<div class="room-book">
							<div class="col-md-8 col-sm-6 col-xs-6 clear-padding post-alt">
								<h5><i class="fa fa-comments"></i> 2 <i class="fa fa-share-alt"></i> 20 </h5>
							</div>
							<div class="col-md-4 col-sm-6 col-xs-6 clear-padding">
								<a href="#" class="text-center">MORE</a>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div></div><div class="owl-item cloned" style="width: 262.5px; margin-right: 30px;"><div class="room-grid-view wow slideInUp animated" data-wow-delay="0.4s" style="visibility: visible; animation-delay: 0.4s; animation-name: slideInUp;">
					<img src="assets/images/offer4.jpg" alt="cruise">
					<div class="room-info">
						<div class="post-title">
							<h5>POST TITLE GOES HERE</h5>
							<p><i class="fa fa-calendar"></i> Jul 15, 2015</p>
						</div>
						<div class="post-desc">
							<p>Lorem Ipsum is simply dummy text. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
						</div>
						<div class="room-book">
							<div class="col-md-8 col-sm-6 col-xs-6 clear-padding post-alt">
								<h5><i class="fa fa-comments"></i> 2 <i class="fa fa-share-alt"></i> 20 </h5>
							</div>
							<div class="col-md-4 col-sm-6 col-xs-6 clear-padding">
								<a href="#" class="text-center">MORE</a>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div></div></div></div></div><div class="owl-item active" style="width: 2.5px; margin-right: 30px;"><div class="owl-controls"><div class="owl-nav"><div class="owl-prev" style="display: none;">prev</div><div class="owl-next" style="display: none;">next</div></div><div style="" class="owl-dots"><div class="owl-dot active"><span></span></div><div class="owl-dot"><span></span></div></div></div></div></div></div><div class="owl-controls"><div class="owl-nav"><div class="owl-prev" style="display: none;">prev</div><div class="owl-next" style="display: none;">next</div></div><div style="" class="owl-dots"><div class="owl-dot active"><span></span></div></div></div></div>
		</div>
	</div>
</section>
<!-- END: RECENT BLOG POST -->

<!-- START: WHY CHOOSE US SECTION -->
<section id="why-choose-us">
	<div class="row choose-us-row">
		<div class="container clear-padding">
			<div class="light-section-title text-center">
				<h2>WHY CHOOSE US?</h2>
				<h4>REASONS TO TRUST US</h4>
				<div class="space"></div>
				<p>
					Lorem Ipsum is simply dummy text. Lorem Ipsum is simply dummy text of the printing and typesetting industry.<br>
					Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
				</p>
			</div>
			<div class="col-md-4 col-sm-4 wow slideInLeft" style="visibility: hidden; animation-name: none;">
				<div class="choose-us-item text-center">
					<div class="choose-icon"><i class="fa fa-suitcase"></i></div>
					<h4>Handpicked Tour</h4>
					<p>Lorem Ipsum is simply dummy text. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
					<a href="#">KNOW MORE</a>
				</div>
			</div>
			<div class="col-md-4 col-sm-4 wow slideInUp" style="visibility: hidden; animation-name: none;">
				<div class="choose-us-item text-center">
					<div class="choose-icon"><i class="fa fa-phone"></i></div>
					<h4>Dedicated Support</h4>
					<p>Lorem Ipsum is simply dummy text. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
					<a href="#">KNOW MORE</a>
				</div>
			</div>
			<div class="col-md-4 col-sm-4 wow slideInRight" style="visibility: hidden; animation-name: none;">
				<div class="choose-us-item text-center">
					<div class="choose-icon"><i class="fa fa-smile-o"></i></div>
					<h4>Lowest Price</h4>
					<p>Lorem Ipsum is simply dummy text. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
					<a href="#">KNOW MORE</a>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- END: WHY CHOOSE US SECTION -->

<!-- START: HOT  DEALS -->
<section>
	<div class="row hot-deals hidden">
		<div class="container clear-padding">
			<div class="section-title text-center">
				<h2>HOT DEALS</h2>
				<h4>SAVE MORE</h4>
			</div>
			<div role="tabpanel" class="text-center">
				<!-- BEGIN: CATEGORY TAB -->
				<ul class="nav nav-tabs" role="tablist" id="hotDeal">
					<li role="presentation" class="active text-center">
						<a href="#tab1" aria-controls="tab1" role="tab" data-toggle="tab">
							<i class="fa fa-bed"></i>
							<span>HOTELS</span>
						</a>
					</li>
					<li role="presentation" class="text-center">
						<a href="#tab2" aria-controls="tab2" role="tab" data-toggle="tab">
							<i class="fa fa-suitcase"></i>
							<span>HOLIDAYS</span>
						</a>
					</li>
					<li role="presentation" class="text-center">
						<a href="#tab3" aria-controls="tab3" role="tab" data-toggle="tab">
							<i class="fa fa-plane"></i>
							<span>FLIGHTS</span>
						</a>
					</li>
					<li role="presentation" class="text-center">
						<a href="#tab4" aria-controls="tab4" role="tab" data-toggle="tab">
							<i class="fa fa-taxi"></i>
							<span>CARS</span>
						</a>
					</li>
					<li role="presentation" class="text-center">
						<a href="#tab5" aria-controls="tab5" role="tab" data-toggle="tab">
							<i class="fa fa-bed"></i>
							<span>HOTEL+FLIGHTS</span>
						</a>
					</li>
				</ul>
				<!-- END: CATEGORY TAB -->
				<div class="clearfix"></div>
				<!-- BEGIN: TAB PANELS -->
				<div class="tab-content">
					<!-- BEGIN: FLIGHT SEARCH -->
					<div role="tabpanel" class="tab-pane active fade in" id="tab1">
						<div class="col-md-6 hot-deal-list wow slideInLeft animated" style="visibility: visible; animation-name: slideInLeft;">
							<div class="item">
								<div class="col-xs-3">
									<img src="assets/images/offer1.jpg" alt="Cruise">
								</div>
								<div class="col-md-7 col-xs-6">
									<h5>Hotel Grand Lilly</h5>
									<p class="location"><i class="fa fa-map-marker"></i> New York, USA</p>
									<p class="text-sm">Lorem Ipsum is simply dummy text. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
								</div>
								<div class="col-md-2 col-xs-3">
									<h4>$499</h4>
									<h6>Per Night</h6>
									<a href="#">BOOK</a>
								</div>
							</div>
							<div class="clearfix"></div>
							<div class="item">
								<div class="col-xs-3">
									<img src="assets/images/offer2.jpg" alt="Cruise">
								</div>
								<div class="col-md-7 col-xs-6">
									<h5>Royal Resort</h5>
									<p class="location"><i class="fa fa-map-marker"></i> New York, USA</p>
									<p class="text-sm">Lorem Ipsum is simply dummy text. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
								</div>
								<div class="col-md-2 col-xs-3">
									<h4>$399</h4>
									<h6>Per Night</h6>
									<a href="#">BOOK</a>
								</div>
							</div>
							<div class="clearfix"></div>
							<div class="item">
								<div class="col-xs-3">
									<img src="assets/images/offer3.jpg" alt="Cruise">
								</div>
								<div class="col-md-7 col-xs-6">
									<h5>Hotel Grand Lilly</h5>
									<p class="location"><i class="fa fa-map-marker"></i> New York, USA</p>
									<p class="text-sm">Lorem Ipsum is simply dummy text. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
								</div>
								<div class="col-md-2 col-xs-3">
									<h4>$499</h4>
									<h6>Per Night</h6>
									<a href="#">BOOK</a>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="col-md-6 hot-deal-grid wow slideInRight animated" style="visibility: visible; animation-name: slideInRight;">
							<div class="col-sm-6 item">
								<div class="wrapper">
									<img src="assets/images/tour1.jpg" alt="Cruise">
									<h5>Paris Starting From $49/Night</h5>
									<a href="#">DETAILS</a>
								</div>
							</div>
							<div class="col-sm-6 item">
								<div class="wrapper">
									<img src="assets/images/tour1.jpg" alt="Cruise">
									<h5>Bangkok Starting From $69/Night</h5>
									<a href="#">DETAILS</a>
								</div>
							</div>
							<div class="col-sm-6 item">
								<div class="wrapper">
									<img src="assets/images/tour1.jpg" alt="Cruise">
									<h5>Dubai Starting From $99/Night</h5>
									<a href="#">DETAILS</a>
								</div>
							</div>
							<div class="col-sm-6 item">
								<div class="wrapper">
									<img src="assets/images/tour1.jpg" alt="Cruise">
									<h5>Italy Starting From $59/Night</h5>
									<a href="#">DETAILS</a>
								</div>
							</div>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane fade" id="tab2">
						<div class="col-md-6 hot-deal-list">
							<div class="item">
								<div class="col-xs-3">
									<img src="assets/images/offer3.jpg" alt="Cruise">
								</div>
								<div class="col-md-7 col-xs-6">
									<h5>Hotel Grand Lilly</h5>
									<p class="location"><i class="fa fa-map-marker"></i> New York, USA</p>
									<p class="text-sm">Lorem Ipsum is simply dummy text. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
								</div>
								<div class="col-md-2 col-xs-3">
									<h4>$499</h4>
									<h6>Per Night</h6>
									<a href="#">BOOK</a>
								</div>
							</div>
							<div class="clearfix"></div>
							<div class="item">
								<div class="col-xs-3">
									<img src="assets/images/offer2.jpg" alt="Cruise">
								</div>
								<div class="col-md-7 col-xs-6">
									<h5>Royal Resort</h5>
									<p class="location"><i class="fa fa-map-marker"></i> New York, USA</p>
									<p class="text-sm">Lorem Ipsum is simply dummy text. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
								</div>
								<div class="col-md-2 col-xs-3">
									<h4>$399</h4>
									<h6>Per Night</h6>
									<a href="#">BOOK</a>
								</div>
							</div>
							<div class="clearfix"></div>
							<div class="item">
								<div class="col-xs-3">
									<img src="assets/images/offer1.jpg" alt="Cruise">
								</div>
								<div class="col-md-7 col-xs-6">
									<h5>Hotel Grand Lilly</h5>
									<p class="location"><i class="fa fa-map-marker"></i> New York, USA</p>
									<p class="text-sm">Lorem Ipsum is simply dummy text. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
								</div>
								<div class="col-md-2 col-xs-3">
									<h4>$499</h4>
									<h6>Per Night</h6>
									<a href="#">BOOK</a>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="col-md-6 hot-deal-grid">
							<div class="col-sm-6 item">
								<div class="wrapper">
									<img src="assets/images/tour1.jpg" alt="Cruise">
									<h5>Paris Starting From $49/Night</h5>
									<a href="#">DETAILS</a>
								</div>
							</div>
							<div class="col-sm-6 item">
								<div class="wrapper">
									<img src="assets/images/tour1.jpg" alt="Cruise">
									<h5>Bangkok Starting From $69/Night</h5>
									<a href="#">DETAILS</a>
								</div>
							</div>
							<div class="col-sm-6 item">
								<div class="wrapper">
									<img src="assets/images/tour1.jpg" alt="Cruise">
									<h5>Dubai Starting From $99/Night</h5>
									<a href="#">DETAILS</a>
								</div>
							</div>
							<div class="col-sm-6 item">
								<div class="wrapper">
									<img src="assets/images/tour1.jpg" alt="Cruise">
									<h5>Italy Starting From $59/Night</h5>
									<a href="#">DETAILS</a>
								</div>
							</div>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane" id="tab3">
						Lorem Lpsum 3
					</div>
					<div role="tabpanel" class="tab-pane" id="tab4">
						Lorem Lpsum 4
					</div>
					<div role="tabpanel" class="tab-pane" id="tab5">
						Lorem Lpsum 5
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- END: HOT DEALS -->

<!-- START: FOOTER -->
<section id="footer">
	<footer>
		<div class="row main-footer-sub hidden">
			<div class="container clear-padding">
				<div class="col-md-7 col-sm-7">
					<form>
						<label>SUBSCRIBE TO OUR NEWSLETTER</label>
						<div class="clearfix"></div>
						<div class="col-md-9 col-sm-8 col-xs-6 clear-padding">
							<input class="form-control" required="" placeholder="Enter Your Email" name="email" type="email">
						</div>
						<div class="col-md-3 col-sm-4 col-xs-6 clear-padding">
							<button type="submit"><i class="fa fa-paper-plane"></i>SUBSCRIBE</button>
						</div>
					</form>
				</div>
				<div class="col-md-5 col-sm-5">
					<div class="social-media pull-right">
						<ul>
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-instagram"></i></a></li>
							<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
							<li><a href="#"><i class="fa fa-youtube"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="main-footer row">
			<div class="container clear-padding">
				<div class="col-md-3 col-sm-6 about-box">
					<h3>CRUISE</h3>
					<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
					<a href="#">READ MORE</a>
				</div>
				<div class="col-md-3 col-sm-6 links">
					<h4>Popular Tours</h4>
					<ul>
						<li><a href="#">Romantic France</a></li>
						<li><a href="#">Wonderful Lodnon</a></li>
						<li><a href="#">Awesome Amsterdam</a></li>
						<li><a href="#">Wild Africa</a></li>
						<li><a href="#">Beach Goa</a></li>
						<li><a href="#">Casino Los Vages</a></li>
						<li><a href="#">Romantic France</a></li>
					</ul>
				</div>
				<div class="clearfix visible-sm-block"></div>
				<div class="col-md-3 col-sm-6 links">
					<h4>Our Services</h4>
					<ul>
						<li><a href="#">Domestic Flights</a></li>
						<li><a href="#">International Flights</a></li>
						<li><a href="#">Tours &amp; Holidays</a></li>
						<li><a href="#">Domestic Hotels</a></li>
						<li><a href="#">International Hotels</a></li>
						<li><a href="#">Cruise Holidays</a></li>
						<li><a href="#">Car Rental</a></li>
					</ul>
				</div>
				<div class="col-md-3 col-sm-6 contact-box">
					<h4>Contact Us</h4>
					<p><i class="fa fa-home"></i> Street #156 Burbank, Studio City Hollywood, California USA</p>
					<p><i class="fa fa-phone"></i> +91 1234567890</p>
					<p><i class="fa fa-envelope-o"></i> support@domain.com</p>
				</div>
				<div class="clearfix"></div>
				<div class="col-md-12 text-center we-accept hidden">
					<h4>We Accept</h4>
					<ul>
						<li><img src="assets/images/card/card.jpg" alt="cruise"></li>
						<li><img src="assets/images/card/card.jpg" alt="cruise"></li>
						<li><img src="assets/images/card/card.jpg" alt="cruise"></li>
						<li><img src="assets/images/card/card.jpg" alt="cruise"></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="main-footer-nav row">
			<div class="container clear-padding">
				<div class="col-md-6 col-sm-6">
					<p>Copyright © 2015 LimpidThemes. All Rights Reserved.</p>
				</div>
				<div class="col-md-6 col-sm-6">
					<ul>
						<li><a href="#">FLIGHTS</a></li>
						<li><a href="#">TOURS</a></li>
						<li><a href="#">CARS</a></li>
						<li><a href="#">HOTELS</a></li>
						<li><a href="#">BLOG</a></li>
					</ul>
				</div>
				<div class="go-up">
					<a href="#"><i class="fa fa-arrow-up"></i></a>
				</div>
			</div>
		</div>
	</footer>
</section>
<!-- END: FOOTER -->
</div>
<!-- END: SITE-WRAPPER -->

<!-- Load Scripts -->
<script src="assets/js/respond.js"></script>
<script src="assets/js/jquery.js"></script>
<script src="assets/plugins/owl.carousel.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/jquery-ui.min.js"></script>
<script src="assets/js/bootstrap-select.min.js"></script>
<script src="assets/plugins/wow.min.js"></script>
<script type="text/javascript" src="assets/plugins/supersized.3.1.3.min.js"></script>
<script src="assets/js/js.js"></script>
  <script src="https://apis.google.com/js/platform.js?onload=onLoad" async defer></script>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<script type="text/javascript">
			/* SLIDER SETTINGS */
			jQuery(function($){
				"use strict";
				$.supersized({

					//Functionality
					slideshow               :   1,		//Slideshow on/off
					autoplay				:	1,		//Slideshow starts playing automatically
					start_slide             :   1,		//Start slide (0 is random)
					random					: 	0,		//Randomize slide order (Ignores start slide)
					slide_interval          :   10000,	//Length between transitions
					transition              :   1, 		//0-None, 1-Fade, 2-Slide Top, 3-Slide Right, 4-Slide Bottom, 5-Slide Left, 6-Carousel Right, 7-Carousel Left
					transition_speed		:	500,	//Speed of transition
					new_window				:	1,		//Image links open in new window/tab
					pause_hover             :   0,		//Pause slideshow on hover
					keyboard_nav            :   0,		//Keyboard navigation on/off
					performance				:	1,		//0-Normal, 1-Hybrid speed/quality, 2-Optimizes image quality, 3-Optimizes transition speed // (Only works for Firefox/IE, not Webkit)
					image_protect			:	1,		//Disables image dragging and right click with Javascript

					//Size & Position
					min_width		        :   0,		//Min width allowed (in pixels)
					min_height		        :   0,		//Min height allowed (in pixels)
					vertical_center         :   1,		//Vertically center background
					horizontal_center       :   1,		//Horizontally center background
					fit_portrait         	:   1,		//Portrait images will not exceed browser height
					fit_landscape			:   0,		//Landscape images will not exceed browser width

					//Components
					navigation              :   1,		//Slideshow controls on/off
					thumbnail_navigation    :   1,		//Thumbnail navigation
					slide_counter           :   1,		//Display slide numbers
					slide_captions          :   1,		//Slide caption (Pull from "title" in slides array)
					slides 					:  	[		//Slideshow Images
														{image : 'assets/images/slide.jpg', title : 'Slide 1'},
														{image : 'assets/images/slide2.jpg', title : 'Slide 2'},
														{image : 'assets/images/slide.jpg', title : 'Slide 3'},
												]

				});
		    });

</script>

<div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div></body>

</html>

