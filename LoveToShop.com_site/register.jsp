<jsp:useBean id="data" class="pack.RegistrationBean"/>
<jsp:setProperty name="data" property="*"/> 


<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>User Registration</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
<!--
.style3a {
	font-size: 14px;
	color: #990000;
	font-weight: bold;
}



-->
</style>

 

</head>

<body onLoad="add(userid)">
<% String name="";

String attention=request.getParameter("attention");
if(attention==null)
{attention="";}
else
{attention=attention+"!!!!";}

%>

<table width="955" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="3"></td>
  </tr>
  <tr>
    <td colspan="3"><img src="pic/head1.gif" width="986" height="146"></td>
  </tr>
  <tr>
    <td colspan="3"><jsp:include page="category.jsp"/></td>
  </tr>
  <tr>
    <td colspan="3" height="2" bgcolor="ff6600"></td>
  </tr>
  <tr>
    <td colspan="3"><jsp:include page="hindex.html"/></td>
  </tr>
  <tr>
    <td width="93" rowspan="2" >&nbsp;</td>
    <td width="809" align="center"><div align="center"></div>
      <div align="center"> </div>
    </td>
    <td width="84" rowspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td height="685" align="center"><div align="center">
      <TABLE height="88%" cellSpacing=3 cellPadding=1 
                                width="97%" bgColor=#ffffff border=0>
        <TBODY>
          <TR align=left>
            <TD vAlign=top colSpan=4>&nbsp; &nbsp; &nbsp; &nbsp;<span class="style3a">Registration Form </span></TD>
          </TR>
          <TR align=left>
            <TD vAlign=top colSpan=4>
              <DIV align=center><SPAN 
                                class=red><B><U></U></B></SPAN></DIV></TD>
          </TR>
		 <FORM name=form1 
                        onsubmit="javascript: return validate(this);" 
                         action="A.jsp" method=post >
						
<SCRIPT language=javascript type=text/javascript>
<!--
function add(userid)
{
if(attention!=null)
userid.select();
userid.focus();
}

var v1;
function isBlank(s) {
	for (i=0;i<s.length;i++) {
		if (s.charAt(i) !=" ") {
			return false;
		}
	}
	return true;
}

function validate(f) {

	if (isBlank(f.email.value)) {
		alert("Please enter Email ID !!");
		f.email.select();
		f.email.focus();
		return false;
	}
	
var email1=f.email.value;
	if (email1.indexOf("@")<1 || email1.length<7 || email1.indexOf(".") < 1)	{
		alert("Invalid Email address !!");
		f.email.select();
		f.email.focus();
		return false;
	}
	
	if(isBlank(f.userid.value)){
	alert("Please enter Your Userid !!");
		f.userid.select();
		f.userid.focus();
		return false;
	}
	varuserid1=f.userid.value;
	if (userid1.length<30 )	{
		alert("Length of character is more then 30");
		f.userid.select();
		f.userid.focus();
		return false;
	}
	
	if (isBlank(f.password.value)) {
		alert("Please enter Password !!");
		f.password.select();
		f.password.focus();
		return false;
	}
	var password1=f.password.value;
	if (password1.length<7 ||password1.length>20)	{
		alert("Plz enter the password whose length in between 7 to 20");
		f.password.select();
		f.password.focus();
		return false;
	}
	
	if (isBlank(f.cpassword.value)) {
		alert("Please confirm Password !!");
		f.cpassword.select();
		f.cpassword.focus();
		return false;
	}
	if (f.password.value != f.cpassword.value){
		alert("Passwords do not match, please  re-enter!!");
		f.password.select();
		f.cpassword.select();
		f.password.focus();
		return false;
	}
	
	if(isBlank(f.fname.value)){
	alert("Please enter Your first name !!");
		f.fname.select();
		f.fname.focus();
		return false;
	}
	
	if(isBlank(f.lname.value)){
	alert("Please enter Your last name !!");
		f.lname.select();
		f.lname.focus();
		return false;
	}
	
	if(isBlank(f.address.value)){
	alert("Please enter Your valid address !!");
		f.address.select();
		f.address.focus();
		return false;
	}
		
	
	if(isBlank(f.state.value)){
	alert("Please enter Your State !!");
		f.state.select();
		f.atate.focus();
		return false;
	}
	
	if(isBlank(f.country.value)){
	alert("Please enter Your Country !!");
		f.country.select();
		f.country.focus();
		return false;
	}
	
	if(isBlank(f.mobile.value)){
	alert("Please enter Your Mobile Number !!");
		f.mobile.select();
		f.mobile.focus();
		return false;
	}
	
			var mobile1=f.mobile.value;
	if (mobile1.length<10){
		alert("Invalid Mobile Number !!");
		f.mobile.select();
		f.mobile.focus();
		return false;
	}

			
	
	if(isBlank(f.age.value)){
	alert("Please enter Your Age !!");
		f.age.select();
		f.age.focus();
		return false;
	}
	if( f.age.value != '' ) {
			if( !f.age.value.match( /^[1-9]\d$/ ) ) {
				alert( 'Please enter a valid age !!' );
				f.age.select();
				f.age.focus();
				return false;
			}
		}
	
	if(!f.agree.checked) {
		alert("Please select the Agreement");
		f.agree.focus();
		return false;
	}
	
return true;
}


