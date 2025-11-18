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

(assert (str.in_re x (re.+ (str.to_re "16"))))
(assert (str.in_re y (re.++ (str.to_re "37") (re.+ (re.range "4" "6")))))
(assert (str.in_re z (re.++ (re.++ (str.to_re "244") (str.to_re "836")) (re.+ (str.to_re "43")))))

(assert (= (+ (* (- 3) (str.len x)) (* 4 (str.len y)) (str.len z)) 55))
(assert (<= (+ (* (- 2) (str.to_int x)) (* (- 3) (str.to_int y)) (* 2 (str.to_int z))) 26))

(check-sat)