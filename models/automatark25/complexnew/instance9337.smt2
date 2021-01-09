(declare-const X String)
; www\.trackhits\.cc\s+wwwHost\x3aRobertVersionspyblini\x2Eini
(assert (str.in.re X (re.++ (str.to.re "www.trackhits.cc") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "wwwHost:RobertVersionspyblini.ini\x0a"))))
; www\x2e2-seek\x2ecom\x2fsearch\s+TPSystem
(assert (str.in.re X (re.++ (str.to.re "www.2-seek.com/search") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "TPSystem\x0a"))))
; ^((\+)?(\d{2}[-]))?(\d{10}){1}?$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "+")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-"))) ((_ re.loop 1 1) ((_ re.loop 10 10) (re.range "0" "9"))) (str.to.re "\x0a")))))
; www\x2Eserverlogic3\x2Ecom\d+ToolBar\s+HWAEUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "www.serverlogic3.com") (re.+ (re.range "0" "9")) (str.to.re "ToolBar") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HWAEUser-Agent:\x0a"))))
; /^hello\/[0-9]\.[0-9]\/[0-9]{3}\/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}/i
(assert (not (str.in.re X (re.++ (str.to.re "/hello/") (re.range "0" "9") (str.to.re ".") (re.range "0" "9") (str.to.re "/") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re "-") ((_ re.loop 12 12) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re "/i\x0a")))))
(check-sat)
