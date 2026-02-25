(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re y (re.* (re.* (re.union (re.range "6" "8") (re.+ (str.to_re "62")))))))
(assert (str.in_re x (re.union (re.union (re.range "4" "8") (re.* (re.* (str.to_re "0")))) (str.to_re "639"))))
(assert (str.in_re z (re.+ (re.* (str.to_re "33")))))

(assert (<= (+ (* 6 (str.len z)) (* (- 10) (str.to_int y))) 76))

(check-sat)