(declare-const X String)
; [a-zA-Z_:][a-zA-Z0-9_,\.\-]*?
(assert (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re ":")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re ",") (str.to.re ".") (str.to.re "-"))) (str.to.re "\x0a"))))
; User-Agent\x3A\s+source\=IncrediFind
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "source=IncrediFind\x0a")))))
(check-sat)
