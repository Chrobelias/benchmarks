(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (re.* (re.union (str.to_re "2") (re.* (str.to_re "4")))) (str.to_re "11"))))

(assert (>= (* (- 4) (str.len x)) 98))
(assert (= (+ (- (str.len x)) (* (- 3) (str.to_int x))) 46))
(assert (= (* (- 4) (str.len x)) 84))
(assert (>= (* 3 (str.to_int x)) 20))

(check-sat)