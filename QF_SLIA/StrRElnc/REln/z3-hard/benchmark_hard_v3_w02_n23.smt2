(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re y (re.union (re.union (str.to_re "98") (str.to_re "378")) (re.* (str.to_re "83")))))
(assert (str.in_re x (re.union (re.union (re.+ (str.to_re "234")) (str.to_re "12")) (str.to_re "566"))))
(assert (str.in_re z (re.union (re.+ (re.* (str.to_re "898"))) (str.to_re "84"))))

(assert (<= (+ (* (- 7) (str.len x)) (* 4 (str.len y)) (* (- 7) (str.len z))) 53))
(assert (<= (+ (* 3 (str.to_int x)) (str.to_int y) (* 9 (str.to_int z))) 22))

(check-sat)