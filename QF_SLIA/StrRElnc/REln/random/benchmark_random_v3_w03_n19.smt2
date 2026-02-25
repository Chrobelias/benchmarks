(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re y (re.++ (re.range "0" "6") (re.++ (re.+ (str.to_re "390")) (str.to_re "177")))))
(assert (str.in_re z (re.* (re.++ (re.++ (str.to_re "98") (str.to_re "0")) (str.to_re "95")))))
(assert (str.in_re x (re.++ (re.+ (str.to_re "5")) (re.++ (str.to_re "7") (str.to_re "259")))))

(assert (= (+ (* 5 (str.len x)) (* 9 (str.len z)) (* 6 (str.to_int y))) 81))
(assert (< (+ (* (- 7) (str.to_int x)) (* (- 9) (str.to_int y)) (* (- 4) (str.to_int z))) 70))

(check-sat)