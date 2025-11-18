(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))
(assert (>= (str.to_int z) 0))
(assert (>= (str.len z) 10))

(assert (str.in_re x (re.+ (re.* (re.++ (str.to_re "303") (str.to_re "3"))))))
(assert (str.in_re y (re.union (re.+ (str.to_re "854")) (re.union (str.to_re "458") (str.to_re "92")))))
(assert (str.in_re z (re.+ (re.+ (re.* (str.to_re "80"))))))

(assert (>= (+ (* (- 7) (str.len x)) (* 7 (str.len y))) 21))
(assert (> (+ (* 9 (str.to_int x)) (* (- 9) (str.to_int y)) (* (- 10) (str.to_int z))) 44))
(assert (<= (+ (* 6 (str.len x)) (* (- 7) (str.to_int x)) (* 8 (str.to_int y))) 40))
(assert (>= (+ (* 2 (str.to_int x)) (* (- 10) (str.to_int y)) (* (- 4) (str.to_int z))) 39))
(assert (< (+ (* 9 (str.len x)) (* 8 (str.len y)) (* (- 10) (str.len z))) 17))

(check-sat)