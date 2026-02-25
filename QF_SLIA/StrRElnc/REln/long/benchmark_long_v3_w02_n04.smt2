(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re z (re.* (re.++ (re.range "6" "9") (re.+ (str.to_re "17"))))))
(assert (str.in_re x (re.union (re.* (str.to_re "65")) (str.to_re "79"))))
(assert (str.in_re y (re.* (str.to_re "33"))))

(assert (> (+ (* (- 5) (str.to_int x)) (* 5 (str.to_int y)) (* (- 6) (str.to_int z))) 74))
(assert (<= (* (- 6) (str.len z)) 15))

(check-sat)