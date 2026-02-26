(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len z) 1000))

(assert (= (str.++ "86" y) (str.++ z x "18" "99")))

(assert (str.in_re y (re.++ (re.union (re.+ (str.to_re "573")) (str.to_re "32")) (re.+ (str.to_re "613")))))
(assert (str.in_re x (re.+ (re.union (re.union (re.+ (str.to_re "66")) (str.to_re "7")) (re.range "1" "3")))))
(assert (str.in_re z (re.+ (re.union (re.union (str.to_re "662") (re.* (str.to_re "68"))) (str.to_re "0")))))

(assert (<= (+ (* 3 (str.len x)) (* 9 (str.len y)) (* (- 6) (str.len z))) 32))
(assert (< (+ (* (- 5) (str.to_int x)) (* 8 (str.to_int y)) (* 5 (str.to_int z))) 31))
(assert (> (+ (* (- 8) (str.len x)) (* 4 (str.len y)) (* (- 9) (str.len z))) 10))

(check-sat)