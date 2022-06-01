(declare-const X String)
; \b[1-9]\b
(assert (not (str.in_re X (re.++ (re.range "1" "9") (str.to_re "\u{a}")))))
; Guarded\s+3A\s+data2\.activshopper\.comUser-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "Guarded") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "3A") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "data2.activshopper.comUser-Agent:\u{a}"))))
; From\u{3A}\<title\>ActualUser-Agent\u{3A}\u{2F}bar_pl\u{2F}fav\.fcgi
(assert (not (str.in_re X (str.to_re "From:<title>ActualUser-Agent:/bar_pl/fav.fcgi\u{a}"))))
; LoggerovplUser-Agent\u{3A}t=searchreslt\u{7D}\u{7B}Sysuptime\u{3A}
(assert (str.in_re X (str.to_re "LoggerovplUser-Agent:t=searchreslt}{Sysuptime:\u{a}")))
(check-sat)
