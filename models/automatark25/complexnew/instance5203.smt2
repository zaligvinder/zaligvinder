(declare-const X String)
; ^((00|\+)49)?(0?[2-9][0-9]{1,})$
(assert (not (str.in_re X (re.++ (re.opt (re.++ (re.union (str.to_re "00") (str.to_re "+")) (str.to_re "49"))) (str.to_re "\u{a}") (re.opt (str.to_re "0")) (re.range "2" "9") (re.+ (re.range "0" "9"))))))
; IP-[^\n\r]*URL\d\u{7c}roogoo\u{7c}\.cfgmPOPrtCUSTOMPalToolbar
(assert (str.in_re X (re.++ (str.to_re "IP-") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "URL") (re.range "0" "9") (str.to_re "|roogoo|.cfgmPOPrtCUSTOMPalToolbar\u{a}"))))
; \.txt$
(assert (str.in_re X (str.to_re ".txt\u{a}")))
(check-sat)
