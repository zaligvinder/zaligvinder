(set-option :produce-models true)
(declare-fun var1679 () Int)
(declare-fun var1680 () Int)
(declare-fun var1681 () Int)
(declare-fun var1684 () String)
(declare-fun var1685 () Int)
(declare-fun var1689 () String)
(declare-fun var1690 () String)
(declare-fun var1691 () String)
(declare-fun var1692 () String)
(declare-fun var1693 () String)
(declare-fun var1695 () String)
(declare-fun var1696 () String)
(declare-fun var1697 () String)
(declare-fun sv1 () String)
(declare-fun sv2 () String)

(assert (= sv1 sv2 ) )
(assert (str.in.re var1684 (re.++ (re.++ (re.++  (re.++ (re.* re.allchar ) (re.++  (str.to.re "\x27") (re.++ (re.+  (str.to.re "\x20") ) (re.++  (re.union  (str.to.re "\x4f")  (str.to.re "\x6f")) (re.++  (re.union  (str.to.re "\x52")  (str.to.re "\x72")) (re.++ (re.+  (str.to.re "\x20") )  (str.to.re "\x27"))))))) (str.to.re sv1) ) (re.++  (re.++  (str.to.re "\x27") (re.++ (re.* re.allchar ) (re.++  (str.to.re "\x3d") (re.++ (re.* re.allchar )  (str.to.re "\x27"))))) (str.to.re sv2) ) )  (re.++  (str.to.re "\x27") (re.++ (re.*  (str.to.re "\x20") )  (re.union  (re.++  (str.to.re "\x5c\x2d")  (str.to.re "\x5c\x2d"))  (str.to.re "\x23")))) ) ) )
(assert (= var1679 (+ var1680 var1681 ) ) )
(assert (= var1680 (str.to.int var1684 ) ) )
(assert (not (= var1685 0 )) )
(assert (= var1689 var1690 ) )
(assert (= var1690 (str.++ var1691 var1692 ) ) )
(assert (= var1691 (str.++ var1693 "AND productid =" ) ) )
(assert (= var1693 (str.++ var1695 var1696 ) ) )
(assert (= var1695 (str.++ var1697 "SELECT \x2a FROM BasketContents WHERE basketid=" ) ) )

(check-sat)
(get-model)
