(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re y (re.++ (re.+ (re.+ (re.range "5" "9"))) (re.+ (str.to_re "2")))))
(assert (str.in_re x (re.+ (re.range "7" "9"))))
(assert (str.in_re z (re.union (re.* (str.to_re "904")) (str.to_re "70"))))

(assert (> (+ (* (- 3) (str.to_int x)) (* 8 (str.to_int y)) (* (- 3) (str.to_int z))) 81))
(assert (> (+ (* (- 4) (str.len x)) (* (- 8) (str.len y)) (* 3 (str.len z))) 41))
(assert (>= (+ (* 2 (str.to_int x)) (* (- 9) (str.to_int y)) (* 8 (str.to_int z))) 96))

(check-sat)