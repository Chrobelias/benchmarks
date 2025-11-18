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

(assert (str.in_re x (re.+ (re.++ (re.++ (re.+ (str.to_re "50")) (str.to_re "350")) (str.to_re "281")))))
(assert (str.in_re y (re.+ (re.++ (str.to_re "603") (str.to_re "82")))))
(assert (str.in_re z (re.* (re.union (str.to_re "93") (str.to_re "87")))))

(assert (= (+ (* (- 6) (str.to_int x)) (* (- 7) (str.to_int y)) (* 2 (str.to_int z))) 61))
(assert (< (+ (* (- 8) (str.len x)) (* 5 (str.len y)) (* (- 2) (str.len z))) 57))
(assert (<= (+ (* (- 6) (str.len x)) (* 4 (str.len y)) (* 10 (str.len z))) 82))

(check-sat)