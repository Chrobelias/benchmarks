(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.++ (re.++ (str.to_re "998") (re.+ (re.* (str.to_re "51")))) (str.to_re "59"))))
(assert (str.in_re y (re.++ (re.union (str.to_re "6") (re.+ (str.to_re "717"))) (re.range "6" "8"))))
(assert (str.in_re z (re.union (re.++ (re.+ (str.to_re "7")) (re.* (str.to_re "82"))) (re.range "7" "9"))))

(assert (>= (+ (* (- 7) (str.len x)) (str.len y) (* (- 3) (str.len z))) 56))
(assert (>= (+ (* 6 (str.len y)) (* 6 (str.len z))) 91))
(assert (> (+ (* 7 (str.to_int x)) (* 3 (str.to_int y)) (* (- 3) (str.to_int z))) 93))

(check-sat)