//-->
</script>

		
          <TR bgColor=#999966>
            <TD colSpan=4><div align="left"><SPAN class=stylecontact>&nbsp; &nbsp;Step 1- Account detail</SPAN></div></TD>
          </TR>
          <TR>
            <TD vAlign=top align=right>E-mail id </TD>
            <TD colSpan=2 align="left">
			   <% name=request.getParameter("email");if(name==null){name=" ";}%>
              <input type="text" name="email" value="<%out.println(name);%>" id="email" size="30">
			</TD>
          </TR>
          <TR>
            <TD vAlign=top align=right width="26%"><SPAN 
                                class=style16>My Login / User's Id</SPAN></TD>
            <TD width="74%" colSpan=2><div align="left">
              <input id=userid4 size=30 name=userid <%if(attention!=null){System.out.println("ffffff");%>  userid.select(); userid.focus(); <%}%>  >
              &nbsp;<FONT face=arial size=1>Max 30 characters only.</FONT><% out.println(attention);%></div>
			  </TD>
          </TR>
          <TR>
            <TD vAlign=top align=right><SPAN 
                                class=style15>Password</SPAN></TD>
            <TD colSpan=2><div align="left">
                <INPUT id=password3 type=password  
                                size=20 name=password >
&nbsp;<FONT face=arial 
                                size=1>Min 6 and max 20 characters.</FONT></div></TD>
          </TR>
          <TR>
            <TD vAlign=top align=right><SPAN 
                                class=style15>Confirm Password</SPAN></TD>
            <TD colSpan=2><div align="left"><SPAN class=product-title>
                <INPUT 
                                id=confirmpassword3 type=password size=30 
                                name=cpassword>
            </SPAN></div></TD>
          </TR>
          <TR align=left bgColor=#0099cc>
            <TD vAlign=top colSpan=4><SPAN 
                                class=stylecontact>&nbsp;&nbsp;&nbsp;Step 2 - Enter your contact details </SPAN><SPAN 
                                class=style15></SPAN></TD>
          </TR>
          <TR>
            <TD vAlign=top align=right width="26%"><FONT 
                                face="Arial, Helvetica, sans-serif" size=2><SPAN 
                                class=style15>Your First Name</SPAN></FONT></TD>
            <TD colSpan=3><div align="left">
			  <% name=request.getParameter("fname");if(name==null){name=" ";}%>
              <input id=fname4 size=30 value="<%out.println(name);%>"
                                name=fname>                
              <SPAN class=style15>Last Name
                 <% name=request.getParameter("lname");if(name==null){name=" ";}%><INPUT value="<%out.println(name);%>"
                                id=lname4 size=30 name=lname>
            </SPAN></div></TD>
          </TR>
          <TR>
            <TD vAlign=top align=right width="26%"><FONT 
                                face="Arial, Helvetica, sans-serif" size=2><SPAN 
                                class=style15>Address</SPAN></FONT></TD>
            <TD colSpan=3><div align="left">
			 <% name=request.getParameter("address");if(name==null){name=" ";}%>
             <textarea id=textarea6  name=address cols=60><%out.print(name);%>
                </textarea>
