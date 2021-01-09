(declare-const X String)
; /onload\s*\x3D\s*[\x22\x27]?location\.reload\s*\x28/smi
(assert (not (str.in.re X (re.++ (str.to.re "/onload") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (re.union (str.to.re "\x22") (str.to.re "'"))) (str.to.re "location.reload") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "(/smi\x0a")))))
; /stat2\.php\?w=\d+\x26i=[0-9a-f]{32}\x26a=\d+/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/stat2.php?w=") (re.+ (re.range "0" "9")) (str.to.re "&i=") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re "&a=") (re.+ (re.range "0" "9")) (str.to.re "/Ui\x0a")))))
(check-sat)
