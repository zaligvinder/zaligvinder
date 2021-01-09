(declare-const X String)
; ^(\+86)(13[0-9]|145|147|15[0-3,5-9]|18[0,2,5-9])(\d{8})$
(assert (not (str.in.re X (re.++ (str.to.re "+86") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a1") (re.union (re.++ (str.to.re "3") (re.range "0" "9")) (str.to.re "45") (str.to.re "47") (re.++ (str.to.re "5") (re.union (re.range "0" "3") (str.to.re ",") (re.range "5" "9"))) (re.++ (str.to.re "8") (re.union (str.to.re "0") (str.to.re ",") (str.to.re "2") (re.range "5" "9"))))))))
; /\x3d\x3d$/P
(assert (not (str.in.re X (str.to.re "/==/P\x0a"))))
; ToolbarUser-Agent\x3AFrom\x3A
(assert (str.in.re X (str.to.re "ToolbarUser-Agent:From:\x0a")))
; Host\x3A\ssource%3Dultrasearch136%26campaign%3Dsnap
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "source%3Dultrasearch136%26campaign%3Dsnap\x0a"))))
; ^[0-9]{2}
(assert (not (str.in.re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