</div></TD>
          </TR>
          <TR>
            <TD vAlign=top align=right><FONT 
                                face="Arial, Helvetica, sans-serif" size=2><SPAN 
                                class=style15>State</SPAN></FONT></TD>
            <TD colSpan=3><div align="left"><SPAN class=product-title>
           <% name=request.getParameter("state");if(name==null){name=" ";}%>
		    <input size=30 value="<%out.println(name);%>" name=state>
</SPAN></div></TD>
          </TR>
          <TR>
            <TD align=right><FONT 
                                face="Arial, Helvetica, sans-serif" size=2><SPAN 
                                class=style15>Country </SPAN></FONT></TD>
            <TD align=left colSpan=3>
              <div align="left">
			   <% name=request.getParameter("country");if(name==null){name="India";}%>
                <SELECT name=country >
                  <OPTION  value=select>Select</OPTION>
                  <OPTION  <%if(name.equals("Afghanistan")){out.println("selected");}%> value=Afghanistan>Afghanistan</OPTION>
                  <OPTION  <%if(name.equals("Australia")){out.println("selected");}%> value=Australia>Australia</OPTION>
                  <OPTION  <%if(name.equals("Bangladesh")){out.println("selected");}%> value=Bangladesh>Bangladesh</OPTION>
                  <OPTION  <%if(name.equals("Canada")){out.println("selected");}%> value=Canada>Canada</OPTION>
                  <OPTION  <%if(name.equals("China")){out.println("selected");}%>  value=China>China</OPTION>
                  <OPTION  <%if(name.equals("Germany")){out.println("selected");}%> value=Germany>Germany</OPTION>
                  <OPTION  <%if(name.equals("Iceland")){out.println("selected");}%> value=Iceland>Iceland</OPTION>
                  <option  <%if(name.equals("India")){out.println("selected");}%> value=India>India</option>
                  <OPTION  <%if(name.equals("Japan")){out.println("selected");}%> value=Japan>Japan</OPTION>
                  <OPTION  <%if(name.equals("Malaysia")){out.println("selected");}%> value=Malaysia>Malaysia</OPTION>
                  <OPTION  <%if(name.equals("Mexico")){out.println("selected");}%> value=Mexico>Mexico</OPTION>
                  <OPTION  <%if(name.equals("Nepal")){out.println("selected");}%> value=Nepal>Nepal</OPTION>
                  <OPTION  <%if(name.equals("Pakistan")){out.println("selected");}%> value=Pakistan>Pakistan</OPTION>
                  <OPTION  <%if(name.equals("South Africa")){out.println("selected");}%> value="South Africa">South Africa</OPTION>
                  <OPTION  <%if(name.equals("Sri Lanka")){out.println("selected");}%> value="Sri Lanka">Sri Lanka</OPTION>
                  <OPTION  <%if(name.equals("Switzerland")){out.println("selected");}%> value=Switzerland>Switzerland</OPTION>
                  <OPTION  <%if(name.equals("United Arab Emirates")){out.println("selected");}%> value="United Arab Emirates">UAE</OPTION>
                  <OPTION  <%if(name.equals("United Kingdom")){out.println("selected");}%> value="United Kingdom">United Kingdom</OPTION>
                  <OPTION  <%if(name.equals("United States")){out.println("selected");}%> value="United States">United States</OPTION>
                  <OPTION  <%if(name.equals("Zimbabwe")){out.println("selected");}%> value=Zimbabwe>Zimbabwe</OPTION>
                </SELECT>
            </div></TD>
          </TR>
          <TR>
            <TD align=right><FONT 
                                face="Arial, Helvetica, sans-serif" size=2><SPAN 
                                class=style15>Mobile </SPAN></FONT></TD>
            <TD colSpan=3><div align="left">
			 <% name=request.getParameter("mobile");if(name==null){name=" ";}%>
              <input id=mobile size=25 value="<%out.println(name);%>"
                                name=mobile>
