(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.union (str.to_re "11") (re.union (str.to_re "887") (re.+ (str.to_re "165"))))))
(assert (str.in_re y (re.union (re.+ (str.to_re "26")) (re.++ (re.+ (str.to_re "43")) (re.range "3" "5")))))
(assert (str.in_re z (re.union (re.+ (re.* (str.to_re "787"))) (str.to_re "54"))))

(assert (>= (+ (* 4 (str.len z)) (* (- 7) (str.to_int x))) 80))

(check-sat)