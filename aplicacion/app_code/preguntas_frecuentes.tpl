<link rel="stylesheet" href="theme/boot/css/faq.css">
<div class="row">
    <div class="span8">
        <div class="widget">
            <div class="widget-header">
                <i class="icon-pushpin"></i>
                <h3>Frequently Asked Questions</h3>
            </div> <!-- /widget-header -->
            
            <div class="widget-content">
                <h3>Search</h3>
                <br />
                <ol class="faq-list">
                    <li>
                            <h4>How can I get my own domain name?</h4>
                            <p>The Internet Corporation for Assigned Names and Numbers (ICANN) maintains a list of accredited registrars . Any of the companies on this list can register a domain name for you..</p>   
                    </li>
                    <li>
                            <h4>How can I block my hosting service's advertisements?</h4>
                            <p>Check the Terms of Service (TOS) agreement for your hosting service. It almost certainly prohibits interfering with the advertisements they add to your web pages. If you use some trick to block their advertisements on your own, then your hosting service may delete your account for violating its TOS.</p> 
                    </li>
                    <li>
                            <h4>How do I redirect someone to another page?</h4>
                            <p>The most reliable way is to configure the server to send out a redirection instruction when the old URL is requested. Then the browser will automatically get the new URL. This is the fastest and most efficient way, and is the only way described here that can convince indexing robots to phase out the old URL. For configuration details consult your server admin or documentation (with NCSA or Apache servers, use a Redirect statement in .htaccess).</p> 
                    </li>
                    <li>
                            <h4>How do I password protect my web site?</h4>
                            <p>Password protection is done through HTTP authentication. The configuration details vary from server to server, so you should read the authentication section of your server documentation. Contact your server administrator if you need help with this.</p> 
                            <p>JavaScript password scripts provide only a facade of security. At a fundamental level, they work in one of two ways. Some scripts convert the password into a URL, which keeps the document secret by limiting the number of people who know its URL. Some scripts check the password and then go to a specific URL, which protects the document only from those who don't view the JavaScript source to get the URL of the document. Neither mechanism is really secure.</p>    
                    </li>
                </ol>
                
            </div> <!-- /widget-content -->
        </div> <!-- /widget --> 
    </div> <!-- /span8 -->
    
    <div class="span4">
        <div class="widget widget-plain">
            <div class="widget-content">
                <a href="javascript:;" class="btn btn-large btn-warning btn-support-ask">Ask A Question</a> 
                <a href="javascript:;" class="btn btn-large btn-support-contact">Contact Support</a>
            </div> <!-- /widget-content -->
        </div> <!-- /widget -->
        
        <div class="widget widget-box">
            <div class="widget-header"> 
                <h3>Most Popular Questions</h3>         
            </div> <!-- /widget-header -->
            
            <div class="widget-content">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
            </div> <!-- /widget-content -->
        </div> <!-- /widget -->
    </div> <!-- /span4 -->
    
  </div> <!-- /row -->
    
<!-- Javascript -->

<script src="theme/boot/js/faq.js"></script>
<script>

$(function () {
    $('.faq-list').goFaq ();
});

</script>
