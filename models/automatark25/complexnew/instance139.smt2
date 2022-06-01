(declare-const X String)
; HXLogOnlyDaemonactivityIterenetFrom\u{3A}Class
(assert (str.in_re X (str.to_re "HXLogOnlyDaemonactivityIterenetFrom:Class\u{a}")))
; \u{2F}ta\u{2F}NEWS\u{2F}\d+Toolbarwww\u{2E}onlinecasinoextra\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "/ta/NEWS/") (re.+ (re.range "0" "9")) (str.to_re "Toolbarwww.onlinecasinoextra.com\u{a}"))))
; ^[1]?[-\.\s]?(\(\d{3}\)|\d{3}){1}[-\.\s]?\d{3}[-\.\s]?\d{4}(\s+|\s*[-\.x]{1}\d{1,6})?$
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "1")) (re.opt (re.union (str.to_re "-") (str.to_re ".") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 1 1) (re.union (re.++ (str.to_re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ")")) ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (re.union (str.to_re "-") (str.to_re ".") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re ".") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 1 1) (re.union (str.to_re "-") (str.to_re ".") (str.to_re "x"))) ((_ re.loop 1 6) (re.range "0" "9"))))) (str.to_re "\u{a}")))))
; \b(0?[1-9]|1[0-2])(\-)(0?[1-9]|1[0-9]|2[0-9]|3[0-1])(\-)(0[0-8])\b
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re "-") (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "1"))) (str.to_re "-\u{a}0") (re.range "0" "8")))))
; /(00356)?(99|79|77|21|27|22|25)[0-9]{6}/g
(assert (str.in_re X (re.++ (str.to_re "/") (re.opt (str.to_re "00356")) (re.union (str.to_re "99") (str.to_re "79") (str.to_re "77") (str.to_re "21") (str.to_re "27") (str.to_re "22") (str.to_re "25")) ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "/g\u{a}"))))
(check-sat)
