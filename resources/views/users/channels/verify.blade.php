@extends('layouts.app')

@section('title')
    Request channel verification
@endsection

@section('content')
    <div class="container-fluid">
        <div class="video-block section-padding">
            <div class="row">
                <div class="col-md-9">
                    <h4>Verify your channel</h4>
                    <h6>To verify your channel you must maintain minimum 500 subscribers. </h6>
                </div>

                <div class="col-md-3 text-right">
                    <a href="{{ route('channel.show', $channel->id) }}"> <i class="fas fa-arrow-left"></i> Back to Channel</a>
                </div>

            </div>

        </div>
    </div>

    @if($eligible)
    <div class="container-fluid">
        <div class="video-block section-padding">
            <div class="row d-flex justify-content-center">

                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body">

                            <form>
                                <div class="form-group">
                                    <label for="exampleFormControlSelect1">Channel Name</label>
                                    <select class="form-control" id="exampleFormControlSelect1" disabled>
                                        <option>Channel Name Here</option>
                                    </select>
                                </div>


                                <div class="form-group">
                                    <label for="yourname">Your Name*</label>
                                    <input type="text" class="form-control" id="yourname" aria-describedby="nameHelp"
                                           placeholder="Enter your full name as per your documents" required>
                                    <small id="nameHelp" class="form-text text-muted">We'll never share your personal
                                        info with anyone else.</small>
                                </div>


                                <div class="form-group">
                                    <label for="yourname">Your Email*</label>
                                    <input type="email" class="form-control" id="youremail" aria-describedby="emailHelp"
                                           placeholder="Enter your email address" required>
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your personal
                                        info with anyone else.</small>
                                </div>


                                <div class="form-group">
                                    <label for="yourname">Phone No*</label>
                                    <input type="number" class="form-control" id="yourphone"
                                           aria-describedby="emailHelp" placeholder="Enter your phone number" required>
                                    <small id="phoneHelp" class="form-text text-muted">We'll never share your personal
                                        info with anyone else.</small>
                                </div>


                                <div class="form-row">
                                    <div class="col">
                                        <label for="address1">Address Line 1*</label>
                                        <input type="text" class="form-control" placeholder="address line 1">
                                        <small id="address1" class="form-text text-muted">Street address, P.O. box,
                                            company name, c/o</small>
                                    </div>
                                    <div class="col">
                                        <label for="address2">Address Line 2*</label>
                                        <input type="text" class="form-control" placeholder="address line 2">
                                        <small id="address1" class="form-text text-muted">Apartment, suite , unit,
                                            building, floor, etc.</small>
                                    </div>


                                </div>


                                <div class="form-row mt-3">

                                    <div class="col">
                                        <label for="cityname">City Town*</label>
                                        <input type="text" class="form-control" placeholder="City name">
                                    </div>

                                    <div class="col">
                                        <label for="state">State / Province / Region*</label>
                                        <input type="text" class="form-control" placeholder="State Name">
                                    </div>

                                </div>


                                <div class="form-row mt-3">

                                    <div class="col">
                                        <label for="zip">Zip / Postal Code*</label>
                                        <input type="text" class="form-control" placeholder="Enter Zip/Postal Code">
                                    </div>

                                    <div class="col">
                                        <div class="form-group">
                                            <label for="country">Country*</label>
                                            <select class="form-control" id="country">
                                                <option value="" selected="selected" disabled>(please select a
                                                    country)
                                                </option>
                                                <option value="AF">Afghanistan</option>
                                                <option value="AL">Albania</option>
                                                <option value="DZ">Algeria</option>
                                                <option value="AS">American Samoa</option>
                                                <option value="AD">Andorra</option>
                                                <option value="AO">Angola</option>
                                                <option value="AI">Anguilla</option>
                                                <option value="AQ">Antarctica</option>
                                                <option value="AG">Antigua and Barbuda</option>
                                                <option value="AR">Argentina</option>
                                                <option value="AM">Armenia</option>
                                                <option value="AW">Aruba</option>
                                                <option value="AU">Australia</option>
                                                <option value="AT">Austria</option>
                                                <option value="AZ">Azerbaijan</option>
                                                <option value="BS">Bahamas</option>
                                                <option value="BH">Bahrain</option>
                                                <option value="BD">Bangladesh</option>
                                                <option value="BB">Barbados</option>
                                                <option value="BY">Belarus</option>
                                                <option value="BE">Belgium</option>
                                                <option value="BZ">Belize</option>
                                                <option value="BJ">Benin</option>
                                                <option value="BM">Bermuda</option>
                                                <option value="BT">Bhutan</option>
                                                <option value="BO">Bolivia</option>
                                                <option value="BA">Bosnia and Herzegowina</option>
                                                <option value="BW">Botswana</option>
                                                <option value="BV">Bouvet Island</option>
                                                <option value="BR">Brazil</option>
                                                <option value="IO">British Indian Ocean Territory</option>
                                                <option value="BN">Brunei Darussalam</option>
                                                <option value="BG">Bulgaria</option>
                                                <option value="BF">Burkina Faso</option>
                                                <option value="BI">Burundi</option>
                                                <option value="KH">Cambodia</option>
                                                <option value="CM">Cameroon</option>
                                                <option value="CA">Canada</option>
                                                <option value="CV">Cape Verde</option>
                                                <option value="KY">Cayman Islands</option>
                                                <option value="CF">Central African Republic</option>
                                                <option value="TD">Chad</option>
                                                <option value="CL">Chile</option>
                                                <option value="CN">China</option>
                                                <option value="CX">Christmas Island</option>
                                                <option value="CC">Cocos (Keeling) Islands</option>
                                                <option value="CO">Colombia</option>
                                                <option value="KM">Comoros</option>
                                                <option value="CG">Congo</option>
                                                <option value="CD">Congo, the Democratic Republic of the</option>
                                                <option value="CK">Cook Islands</option>
                                                <option value="CR">Costa Rica</option>
                                                <option value="CI">Cote d'Ivoire</option>
                                                <option value="HR">Croatia (Hrvatska)</option>
                                                <option value="CU">Cuba</option>
                                                <option value="CY">Cyprus</option>
                                                <option value="CZ">Czech Republic</option>
                                                <option value="DK">Denmark</option>
                                                <option value="DJ">Djibouti</option>
                                                <option value="DM">Dominica</option>
                                                <option value="DO">Dominican Republic</option>
                                                <option value="TP">East Timor</option>
                                                <option value="EC">Ecuador</option>
                                                <option value="EG">Egypt</option>
                                                <option value="SV">El Salvador</option>
                                                <option value="GQ">Equatorial Guinea</option>
                                                <option value="ER">Eritrea</option>
                                                <option value="EE">Estonia</option>
                                                <option value="ET">Ethiopia</option>
                                                <option value="FK">Falkland Islands (Malvinas)</option>
                                                <option value="FO">Faroe Islands</option>
                                                <option value="FJ">Fiji</option>
                                                <option value="FI">Finland</option>
                                                <option value="FR">France</option>
                                                <option value="FX">France, Metropolitan</option>
                                                <option value="GF">French Guiana</option>
                                                <option value="PF">French Polynesia</option>
                                                <option value="TF">French Southern Territories</option>
                                                <option value="GA">Gabon</option>
                                                <option value="GM">Gambia</option>
                                                <option value="GE">Georgia</option>
                                                <option value="DE">Germany</option>
                                                <option value="GH">Ghana</option>
                                                <option value="GI">Gibraltar</option>
                                                <option value="GR">Greece</option>
                                                <option value="GL">Greenland</option>
                                                <option value="GD">Grenada</option>
                                                <option value="GP">Guadeloupe</option>
                                                <option value="GU">Guam</option>
                                                <option value="GT">Guatemala</option>
                                                <option value="GN">Guinea</option>
                                                <option value="GW">Guinea-Bissau</option>
                                                <option value="GY">Guyana</option>
                                                <option value="HT">Haiti</option>
                                                <option value="HM">Heard and Mc Donald Islands</option>
                                                <option value="VA">Holy See (Vatican City State)</option>
                                                <option value="HN">Honduras</option>
                                                <option value="HK">Hong Kong</option>
                                                <option value="HU">Hungary</option>
                                                <option value="IS">Iceland</option>
                                                <option value="IN">India</option>
                                                <option value="ID">Indonesia</option>
                                                <option value="IR">Iran (Islamic Republic of)</option>
                                                <option value="IQ">Iraq</option>
                                                <option value="IE">Ireland</option>
                                                <option value="IL">Israel</option>
                                                <option value="IT">Italy</option>
                                                <option value="JM">Jamaica</option>
                                                <option value="JP">Japan</option>
                                                <option value="JO">Jordan</option>
                                                <option value="KZ">Kazakhstan</option>
                                                <option value="KE">Kenya</option>
                                                <option value="KI">Kiribati</option>
                                                <option value="KP">Korea, Democratic People's Republic of</option>
                                                <option value="KR">Korea, Republic of</option>
                                                <option value="KW">Kuwait</option>
                                                <option value="KG">Kyrgyzstan</option>
                                                <option value="LA">Lao People's Democratic Republic</option>
                                                <option value="LV">Latvia</option>
                                                <option value="LB">Lebanon</option>
                                                <option value="LS">Lesotho</option>
                                                <option value="LR">Liberia</option>
                                                <option value="LY">Libyan Arab Jamahiriya</option>
                                                <option value="LI">Liechtenstein</option>
                                                <option value="LT">Lithuania</option>
                                                <option value="LU">Luxembourg</option>
                                                <option value="MO">Macau</option>
                                                <option value="MK">Macedonia, The Former Yugoslav Republic of</option>
                                                <option value="MG">Madagascar</option>
                                                <option value="MW">Malawi</option>
                                                <option value="MY">Malaysia</option>
                                                <option value="MV">Maldives</option>
                                                <option value="ML">Mali</option>
                                                <option value="MT">Malta</option>
                                                <option value="MH">Marshall Islands</option>
                                                <option value="MQ">Martinique</option>
                                                <option value="MR">Mauritania</option>
                                                <option value="MU">Mauritius</option>
                                                <option value="YT">Mayotte</option>
                                                <option value="MX">Mexico</option>
                                                <option value="FM">Micronesia, Federated States of</option>
                                                <option value="MD">Moldova, Republic of</option>
                                                <option value="MC">Monaco</option>
                                                <option value="MN">Mongolia</option>
                                                <option value="MS">Montserrat</option>
                                                <option value="MA">Morocco</option>
                                                <option value="MZ">Mozambique</option>
                                                <option value="MM">Myanmar</option>
                                                <option value="NA">Namibia</option>
                                                <option value="NR">Nauru</option>
                                                <option value="NP">Nepal</option>
                                                <option value="NL">Netherlands</option>
                                                <option value="AN">Netherlands Antilles</option>
                                                <option value="NC">New Caledonia</option>
                                                <option value="NZ">New Zealand</option>
                                                <option value="NI">Nicaragua</option>
                                                <option value="NE">Niger</option>
                                                <option value="NG">Nigeria</option>
                                                <option value="NU">Niue</option>
                                                <option value="NF">Norfolk Island</option>
                                                <option value="MP">Northern Mariana Islands</option>
                                                <option value="NO">Norway</option>
                                                <option value="OM">Oman</option>
                                                <option value="PK">Pakistan</option>
                                                <option value="PW">Palau</option>
                                                <option value="PA">Panama</option>
                                                <option value="PG">Papua New Guinea</option>
                                                <option value="PY">Paraguay</option>
                                                <option value="PE">Peru</option>
                                                <option value="PH">Philippines</option>
                                                <option value="PN">Pitcairn</option>
                                                <option value="PL">Poland</option>
                                                <option value="PT">Portugal</option>
                                                <option value="PR">Puerto Rico</option>
                                                <option value="QA">Qatar</option>
                                                <option value="RE">Reunion</option>
                                                <option value="RO">Romania</option>
                                                <option value="RU">Russian Federation</option>
                                                <option value="RW">Rwanda</option>
                                                <option value="KN">Saint Kitts and Nevis</option>
                                                <option value="LC">Saint LUCIA</option>
                                                <option value="VC">Saint Vincent and the Grenadines</option>
                                                <option value="WS">Samoa</option>
                                                <option value="SM">San Marino</option>
                                                <option value="ST">Sao Tome and Principe</option>
                                                <option value="SA">Saudi Arabia</option>
                                                <option value="SN">Senegal</option>
                                                <option value="SC">Seychelles</option>
                                                <option value="SL">Sierra Leone</option>
                                                <option value="SG">Singapore</option>
                                                <option value="SK">Slovakia (Slovak Republic)</option>
                                                <option value="SI">Slovenia</option>
                                                <option value="SB">Solomon Islands</option>
                                                <option value="SO">Somalia</option>
                                                <option value="ZA">South Africa</option>
                                                <option value="GS">South Georgia and the South Sandwich Islands</option>
                                                <option value="ES">Spain</option>
                                                <option value="LK">Sri Lanka</option>
                                                <option value="SH">St. Helena</option>
                                                <option value="PM">St. Pierre and Miquelon</option>
                                                <option value="SD">Sudan</option>
                                                <option value="SR">Suriname</option>
                                                <option value="SJ">Svalbard and Jan Mayen Islands</option>
                                                <option value="SZ">Swaziland</option>
                                                <option value="SE">Sweden</option>
                                                <option value="CH">Switzerland</option>
                                                <option value="SY">Syrian Arab Republic</option>
                                                <option value="TW">Taiwan, Province of China</option>
                                                <option value="TJ">Tajikistan</option>
                                                <option value="TZ">Tanzania, United Republic of</option>
                                                <option value="TH">Thailand</option>
                                                <option value="TG">Togo</option>
                                                <option value="TK">Tokelau</option>
                                                <option value="TO">Tonga</option>
                                                <option value="TT">Trinidad and Tobago</option>
                                                <option value="TN">Tunisia</option>
                                                <option value="TR">Turkey</option>
                                                <option value="TM">Turkmenistan</option>
                                                <option value="TC">Turks and Caicos Islands</option>
                                                <option value="TV">Tuvalu</option>
                                                <option value="UG">Uganda</option>
                                                <option value="UA">Ukraine</option>
                                                <option value="AE">United Arab Emirates</option>
                                                <option value="GB">United Kingdom</option>
                                                <option value="US">United States</option>
                                                <option value="UM">United States Minor Outlying Islands</option>
                                                <option value="UY">Uruguay</option>
                                                <option value="UZ">Uzbekistan</option>
                                                <option value="VU">Vanuatu</option>
                                                <option value="VE">Venezuela</option>
                                                <option value="VN">Viet Nam</option>
                                                <option value="VG">Virgin Islands (British)</option>
                                                <option value="VI">Virgin Islands (U.S.)</option>
                                                <option value="WF">Wallis and Futuna Islands</option>
                                                <option value="EH">Western Sahara</option>
                                                <option value="YE">Yemen</option>
                                                <option value="YU">Yugoslavia</option>
                                                <option value="ZM">Zambia</option>
                                                <option value="ZW">Zimbabwe</option>
                                            </select>
                                        </div>


                                    </div>

                                </div>


                                <div class="form-group">
                                    <label for="yourname">Select Document Type*</label>
                                    <select class="form-control" id="exampleFormControlSelect1">
                                        <option value="" selected="selected" disabled>(please select a document type)
                                        </option>
                                        <option>National ID Card</option>
                                        <option>Passport</option>
                                        <option>Bank Statement</option>
                                        <option>Birth Certificate</option>
                                    </select>
                                </div>


                                <div class="form-row mt-3">

                                    <div class="col">
                                        <label for="zip">Font Side*</label>
                                        <div class="imgUp p-0">
                                            <div class="imagePreview"{!! !empty($user->profile->avatar) ? ' style="background-image: url(' . Storage::disk('s3')->url('public/users/avatar/' . $user->profile->avatar) . ')"' : '' !!}></div>
                                            <label class="btn btn-outline-primary mt-2">
                                                Select Image<input type="file" name="avatar" id="avatar"
                                                                   class="uploadFile img"
                                                                   value="Upload Photo"
                                                                   accept="image/jpeg,image/png,image/bmp"
                                                                   style="width: 0px;height: 0px;overflow: hidden;">
                                            </label>
                                        </div>
                                    </div>

                                    <div class="col">
                                        <label for="zip">Back Side*</label>
                                        <div class="imgUp p-0">
                                            <div class="imagePreview"{!! !empty($user->profile->avatar) ? ' style="background-image: url(' . Storage::disk('s3')->url('public/users/avatar/' . $user->profile->avatar) . ')"' : '' !!}></div>
                                            <label class="btn btn-outline-primary mt-2">
                                                Select Image<input type="file" name="avatar" id="avatar"
                                                                   class="uploadFile img"
                                                                   value="Upload Photo"
                                                                   accept="image/jpeg,image/png,image/bmp"
                                                                   style="width: 0px;height: 0px;overflow: hidden;">
                                            </label>
                                        </div>
                                    </div>

                                </div>
                                <hr>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary btn-block mt-3 mb-3">Submit for
                                        Review
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>


            </div>

        </div>
    </div>
    @endif



@endsection