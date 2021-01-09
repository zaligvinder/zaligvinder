(declare-const X String)
; HTTPwwwProbnymomspyo\x2fzowy
(assert (str.in.re X (str.to.re "HTTPwwwProbnymomspyo/zowy\x0a")))
; (script)|(<)|(>)|(%3c)|(%3e)|(SELECT) |(UPDATE) |(INSERT) |(DELETE)|(GRANT) |(REVOKE)|(UNION)|(&lt;)|(&gt;)
(assert (not (str.in.re X (re.union (str.to.re "script") (str.to.re "<") (str.to.re ">") (str.to.re "%3c") (str.to.re "%3e") (str.to.re "SELECT ") (str.to.re "UPDATE ") (str.to.re "INSERT ") (str.to.re "DELETE") (str.to.re "GRANT ") (str.to.re "REVOKE") (str.to.re "UNION") (str.to.re "&lt;") (str.to.re "&gt;\x0a")))))
; /filename=[^\n]*\x2exfdl/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xfdl/i\x0a")))))
; ^((00|\+)49)?(0?[2-9][0-9]{1,})$
(assert (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "00") (str.to.re "+")) (str.to.re "49"))) (str.to.re "\x0a") (re.opt (str.to.re "0")) (re.range "2" "9") (re.+ (re.range "0" "9")))))
(check-sat)
