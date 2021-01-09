(declare-const X String)
; <\s*a\s[^>]*\bhref\s*=\s*
(assert (str.in.re X (re.++ (str.to.re "<") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "a") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.* (re.comp (str.to.re ">"))) (str.to.re "href") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
; ^((\\){2})(([A-Za-z ',.;]+)(\\?)([A-Za-z ',.;]\\?)*)$
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (str.to.re "\x5c")) (str.to.re "\x0a") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (str.to.re " ") (str.to.re "'") (str.to.re ",") (str.to.re ".") (str.to.re ";"))) (re.opt (str.to.re "\x5c")) (re.* (re.++ (re.union (re.range "A" "Z") (re.range "a" "z") (str.to.re " ") (str.to.re "'") (str.to.re ",") (str.to.re ".") (str.to.re ";")) (re.opt (str.to.re "\x5c")))))))
; search\x2econduit\x2ecom\sPARSER.*
(assert (not (str.in.re X (re.++ (str.to.re "search.conduit.com") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "PARSER") (re.* re.allchar) (str.to.re "\x0a")))))
(check-sat)
