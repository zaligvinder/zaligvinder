(declare-const X String)
; UploadFriendly is an easy to use Java Applet that will allow multiple file uploads on a web server in a web page. The control supports file filtering, limits and more. Samples available in the following languages: ASP, ASP.NET, PHP, Coldfusion and JSP
(assert (str.in.re X (re.++ (str.to.re "UploadFriendly is an easy to use Java Applet that will allow multiple file uploads on a web server in a web page") re.allchar (str.to.re " The control supports file filtering, limits and more") re.allchar (str.to.re " Samples available in the following languages: ASP, ASP") re.allchar (str.to.re "NET, PHP, Coldfusion and JSP\x0a"))))
; upgrade\x2Eqsrch\x2Einfo[^\n\r]*dcww\x2Edmcast\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "upgrade.qsrch.info") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "dcww.dmcast.com\x0a"))))
; /filename=[\x22\x27]?[^\n]*\x2ewpd[\x22\x27\s]/si
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.opt (re.union (str.to.re "\x22") (str.to.re "'"))) (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wpd") (re.union (str.to.re "\x22") (str.to.re "'") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "/si\x0a"))))
; Host\x3AUser-Agent\x3Awww\.raxsearch\.com
(assert (str.in.re X (str.to.re "Host:User-Agent:www.raxsearch.com\x0a")))
(check-sat)
