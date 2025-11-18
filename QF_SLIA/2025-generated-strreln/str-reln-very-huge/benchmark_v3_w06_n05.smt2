(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))
(assert (>= (str.to_int z) 0))
(assert (>= (str.len z) 100))

(assert (str.in_re x (re.union (re.* (str.to_re "27")) (re.* (re.* (str.to_re "77"))))))
(assert (str.in_re y (re.++ (re.* (str.to_re "368")) (re.* (str.to_re "1")))))
(assert (str.in_re z (re.union (re.+ (str.to_re "593")) (str.to_re "7"))))

(assert (>= (+ (* 4 (str.len y)) (* (- 4) (str.to_int x)) (* (- 2) (str.to_int y)) (* 5 (str.to_int z))) 51))
(assert (<= (+ (* 6 (str.to_int x)) (* (- 5) (str.to_int y)) (* 6 (str.to_int z))) 44))
(assert (<= (+ (* 9 (str.len x)) (* (- 10) (str.len y)) (* 10 (str.len z))) 28))
(assert (= (+ (* 3 (str.len x)) (* (- 8) (str.len y)) (* 9 (str.len z))) 98))
(assert (<= (+ (* 5 (str.len x)) (* (- 3) (str.len y)) (* (- 8) (str.len z))) 33))

(check-sat)