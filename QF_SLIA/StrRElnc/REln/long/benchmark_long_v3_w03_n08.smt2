(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re z (re.union (re.* (str.to_re "63")) (str.to_re "80"))))
(assert (str.in_re y (re.++ (str.to_re "10") (re.++ (re.+ (re.* (str.to_re "711"))) (str.to_re "2")))))
(assert (str.in_re x (re.* (re.union (re.+ (str.to_re "43")) (re.* (str.to_re "5"))))))

(assert (= (+ (* (- 3) (str.len x)) (* 5 (str.len y)) (* (- 6) (str.len z))) 66))
(assert (< (+ (* 3 (str.len x)) (* (- 6) (str.len y)) (* 6 (str.len z))) 64))
(assert (>= (+ (* 2 (str.to_int x)) (* (- 9) (str.to_int y)) (* (- 2) (str.to_int z))) 69))

(check-sat)