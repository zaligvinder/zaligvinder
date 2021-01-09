(declare-const X String)
; UploadFriendly is an easy to use Java Applet that will allow multiple file uploads on a web server in a web page. The control supports file filtering, limits and more. Samples available in the following languages: ASP, ASP.NET, PHP, Coldfusion and JSP
(assert (not (str.in.re X (re.++ (str.to.re "UploadFriendly is an easy to use Java Applet that will allow multiple file uploads on a web server in a web page") re.allchar (str.to.re " The control supports file filtering, limits and more") re.allchar (str.to.re " Samples available in the following languages: ASP, ASP") re.allchar (str.to.re "NET, PHP, Coldfusion and JSP\x0a")))))
(check-sat)
