(declare-const X String)
; ^[\d]{1,}?\.[\d]{2}$
(assert (not (str.in_re X (re.++ (re.+ (re.range "0" "9")) (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "\u{a}")))))
; User-Agent\u{3A}upgrade\u{2E}qsrch\u{2E}info
(assert (not (str.in_re X (str.to_re "User-Agent:upgrade.qsrch.info\u{a}"))))
(check-sat)
