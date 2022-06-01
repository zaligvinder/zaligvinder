(declare-const X String)
; \u{2F}bar_pl\u{2F}chk_bar\.fcgiUser-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "/bar_pl/chk_bar.fcgiUser-Agent:\u{a}"))))
; \u{2E}dat\u{2E}Toolbar\u{7D}\u{7B}OS\u{3A}toolsbar\u{2E}kuaiso\u{2E}com
(assert (str.in_re X (str.to_re ".dat.Toolbar}{OS:toolsbar.kuaiso.com\u{a}")))
; /filename=[^\n]*\u{2e}max/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".max/i\u{a}"))))
; /listoverridecount([2345678]|[019][0-9])/i
(assert (not (str.in_re X (re.++ (str.to_re "/listoverridecount") (re.union (re.++ (re.union (str.to_re "0") (str.to_re "1") (str.to_re "9")) (re.range "0" "9")) (str.to_re "2") (str.to_re "3") (str.to_re "4") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "8")) (str.to_re "/i\u{a}")))))
; ^([1-9]([0-9])?)(\.(([0])?|([1-9])?|[1]([0-1])?)?)?$
(assert (str.in_re X (re.++ (re.opt (re.++ (str.to_re ".") (re.opt (re.union (re.opt (str.to_re "0")) (re.opt (re.range "1" "9")) (re.++ (str.to_re "1") (re.opt (re.range "0" "1"))))))) (str.to_re "\u{a}") (re.range "1" "9") (re.opt (re.range "0" "9")))))
(check-sat)
