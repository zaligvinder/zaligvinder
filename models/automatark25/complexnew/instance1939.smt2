(declare-const X String)
; \u{28}BDLL\u{29}\s+CD\u{2F}.*Host\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "(BDLL)\u{13}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "CD/") (re.* re.allchar) (str.to_re "Host:\u{a}")))))
; ^([(]?[+]{1}[0-9]{1,3}[)]?[ .\-]?)?[(]?[0-9]{3}[)]?[ .\-]?([0-9]{3}[ .\-]?[0-9]{4}|[a-zA-Z0-9]{7})([ .\-]?[/]{1}[ .\-]?[0-9]{2,4})?$
(assert (str.in_re X (re.++ (re.opt (re.++ (re.opt (str.to_re "(")) ((_ re.loop 1 1) (str.to_re "+")) ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (str.to_re ")")) (re.opt (re.union (str.to_re " ") (str.to_re ".") (str.to_re "-"))))) (re.opt (str.to_re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re ")")) (re.opt (re.union (str.to_re " ") (str.to_re ".") (str.to_re "-"))) (re.union (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re ".") (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9"))) ((_ re.loop 7 7) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))) (re.opt (re.++ (re.opt (re.union (str.to_re " ") (str.to_re ".") (str.to_re "-"))) ((_ re.loop 1 1) (str.to_re "/")) (re.opt (re.union (str.to_re " ") (str.to_re ".") (str.to_re "-"))) ((_ re.loop 2 4) (re.range "0" "9")))) (str.to_re "\u{a}"))))
; \b4[0-9]\b
(assert (not (str.in_re X (re.++ (str.to_re "4") (re.range "0" "9") (str.to_re "\u{a}")))))
; Host\u{3A}YOURcache\u{2E}everer\u{2E}comwww\u{2E}purityscan\u{2E}com
(assert (str.in_re X (str.to_re "Host:YOURcache.everer.comwww.purityscan.com\u{a}")))
; www\u{2E}onlinecasinoextra\u{2E}comsqlads\.grokads\.com
(assert (str.in_re X (str.to_re "www.onlinecasinoextra.comsqlads.grokads.com\u{a}")))
(check-sat)
