(declare-const X String)
; gpstool\u{2e}globaladserver\u{2e}com\daction\u{2E}Searchdata2\.activshopper\.com
(assert (str.in_re X (re.++ (str.to_re "gpstool.globaladserver.com") (re.range "0" "9") (str.to_re "action.Searchdata2.activshopper.com\u{a}"))))
(check-sat)
