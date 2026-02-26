(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len z) 1000))

(assert (= (str.++ "67" x z) (str.++ y "54")))

(assert (str.in_re z (re.union (re.* (str.to_re "28")) (re.union (re.* (str.to_re "54")) (str.to_re "259")))))
(assert (str.in_re x (re.++ (str.to_re "45") (re.+ (str.to_re "46")))))
(assert (str.in_re y (re.+ (re.range "3" "9"))))

(assert (> (+ (* 5 (str.len x)) (* 4 (str.len y)) (* 6 (str.to_int x))) 64))
(assert (= (+ (* (- 5) (str.len x)) (* (- 8) (str.len y)) (* (- 3) (str.len z))) 94))

(check-sat)