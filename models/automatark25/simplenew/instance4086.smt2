(declare-const X String)
; ^(sip|sips)\:\+?([\w|\:?\.?\-?\@?\;?\,?\=\%\&]+)
(assert (str.in_re X (re.++ (str.to_re "sips:") (re.opt (str.to_re "+")) (re.+ (re.union (str.to_re "|") (str.to_re ":") (str.to_re "?") (str.to_re ".") (str.to_re "-") (str.to_re "@") (str.to_re ";") (str.to_re ",") (str.to_re "=") (str.to_re "%") (str.to_re "&") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{a}"))))
(check-sat)
