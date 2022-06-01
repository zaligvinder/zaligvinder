(declare-const X String)
; (href=|url|import).*[\'"]([^(http:)].*css)[\'"]
(assert (not (str.in_re X (re.++ (re.union (str.to_re "href=") (str.to_re "url") (str.to_re "import")) (re.* re.allchar) (re.union (str.to_re "'") (str.to_re "\u{22}")) (re.union (str.to_re "'") (str.to_re "\u{22}")) (str.to_re "\u{a}") (re.union (str.to_re "(") (str.to_re "h") (str.to_re "t") (str.to_re "p") (str.to_re ":") (str.to_re ")")) (re.* re.allchar) (str.to_re "css")))))
; YOUR.*\u{2F}searchfast\u{2F}\s+hostiedesksearch\.dropspam\.com\u{2F}bi\u{2F}servlet\u{2F}Thinstall
(assert (not (str.in_re X (re.++ (str.to_re "YOUR") (re.* re.allchar) (str.to_re "/searchfast/") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "hostiedesksearch.dropspam.com/bi/servlet/Thinstall\u{a}")))))
; ^((\+|00)[1-9]{1,3})?(\-| {0,1})?(([\d]{0,3})(\-| {0,1})?([\d]{5,11})){1}$
(assert (str.in_re X (re.++ (re.opt (re.++ (re.union (str.to_re "+") (str.to_re "00")) ((_ re.loop 1 3) (re.range "1" "9")))) (re.opt (re.union (str.to_re "-") (re.opt (str.to_re " ")))) ((_ re.loop 1 1) (re.++ ((_ re.loop 0 3) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (re.opt (str.to_re " ")))) ((_ re.loop 5 11) (re.range "0" "9")))) (str.to_re "\u{a}"))))
; Microsoft\w+Toolbar\u{22}StarLogger\u{22}
(assert (not (str.in_re X (re.++ (str.to_re "Microsoft") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Toolbar\u{22}StarLogger\u{22}\u{a}")))))
(check-sat)
