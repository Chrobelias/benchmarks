(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re y (re.union (str.to_re "31") (re.+ (re.++ (str.to_re "782") (str.to_re "478"))))))
(assert (str.in_re x (re.++ (re.union (re.* (re.range "7" "9")) (re.+ (re.range "0" "7"))) (str.to_re "40"))))
(assert (str.in_re z (re.* (re.++ (re.* (str.to_re "91")) (re.+ (str.to_re "79"))))))

(assert (> (+ (* (- 3) (str.len x)) (* 7 (str.len y)) (- (str.to_int x)) (- (str.to_int y))) 99))
(assert (<= (+ (* (- 5) (str.to_int x)) (* (- 5) (str.to_int y)) (* 3 (str.to_int z))) 52))

(check-sat)