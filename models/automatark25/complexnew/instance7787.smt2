(declare-const X String)
; ^([0-1]?\d|2[0-3]):([0-5]\d)$
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re ":\x0a") (re.range "0" "5") (re.range "0" "9"))))
; UploadFriendly is an easy to use Java Applet that will allow multiple file uploads on a web server in a web page. The control supports file filtering, limits and more. Samples available in the following languages: ASP, ASP.NET, PHP, Coldfusion and JSP
(assert (not (str.in.re X (re.++ (str.to.re "UploadFriendly is an easy to use Java Applet that will allow multiple file uploads on a web server in a web page") re.allchar (str.to.re " The control supports file filtering, limits and more") re.allchar (str.to.re " Samples available in the following languages: ASP, ASP") re.allchar (str.to.re "NET, PHP, Coldfusion and JSP\x0a")))))
(check-sat)
