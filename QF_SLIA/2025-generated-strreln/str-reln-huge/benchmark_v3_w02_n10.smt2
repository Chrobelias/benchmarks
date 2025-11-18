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

(assert (str.in_re x (re.+ (re.++ (str.to_re "34") (str.to_re "26")))))
(assert (str.in_re y (re.++ (re.union (re.+ (str.to_re "73")) (str.to_re "4")) (re.+ (str.to_re "40")))))
(assert (str.in_re z (re.union (re.+ (re.range "1" "3")) (str.to_re "8"))))

(assert (= (+ (* 7 (str.to_int x)) (* 8 (str.to_int y))) 41))
(assert (>= (+ (* 3 (str.len x)) (* 4 (str.len y)) (* (- 7) (str.len z))) 30))

(check-sat)