(declare-const X String)
; \b[1-9]\b
(assert (not (str.in.re X (re.++ (re.range "1" "9") (str.to.re "\x0a")))))
; Guarded\s+3A\s+data2\.activshopper\.comUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "Guarded") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "3A") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "data2.activshopper.comUser-Agent:\x0a"))))
; From\x3A\<title\>ActualUser-Agent\x3A\x2Fbar_pl\x2Ffav\.fcgi
(assert (not (str.in.re X (str.to.re "From:<title>ActualUser-Agent:/bar_pl/fav.fcgi\x0a"))))
; LoggerovplUser-Agent\x3At=searchreslt\x7D\x7BSysuptime\x3A
(assert (str.in.re X (str.to.re "LoggerovplUser-Agent:t=searchreslt}{Sysuptime:\x0a")))
(check-sat)
