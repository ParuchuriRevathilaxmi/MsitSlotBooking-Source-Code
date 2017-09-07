<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>MSIT ADMISSIONS</title>
<link
	href="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
	rel="stylesheet">
<!-- Bootstrap -->
<link
	href="../resources/assets/vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link
	href="../resources/assets/vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- NProgress -->
<link href="../resources/assets/vendors/nprogress/nprogress.css"
	rel="stylesheet">
<!-- iCheck -->
<link href="../resources/assets/vendors/iCheck/skins/flat/green.css"
	rel="stylesheet">
<!-- bootstrap-progressbar -->
<link
	href="../resources/assets/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css"
	rel="stylesheet">
<!-- JQVMap -->
<link href="../resources/assets/vendors/jqvmap/dist/jqvmap.min.css"
	rel="stylesheet" />
<!-- bootstrap-daterangepicker -->
<link
	href="../resources/assets/vendors/bootstrap-daterangepicker/daterangepicker.css"
	rel="stylesheet">
<!-- Custom Theme Style -->
<link href="../resources/assets/build/css/custom.min.css"
	rel="stylesheet">
<script src="../resources/assets/validations.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link class="jsbin" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
<script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.0/jquery-ui.min.js"></script>



</head>
<body>
	<div class="page-title">
		<div class="title_left">
			<h3>Edit Profile</h3>
		</div>
	</div>
	<div class="clearfix"></div>
	<div class="row">
		<div class="col-md-12 col-sm-12 col-xs-12">
			<div class="x_panel">
				<div class="x_title">
					
					<ul class="nav navbar-right panel_toolbox">
						<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false"><i
								class="fa fa-wrench"></i></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">Settings 1</a></li>
								<li><a href="#">Settings 2</a></li>
							</ul></li>
						<li><a class="close-link"><i class="fa fa-close"></i></a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="x_content">
					<div class="col-md-3 col-sm-3 col-xs-12 profile_left">
						<div class="profile_img">
							<div id="crop-avatar">
								<!-- Current avatar -->
								<img class="img-responsive avatar-view"
									src="#"
									alt="Avatar" title="Change the avatar" id="profpic">
									<input type='file'  class="btn btn-success" onchange="readURL(this);" />
							</div>
						</div>
						<h3>Samuel Doe</h3>
						<!-- <ul class="list-unstyled user_data">
							<li><i class="fa fa-map-marker user-profile-icon"></i> San
								Francisco, California, USA</li>
							<li><i class="fa fa-briefcase user-profile-icon"></i>
								Software Engineer</li>
							<li class="m-top-xs"><i
								class="fa fa-external-link user-profile-icon"></i> <a
								href="http://www.kimlabs.com/profile/" target="_blank">www.kimlabs.com</a>
							</li>
						</ul> -->
						
						
						<!-- <a href="" class="btn btn-success"><i
							class="fa fa-edit m-right-xs" onchange="readURL(this);"></i>Change Profile</a -->
							 <br />
					</div>
					<div class="col-md-9 col-sm-9 col-xs-12">
						<div class="profile_title">
							<div class="col-md-6">
								<h2>Edit Profile</h2>
							</div>
						</div>
						<div class="col-md-12">
							<div class="x_panel">
								<div class="x_title">
									<ul class="nav navbar-right panel_toolbox">
										<li><a class="collapse-link"><i
												class="fa fa-chevron-up"></i></a></li>
										<li class="dropdown"><a href="#" class="dropdown-toggle"
											data-toggle="dropdown" role="button" aria-expanded="false"><i
												class="fa fa-wrench"></i></a>
											<ul class="dropdown-menu" role="menu">
												<li><a href="#">Settings 1</a></li>
												<li><a href="#">Settings 2</a></li>
											</ul></li>
										<li><a class="close-link"><i class="fa fa-close"></i></a></li>
									</ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<br>
									<form id="demo-form2" data-parsley-validate=""
										class="form-horizontal form-label-left" name="editProfile"
										action="../dashboard/editProfile" method="POST">
										<div class="item form-group bad">
											<input type="hidden" name="sno"> <input type="hidden"
												name="p3" value="<%=session.getAttribute("EMAIL")%>">
											<div class="form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12"
													for="first-name">Name<span class="required">*</span>
												</label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<input type="text" id="i1" required="required"
														placeholder="As per SSC"
														class="form-control col-md-7 col-xs-12"
														onkeydown="validName();" name="p1">

												</div>
												<div id="s1"></div>
											</div>
										</div>
										<div class="item form-group bad">
											<label class="control-label col-md-3 col-sm-3 col-xs-12"
												for="name">Parent/Guardian Name <span
												class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 col-xs-12">
												<input name="p2" id="i2"
													class="form-control col-md-7 col-xs-12"
													data-validate-length-range="6" data-validate-words="2"
													name="name" placeholder="Parent/Guardian Name"
													required="required" type="text" onkeydown="validFNAme();">
											</div>
											<div id="s2"></div>
										</div>



										<div class="item form-group bad">
											<div class="form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12"
													for="last-name">Email Id<span class="required">*</span>
												</label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<input type="text" class="form-control col-md-7 col-xs-12"
														value="<%=session.getAttribute("EMAIL")%>"
														class="form-control" disabled="disabled">
												</div>

											</div>
										</div>

										<div class="item form-group bad">
											<div class="form-group">
												<label for="middle-name"
													class="control-label col-md-3 col-sm-3 col-xs-12">Nationality</label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<select id="i3" name="p4" onchange="nationality();"
														class="form-control col-md-3 col-xs-12">
														<option value="0">-- select one --</option>
														<option value="afghan">Afghan</option>
														<option value="albanian">Albanian</option>
														<option value="algerian">Algerian</option>
														<option value="american">American</option>
														<option value="andorran">Andorran</option>
														<option value="angolan">Angolan</option>
														<option value="antiguans">Antiguans</option>
														<option value="argentinean">Argentinean</option>
														<option value="armenian">Armenian</option>
														<option value="australian">Australian</option>
														<option value="austrian">Austrian</option>
														<option value="azerbaijani">Azerbaijani</option>
														<option value="bahamian">Bahamian</option>
														<option value="bahraini">Bahraini</option>
														<option value="bangladeshi">Bangladeshi</option>
														<option value="barbadian">Barbadian</option>
														<option value="barbudans">Barbudans</option>
														<option value="batswana">Batswana</option>
														<option value="belarusian">Belarusian</option>
														<option value="belgian">Belgian</option>
														<option value="belizean">Belizean</option>
														<option value="beninese">Beninese</option>
														<option value="bhutanese">Bhutanese</option>
														<option value="bolivian">Bolivian</option>
														<option value="bosnian">Bosnian</option>
														<option value="brazilian">Brazilian</option>
														<option value="british">British</option>
														<option value="bruneian">Bruneian</option>
														<option value="bulgarian">Bulgarian</option>
														<option value="burkinabe">Burkinabe</option>
														<option value="burmese">Burmese</option>
														<option value="burundian">Burundian</option>
														<option value="cambodian">Cambodian</option>
														<option value="cameroonian">Cameroonian</option>
														<option value="canadian">Canadian</option>
														<option value="cape verdean">Cape Verdean</option>
														<option value="central african">Central African</option>
														<option value="chadian">Chadian</option>
														<option value="chilean">Chilean</option>
														<option value="chinese">Chinese</option>
														<option value="colombian">Colombian</option>
														<option value="comoran">Comoran</option>
														<option value="congolese">Congolese</option>
														<option value="costa rican">Costa Rican</option>
														<option value="croatian">Croatian</option>
														<option value="cuban">Cuban</option>
														<option value="cypriot">Cypriot</option>
														<option value="czech">Czech</option>
														<option value="danish">Danish</option>
														<option value="djibouti">Djibouti</option>
														<option value="dominican">Dominican</option>
														<option value="dutch">Dutch</option>
														<option value="east timorese">East Timorese</option>
														<option value="ecuadorean">Ecuadorean</option>
														<option value="egyptian">Egyptian</option>
														<option value="emirian">Emirian</option>
														<option value="equatorial guinean">Equatorial
															Guinean</option>
														<option value="eritrean">Eritrean</option>
														<option value="estonian">Estonian</option>
														<option value="ethiopian">Ethiopian</option>
														<option value="fijian">Fijian</option>
														<option value="filipino">Filipino</option>
														<option value="finnish">Finnish</option>
														<option value="french">French</option>
														<option value="gabonese">Gabonese</option>
														<option value="gambian">Gambian</option>
														<option value="georgian">Georgian</option>
														<option value="german">German</option>
														<option value="ghanaian">Ghanaian</option>
														<option value="greek">Greek</option>
														<option value="grenadian">Grenadian</option>
														<option value="guatemalan">Guatemalan</option>
														<option value="guinea-bissauan">Guinea-Bissauan</option>
														<option value="guinean">Guinean</option>
														<option value="guyanese">Guyanese</option>
														<option value="haitian">Haitian</option>
														<option value="herzegovinian">Herzegovinian</option>
														<option value="honduran">Honduran</option>
														<option value="hungarian">Hungarian</option>
														<option value="icelander">Icelander</option>
														<option value="indian">Indian</option>
														<option value="indonesian">Indonesian</option>
														<option value="iranian">Iranian</option>
														<option value="iraqi">Iraqi</option>
														<option value="irish">Irish</option>
														<option value="israeli">Israeli</option>
														<option value="italian">Italian</option>
														<option value="ivorian">Ivorian</option>
														<option value="jamaican">Jamaican</option>
														<option value="japanese">Japanese</option>
														<option value="jordanian">Jordanian</option>
														<option value="kazakhstani">Kazakhstani</option>
														<option value="kenyan">Kenyan</option>
														<option value="kittian and nevisian">Kittian and
															Nevisian</option>
														<option value="kuwaiti">Kuwaiti</option>
														<option value="kyrgyz">Kyrgyz</option>
														<option value="laotian">Laotian</option>
														<option value="latvian">Latvian</option>
														<option value="lebanese">Lebanese</option>
														<option value="liberian">Liberian</option>
														<option value="libyan">Libyan</option>
														<option value="liechtensteiner">Liechtensteiner</option>
														<option value="lithuanian">Lithuanian</option>
														<option value="luxembourger">Luxembourger</option>
														<option value="macedonian">Macedonian</option>
														<option value="malagasy">Malagasy</option>
														<option value="malawian">Malawian</option>
														<option value="malaysian">Malaysian</option>
														<option value="maldivan">Maldivan</option>
														<option value="malian">Malian</option>
														<option value="maltese">Maltese</option>
														<option value="marshallese">Marshallese</option>
														<option value="mauritanian">Mauritanian</option>
														<option value="mauritian">Mauritian</option>
														<option value="mexican">Mexican</option>
														<option value="micronesian">Micronesian</option>
														<option value="moldovan">Moldovan</option>
														<option value="monacan">Monacan</option>
														<option value="mongolian">Mongolian</option>
														<option value="moroccan">Moroccan</option>
														<option value="mosotho">Mosotho</option>
														<option value="motswana">Motswana</option>
														<option value="mozambican">Mozambican</option>
														<option value="namibian">Namibian</option>
														<option value="nauruan">Nauruan</option>
														<option value="nepalese">Nepalese</option>
														<option value="new zealander">New Zealander</option>
														<option value="ni-vanuatu">Ni-Vanuatu</option>
														<option value="nicaraguan">Nicaraguan</option>
														<option value="nigerien">Nigerien</option>
														<option value="north korean">North Korean</option>
														<option value="northern irish">Northern Irish</option>
														<option value="norwegian">Norwegian</option>
														<option value="omani">Omani</option>
														<option value="pakistani">Pakistani</option>
														<option value="palauan">Palauan</option>
														<option value="panamanian">Panamanian</option>
														<option value="papua new guinean">Papua New
															Guinean</option>
														<option value="paraguayan">Paraguayan</option>
														<option value="peruvian">Peruvian</option>
														<option value="polish">Polish</option>
														<option value="portuguese">Portuguese</option>
														<option value="qatari">Qatari</option>
														<option value="romanian">Romanian</option>
														<option value="russian">Russian</option>
														<option value="rwandan">Rwandan</option>
														<option value="saint lucian">Saint Lucian</option>
														<option value="salvadoran">Salvadoran</option>
														<option value="samoan">Samoan</option>
														<option value="san marinese">San Marinese</option>
														<option value="sao tomean">Sao Tomean</option>
														<option value="saudi">Saudi</option>
														<option value="scottish">Scottish</option>
														<option value="senegalese">Senegalese</option>
														<option value="serbian">Serbian</option>
														<option value="seychellois">Seychellois</option>
														<option value="sierra leonean">Sierra Leonean</option>
														<option value="singaporean">Singaporean</option>
														<option value="slovakian">Slovakian</option>
														<option value="slovenian">Slovenian</option>
														<option value="solomon islander">Solomon Islander</option>
														<option value="somali">Somali</option>
														<option value="south african">South African</option>
														<option value="south korean">South Korean</option>
														<option value="spanish">Spanish</option>
														<option value="sri lankan">Sri Lankan</option>
														<option value="sudanese">Sudanese</option>
														<option value="surinamer">Surinamer</option>
														<option value="swazi">Swazi</option>
														<option value="swedish">Swedish</option>
														<option value="swiss">Swiss</option>
														<option value="syrian">Syrian</option>
														<option value="taiwanese">Taiwanese</option>
														<option value="tajik">Tajik</option>
														<option value="tanzanian">Tanzanian</option>
														<option value="thai">Thai</option>
														<option value="togolese">Togolese</option>
														<option value="tongan">Tongan</option>
														<option value="trinidadian or tobagonian">Trinidadian
															or Tobagonian</option>
														<option value="tunisian">Tunisian</option>
														<option value="turkish">Turkish</option>
														<option value="tuvaluan">Tuvaluan</option>
														<option value="ugandan">Ugandan</option>
														<option value="ukrainian">Ukrainian</option>
														<option value="uruguayan">Uruguayan</option>
														<option value="uzbekistani">Uzbekistani</option>
														<option value="venezuelan">Venezuelan</option>
														<option value="vietnamese">Vietnamese</option>
														<option value="welsh">Welsh</option>
														<option value="yemenite">Yemenite</option>
														<option value="zambian">Zambian</option>
														<option value="zimbabwean">Zimbabwean</option>
													</select>
												</div>
												<div id="s3"></div>
											</div>
										</div>


										<div class="form-group">
											<label class="control-label col-md-3 col-sm-3 col-xs-12">Gender</label>
											<div class="col-md-6 col-sm-6 col-xs-12">
												<label> <input type="radio"
													class="iradio_flat-green" checked="" value="male" id="i4"
													name="p5">Male
												</label> <label> <input type="radio" name="p5"
													class="iradio_flat-green" value="female" id="i5">
													Female
												</label>
											</div>
											<div id="r"></div>
										</div>


										<div class="item form-group bad">
											<div class="form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12">Date
													Of Birth <span class="required">*</span>
												</label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<input type="text" id="i6" name="p6"
														placeholder="Date Of Birth
										class=" date-picker
														form-control col-md-7
														col-xs-12"
										onkeydown="validatedate();"
														required="required" />
												</div>
												<div id="s6"></div>
											</div>
										</div>

										<div class="item form-group bad">
											<div class="form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12">Mobile
													Number<span class="required">*</span>
												</label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<input id="number" name="p7" id="i7"
														placeholder="Mobile Number"
														class="date-picker form-control col-md-7 col-xs-12"
														required="required" type="text" onkeydown="phoneNumber();">
												</div>
												<div id="s7"></div>
											</div>
										</div>

										<div class="item form-group bad">
											<label class="control-label col-md-3 col-sm-3 col-xs-12"
												for="name">Address <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 col-xs-12">
												<textarea rows="4" name="p9" id="i9"
													class="form-control col-md-7 col-xs-12"
													data-validate-length-range="6" data-validate-words="2"
													placeholder="Address" name="name" placeholder="Address"
													required="required" onkeydown="validateAddr();">
									</textarea>
											</div>
											<div id="s9"></div>
										</div>


										<div class="item form-group bad">
											<div class="form-group">
												<label class="control-label col-md-3 col-sm-3 col-xs-12">B.Tech
													Passed year<span class="required">*</span>
												</label>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<select id="i10" name="p8"
														class="form-control col-md-3 col-xs-12"
														onclick="passedYear();">
														<option value="0"></option>
													</select>
												</div>
												<div id="s10"></div>
											</div>
										</div>
										<div class="form-group">
											<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
												<button class="btn btn-primary" type="reset">Reset</button>
												<button type="submit" onclick="" class="btn btn-success">Submit</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- page content -->
   <script>
   function readURL(input) {
       if (input.files && input.files[0]) {
           var reader = new FileReader();

           reader.onload = function (e) {
               $('#profpic')
                   .attr('src', e.target.result)
                   .width(150)
                   .height(200);
           };

           reader.readAsDataURL(input.files[0]);
       }
   }
   
   
   </script>
</body>
</html>