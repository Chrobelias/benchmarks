(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.+ (re.+ (str.to_re "282"))) (re.* (str.to_re "495")))))

(assert (> (+ (* (- 8) (str.len x)) (* 5 (str.to_int x))) 28))
(assert (> (+ (* 4 (str.len x)) (* 10 (str.to_int x))) 29))

(check-sat)