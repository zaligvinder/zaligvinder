(declare-const X String)
; ^(\-)?\d*(\.\d+)?$
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "-")) (re.* (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9")))) (str.to_re "\u{a}")))))
; <script type="text/javascript">
(assert (str.in_re X (str.to_re "<script type=\u{22}text/javascript\u{22}>\u{a}")))
; \bhttp(s?)\:\/\/[a-zA-Z0-9\/\?\-\.\&\(\)_=#]*
(assert (not (str.in_re X (re.++ (str.to_re "http") (re.opt (str.to_re "s")) (str.to_re "://") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "/") (str.to_re "?") (str.to_re "-") (str.to_re ".") (str.to_re "&") (str.to_re "(") (str.to_re ")") (str.to_re "_") (str.to_re "=") (str.to_re "#"))) (str.to_re "\u{a}")))))
; iz=Referer\u{3A}offers\u{2E}bullseye-network\u{2E}com
(assert (not (str.in_re X (str.to_re "iz=Referer:offers.bullseye-network.com\u{a}"))))
(check-sat)
