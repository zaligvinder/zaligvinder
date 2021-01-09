(declare-const X String)
; /filename=[\x22\x27]?[^\n]*\x2egni[\x22\x27\s]/si
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.opt (re.union (str.to.re "\x22") (str.to.re "'"))) (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".gni") (re.union (str.to.re "\x22") (str.to.re "'") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "/si\x0a")))))
; ^\$(\d{1,3}(\,\d{3})*|(\d+))(\.\d{2})?$
(assert (str.in.re X (re.++ (str.to.re "$") (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.+ (re.range "0" "9"))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
; (^([1-3]{1}[0-9]{0,}(\.[0-9]{1})?|0(\.[0-9]{1})?|[4]{1}[0-9]{0,}(\.[0]{1})?|5(\.[5]{1}))$)
(assert (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 1 1) (re.range "1" "3")) (re.* (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 1) (re.range "0" "9"))))) (re.++ (str.to.re "0") (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 1) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 1) (str.to.re "4")) (re.* (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 1) (str.to.re "0"))))) (re.++ (str.to.re "5.") ((_ re.loop 1 1) (str.to.re "5")))) (str.to.re "\x0a"))))
; /^POST\x20\x2f[A-F\d]{42}\x20HTTP/
(assert (not (str.in.re X (re.++ (str.to.re "/POST /") ((_ re.loop 42 42) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re " HTTP/\x0a")))))
; wv=update\.cgidrivesDaysform-data\x3B\x20name=\x22pid\x22
(assert (not (str.in.re X (str.to.re "wv=update.cgidrivesDaysform-data; name=\x22pid\x22\x0a"))))
(check-sat)
