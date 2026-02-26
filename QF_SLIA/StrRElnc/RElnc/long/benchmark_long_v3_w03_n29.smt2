(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len z) 1000))
(assert (>= (str.len y) 1000))

(assert (= (str.++ z y) (str.++ "99" x)))

(assert (str.in_re y (re.union (re.* (re.+ (re.* (re.range "2" "5")))) (str.to_re "2"))))
(assert (str.in_re x (re.union (re.+ (re.* (str.to_re "3"))) (re.* (str.to_re "83")))))
(assert (str.in_re z (re.* (re.range "6" "9"))))

(assert (< (+ (* 5 (str.len x)) (* 8 (str.len y)) (* 9 (str.len z))) 4))
(assert (> (+ (* 9 (str.to_int x)) (* (- 10) (str.to_int y)) (* (- 9) (str.to_int z))) 51))
(assert (= (+ (* 3 (str.to_int y)) (* 3 (str.to_int z))) 41))

(check-sat)