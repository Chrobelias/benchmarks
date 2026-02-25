(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))
(assert (>= (str.len x) 1000))

(assert (str.in_re y (re.* (re.range "7" "9"))))
(assert (str.in_re z (re.union (re.union (re.+ (str.to_re "369")) (str.to_re "82")) (str.to_re "56"))))
(assert (str.in_re x (re.++ (re.++ (str.to_re "76") (re.* (str.to_re "723"))) (str.to_re "97"))))

(assert (<= (+ (* (- 10) (str.len z)) (* 8 (str.to_int y))) 82))

(check-sat)