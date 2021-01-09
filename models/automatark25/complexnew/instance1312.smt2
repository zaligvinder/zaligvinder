(declare-const X String)
; From\x3A\<title\>ActualUser-Agent\x3A\x2Fbar_pl\x2Ffav\.fcgi
(assert (not (str.in.re X (str.to.re "From:<title>ActualUser-Agent:/bar_pl/fav.fcgi\x0a"))))
; trackwww\x2Ealfacleaner\x2Ecom
(assert (not (str.in.re X (str.to.re "trackwww.alfacleaner.com\x0a"))))
(check-sat)