</div></TD>
          </TR>
          <TR>
            <TD align=right><FONT 
                                face="Arial, Helvetica, sans-serif" size=2>Age<SPAN 
                                class=style15></SPAN></FONT></TD>
            <TD colSpan=3><!--<input name="birthdate" type="text" id='birthdate' size="25" value=""> -->
                <div align="left"> <% name=request.getParameter("age");if(name==null){name=" ";}%>
                  <input type="text" value="<%out.println(name);%>" name="age" size="8">
              </div></TD>
          </TR>
          <TR align=left bgcolor="#ebebeb">
            <TD colSpan=4>&nbsp;</TD>
          </TR>
          <TR align=left>
            <TD colSpan=4><STRONG><FONT 
                                color=#0000ff>&nbsp; Terms &amp; Conditions and Privacy Policy</FONT></STRONG></TD>
          </TR>
          <TR>
            <TD align=right height=50>&nbsp;</TD>
            <TD colSpan=3><TEXTAREA id=textarea7 style="COLOR: black; BACKGROUND-COLOR: #fffffc" name=address2 rows=5 readOnly cols=60>Terms &amp; Conditions

The following document is in benefit of your, while you are accessing the site and its services provided to you under certain terms &amp; conditions by Archiesonline.
Introduction:
Archies Limited is a website providing services all over in India and sending you incredible lovely gifts &amp; cards at your doorstep. All products and services and information displayed on Archiesonline are to put forward your order that you buy which shall be subject to the terms and conditions as listed below. Archiesonline has a right to cancel your order if it is initiate incorrect with respect to the terms &amp; conditions of the company and former notice will be send to you through e-mail to inform you about the cancellation. Our company's panel will confirm your e-mail id and other address information that you have submitted to us and than dispatch your order. Also a confirmation report of your order will be mailed to you from our side.

Membership: 
Only members can make use of the site by officially signing up and assured of approving the terms &amp; conditions of the company. For opting membership your age must be of 18 years and If you are a minor i.e. under the age of 18 years but at least 13 years of age you may use this Site only under the supervision of a parent or legal guardian who agrees with the Terms &amp; conditions of Use. Archiesonline reserves the authority to end your membership and refuse to provide you with right to use to the Site if we judge that you are boding evil the terms &amp; conditions of the company. In future the site will not be available to a person whose membership has been terminated by Archiesonline for any reason. If you are registering as a businessperson, you must show that you have the authority to join the unit to this User Agreement. Unless otherwise specified, the materials on this website are directed solely at those who access this website from India. Those who choose to access this Site from outside India are responsible for compliance with local laws if and to the extent local laws are applicable. By using the services of this site you agree with the Terms and Conditions.

Pricing Information:
Archiesonline provides you a true value of product and its information, (pricing errors may occur). In the result that a product is listed at an incorrect price or with incorrect information due to an error in pricing or product information, In the event that an item is incorrectly priced, Unless the product ordered by you has been dispatched, the process will not move forward and we reserve the right, to cancel the order for any reason and contact you for further information through e-mail. If we accept your order the amount of money will be withdrawn from your credit card account and accordingly will inform to you by email that the payment has been processed. The payment may be processed prior to Archiesonline dispatch of the product that you have ordered. If we have to cancel the order after we have processed the payment, the said amount will be reversed back to your credit card account. 
We go all-out to provide you with the best low prices possible on Archiesonline and in all Archies Galleries. 

Cancellation by Archiesonline:
Please note that there may be certain orders that we are unable to accept and cancel by our side. We reserve the right, to cancel the order for any reason. Under uneven circumstances that may come in your order being canceled, include limitations on quantity available for purchase, error in product or pricing information, or problem by our credit department. We may also require information before accepting the order. We will contact you if your order is canceled or if any kind of information is necessary to accept your order. If your order is cancelled after your credit card has been charged, the credit will be inverted back in your Account. 

Cancellations by the customer:
In case we receive a cancellation notice and the order has not been dispatched by us, we shall cancel the order and refund the entire amount. On cancellation of an order after it has been dispatched from our side, the cancellation charges will be applied that is 5% of the order value. We expect that no difference of opinion will happen from your side regarding the cancellation. If the Product is once dispatched, it cannot be returned. 

