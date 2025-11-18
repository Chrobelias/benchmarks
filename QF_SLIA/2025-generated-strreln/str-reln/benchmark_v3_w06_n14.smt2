(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.* (str.to_re "657"))))
(assert (str.in_re y (re.++ (re.union (str.to_re "4") (re.range "1" "7")) (re.+ (str.to_re "392")))))
(assert (str.in_re z (re.* (re.++ (re.++ (re.range "0" "6") (re.+ (str.to_re "1"))) (str.to_re "79")))))

(assert (<= (+ (* 2 (str.to_int x)) (* 4 (str.to_int y)) (* 3 (str.to_int z))) 27))
(assert (<= (+ (str.to_int x) (* 8 (str.to_int z))) 62))
(assert (<= (+ (* 7 (str.len z)) (* (- 6) (str.to_int y))) 30))
(assert (<= (+ (* (- 6) (str.len x)) (* (- 10) (str.to_int y))) 4))

(check-sat)