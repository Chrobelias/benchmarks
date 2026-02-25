(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re z (re.* (re.++ (re.range "1" "3") (re.range "5" "8")))))
(assert (str.in_re y (re.union (re.range "1" "3") (re.* (str.to_re "8")))))
(assert (str.in_re x (re.+ (re.union (str.to_re "43") (re.union (re.range "2" "8") (re.+ (str.to_re "70")))))))

(assert (>= (+ (* 3 (str.to_int x)) (* 6 (str.to_int y)) (* 7 (str.to_int z))) 93))
(assert (= (+ (* 8 (str.to_int x)) (str.to_int y) (* 6 (str.to_int z))) 33))
(assert (<= (+ (* (- 9) (str.len x)) (* (- 8) (str.len y)) (* (- 8) (str.len z))) 79))

(check-sat)