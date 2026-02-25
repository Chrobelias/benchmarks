(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.union (re.++ (re.+ (str.to_re "169")) (str.to_re "328")) (re.+ (str.to_re "33")))))
(assert (str.in_re z (re.++ (re.union (re.* (str.to_re "132")) (re.+ (str.to_re "7"))) (str.to_re "479"))))
(assert (str.in_re y (re.* (re.* (re.union (re.* (str.to_re "176")) (re.range "1" "9"))))))

(assert (> (+ (* (- 8) (str.len z)) (* (- 3) (str.to_int x)) (* 6 (str.to_int z))) 50))
(assert (<= (+ (* 5 (str.to_int x)) (* 3 (str.to_int y)) (str.to_int z)) 95))

(check-sat)