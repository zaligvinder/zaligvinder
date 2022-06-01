(declare-const X String)
; s_sq=aolsnssigninUser-Agent\u{3A}
(assert (str.in_re X (str.to_re "s_sq=aolsnssigninUser-Agent:\u{a}")))
; ProxyDownCurrentUser-Agent\u{3A}Host\u{3A}com\u{2F}index\.php\?tpid=
(assert (not (str.in_re X (str.to_re "ProxyDownCurrentUser-Agent:Host:com/index.php?tpid=\u{a}"))))
; /filename=[^\n]*\u{2e}rat/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".rat/i\u{a}"))))
; to\d+User-Agent\u{3A}Filtered
(assert (not (str.in_re X (re.++ (str.to_re "to") (re.+ (re.range "0" "9")) (str.to_re "User-Agent:Filtered\u{a}")))))
; [0][^0]|([^0]{1}(.){1})|[^0]*
(assert (str.in_re X (re.union (re.++ (str.to_re "0") (re.comp (str.to_re "0"))) (re.++ ((_ re.loop 1 1) (re.comp (str.to_re "0"))) ((_ re.loop 1 1) re.allchar)) (re.++ (re.* (re.comp (str.to_re "0"))) (str.to_re "\u{a}")))))
(check-sat)
