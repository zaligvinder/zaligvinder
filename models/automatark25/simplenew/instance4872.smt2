(declare-const X String)
; Host\x3aYOUR\x2Fxml\x2Ftoolbar\x2FGREATExplorerSecureNet
(assert (str.in.re X (str.to.re "Host:YOUR/xml/toolbar/GREATExplorerSecureNet\x0a")))
(check-sat)
