(declare-const X String)
; ^(sip|sips)\:\+?([\w|\:?\.?\-?\@?\;?\,?\=\%\&]+)
(assert (not (str.in.re X (re.++ (str.to.re "sips:") (re.opt (str.to.re "+")) (re.+ (re.union (str.to.re "|") (str.to.re ":") (str.to.re "?") (str.to.re ".") (str.to.re "-") (str.to.re "@") (str.to.re ";") (str.to.re ",") (str.to.re "=") (str.to.re "%") (str.to.re "&") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a")))))
(check-sat)
