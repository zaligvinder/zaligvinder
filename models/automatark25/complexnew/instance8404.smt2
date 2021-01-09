(declare-const X String)
; search\.dropspam\.com.*pjpoptwql\x2frlnj
(assert (not (str.in.re X (re.++ (str.to.re "search.dropspam.com") (re.* re.allchar) (str.to.re "pjpoptwql/rlnj\x0a")))))
; /filename=[^\n]*\x2epfm/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pfm/i\x0a"))))
; ^[+][0-9]\d{2}-\d{3}-\d{4}$
(assert (str.in.re X (re.++ (str.to.re "+") (re.range "0" "9") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; Host\x3aYOUR\x2Fxml\x2Ftoolbar\x2FGREATExplorerSecureNet
(assert (not (str.in.re X (str.to.re "Host:YOUR/xml/toolbar/GREATExplorerSecureNet\x0a"))))
(check-sat)