Credit Card Details:
If you are doing your payment by credit card, remember that in a credit card transaction you must use your own credit card. You must give the correct information of your credit card details to Archiesonline. We assure you that in future the given information will not be shared from our side with any of the third party unless law requires it. Further we will not be responsible for any credit card fraud. For using the wrong card and misleading the company, the liability will be on you. 

Fraudulent Transactions:
Archiesonline reserves the right to recover the cost of goods, collection charges from persons using the Site fraudulently. Archiesonline reserves the right to take legal action against such persons for fake use of the Site and any other unlawful acts done against the terms and conditions of the company.

Privacy Policy:
We assure you that your personal information is safe &amp; secure at our hands and we don't share your personal information to third parties for their marketing purposes without your clear approval and we only use your information as described in the Privacy Policy. Your privacy is our first and important concern. 

Site Security:
For security purposes it is strictly prohibited to use the site illegally that is not allowed to access for you like using data not anticipated for you. It is against the terms if you are trying to obstruct with service to any other user by means of putting forward a virus to the Site, overloading, "spamming," "mail bombing" or sending unwanted email, disobedience of system or network security is against legal responsibility and major actions will be taken by the authorities to obstructing the services. You agree not to use any device, software or routine to interfere or attempt to interfere with the proper working of this Site or any activity being conducted on this Site. 

Colors: 
We have showed the accurate colors of our products that appear on the Site. However, we cannot guarantee that your monitor's display the same accurate colors or not.

Not recommended by the site:
Using the site illegally that is in advance using illegally to other computer systems. Passing on electronic copies of material confined by copyright without the permission of the owner. Interfering or disrupting network or web sites connected to the Site is disobeying the laws of the company.

Termination:                                                                                                                                                                                                                    
You may lapse the Agreement with Archiesonline at any time, and from that time you won't be able to continue with the use of this Site. Archiesonline has right to terminate this User Agreement at any time and may do so directly without notice, and accordingly disallow you to access to the Site, Such termination will be without any legal responsibility to Archiesonline. This User Agreement is of use unless and until terminated by either you or Archiesonline.

You Agree and Confirm:
In case if you provided us with the incomplete information of delivery (i.e. wrong name or address) extra charges will be taken from you. Archiesonline reserves the right to confirm the information and other details provided by you at any time, and if your given information is not correct we reserve the right to reject your request of the given address or information. When placing an order for a product you agree with the conditions of sale that is included in the item's description and you are using the services available on this Site and transacting at your own responsibility.

Modification of Terms and conditions of Service: 
Our group of company's panel can modify the User Agreement without giving any prior notification to our customers. We will inform you of the modifications in the User Agreement via e-mail at the address provided by you while registering on Archiesonline. You should regularly review the User Agreement on Archiesonline. In case modified User Agreement is not satisfactory to you, you should discontinue using the service. However, if you continue to use the services, it means you agree with the terms &amp; conditions of this agreement.

Account and Registration Obligations: 
The information that you provide to us at the registration, buying or listing process, through any e-mail feature must be clear and correct. We assure you that your information is safe in our hands at the same time you are requested for maintaining the confidentiality of your account and Password and for restricting access to your computer. We shall not be responsible for any loss, which may arise as a result of any failure by you to protect your password or account. 

Reviews, Feedback, Submissions:
All reviews, feedback, presented to Archiesonline, in concern with the use of the Site, The Company can disagree with it if it's not in favor of the company's laws. You agree that any Comments submitted by you to the Site will not break this policy or any right of any third party, including copyright, trademark, privacy and will not create any kind of illegal or disturbance to any person. Comments presented by you to the Site will not contain illegal or obscene material, or contain software viruses, or any form of Spam. 

Third Party Selling:
We will not able to manage the transactions of the dealers, when you buy products from the third party on Site you must follow certain terms &amp; conditions. We are not responsible for any break up of contract done between you and the dealer. We cannot guarantee that the third party will execute the transaction accomplished on the Site or of the quality, pricing marketing etc. of the items offer to be sold on the Site by their side.
Archiesonline or its person's who are connected with company are not responsible for any damage, liability or for any actions of the dealers on the Site. If you find third party information offensive, inaccurate, or deceptive, please use security measures and do safe trading when using the Site. Please note that there are also risks of dealing with foreign nationals and people found to be foul. You requested not to use a fake email address or misinform any remarks that you will submit.

