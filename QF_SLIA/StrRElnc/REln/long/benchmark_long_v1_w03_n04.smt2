(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (re.* (str.to_re "432")) (re.union (str.to_re "379") (str.to_re "0")))))

(assert (= (+ (* 9 (str.len x)) (* 9 (str.to_int x))) 44))
(assert (= (* (- 9) (str.to_int x)) 60))

(check-sat)