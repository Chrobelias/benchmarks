(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re y (re.++ (re.* (re.range "6" "9")) (re.* (str.to_re "13")))))
(assert (str.in_re x (re.union (re.union (re.union (str.to_re "198") (re.+ (str.to_re "349"))) (str.to_re "18")) (str.to_re "70"))))
(assert (str.in_re z (re.+ (re.+ (re.* (str.to_re "275"))))))

(assert (> (+ (* 4 (str.len x)) (* (- 6) (str.to_int x))) 9))

(check-sat)