Indemnity:
If any kind of damage or loss is done by you or the third party Archiesonline or its employees are not responsible for any kind of claims. When you accept the terms and conditions of the company you are liable of all the claims done by you or the third party who deals with you. If there is non-fulfillment of any of your requirement under the User Agreement that is a unpaid statutory due and tax, violation of rights of privacy or publicity or intellectual property, loss of service by other subscribers or any other rights. This clause will terminate of the User Agreement.

Limitation of Liability and Disclaimers: 
The Board of Directors/senior management of the Company shall have power to modify or replace the Code in part or in full, as they may deem fit from time to time in their absolute discretion. Company is not responsible for the risks associated with the use of the Site.
The Site provides content from other Internet sites or resources and while we try to make sure that material included on the Site is correct, reputable and of high quality, it cannot accept responsibility if this is not the case. Archiesonline will not be responsible for any errors or for the results found from the use of such information or for any technical problems you may experience with the Site. 
Archiesonline and its associates make no assurance about the accuracy, reliability, correctness of any content, information, software, text, graphics, links or communications provided on or through the use of the Site or that the operation of the Site will be uninterrupted. Thus, Archiesonline believe no legal responsibility whatsoever for any financial or other damage undergo by you on account of the delay, failure, interruption, or corruption of any data or any interruption in the operation of the Site. 

Copyright &amp; Trademark: 
Archiesonline and its suppliers reserve property rights in all text, programs, products, processes and other materials, which appear on the Site. All rights, including copyright, in this website are owned by or licensed to Archies limited. Any use of this website or its contents, including copying or storing it or them in whole or part, other than for your own personal, non-commercial use is prohibited without our authorization. You may not modify anything on this website for any purpose. The Archiesonline.com names and logos and all related product and service names, design marks and slogans are the trademarks or service marks of Archies Ltd. All other marks are the property of their respective companies. No trademark or service mark license is granted in connection with the materials contained on this Site. We are not responsible for the content of any third party sites and do not make any depiction regarding the content or precision of material on such site. If you decide to link to any such third party websites, you do so entirely at your own risk. All materials, including images, text, illustrations, designs, icons, photographs, programs, music clips or downloads, video clips and written and other materials that are part of this Site are intended only for personal, non-commercial use. You may download or copy the Contents and other downloadable materials displayed on the Site for your personal use only. No right, title or interest in any downloaded materials or software is transferred to you as a result of any such downloading or copying. All software used on this Site is the property of Archiesonline or its suppliers and protected by Indian and international copyright laws. The collection of all Contents on this Site is the exclusive property of Archiesonline and is also protected by privacy and copyrights laws. 

Contact Details:

You may contact us at: 

ARCHIES LIMITED
C-113, Naraina Industrial Area
Phase-1, Delhi: - 110028 (INDIA)
Tel: (91-11) 41410000; Fax: (91-11) 41410070
E-mail: ccare@archiesonline.com</TEXTAREA></TD>
          </TR>
          <TR>
            <TD vAlign=top align=right><div align="right">
                <INPUT id=agree type=checkbox value=A name=agree>
            </div></TD>
            <TD colSpan=3><div align="left"><SPAN class=product-title><FONT 
                                face="Arial, Helvetica, sans-serif" 
                                size=2><STRONG>I agree to the following Term &amp; Condition </STRONG></FONT></SPAN></div></TD>
          </TR>
          <TR>
            <TD align=right height=40>&nbsp;</TD>
            <TD colSpan=3><input name=register type=submit id="register" value="Register" >                
              <INPUT id=Clear4 type=reset value=Clear name=Clear>
            </TD>
          </TR>
		  </form>
          <TR bgcolor="#FFFFFF">
            <TD height="4" colSpan=4><img src="pic/index1_11.jpg" width="801" height="4"></TD>
          </TR>
		 
          <TR>
            <TD height="21" colSpan=4>
               </TD>
          </TR>
		  
          <TR>
		 
            <TD height="21" colSpan=4 align="center">
			</TD>
			
          </TR>
		  
 

        </TBODY>
      </TABLE>
      <blockquote>&nbsp;</blockquote>
    </div></td>
  </tr>
</table>
</body>
</html>
