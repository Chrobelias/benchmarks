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

(assert (str.in_re x (re.* (str.to_re "29"))))
(assert (str.in_re y (re.++ (re.+ (str.to_re "455")) (re.++ (str.to_re "3") (re.range "6" "8")))))
(assert (str.in_re z (re.+ (str.to_re "43"))))

(assert (>= (+ (* 4 (str.to_int x)) (* 3 (str.to_int y)) (* 6 (str.to_int z))) 17))
(assert (> (+ (* (- 7) (str.len y)) (* 2 (str.len z))) 54))
(assert (< (+ (* 3 (str.len x)) (* (- 10) (str.len y)) (* (- 9) (str.len z))) 51))
(assert (<= (+ (- (str.to_int x)) (* 5 (str.to_int y))) 26))
(assert (> (+ (* 6 (str.to_int x)) (* 5 (str.to_int y)) (* (- 7) (str.to_int z))) 11))

(check-sat)