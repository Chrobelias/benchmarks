(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re y (re.++ (str.to_re "765") (re.* (re.++ (str.to_re "700") (str.to_re "3"))))))
(assert (str.in_re z (re.++ (re.++ (re.range "6" "8") (re.* (str.to_re "133"))) (re.+ (str.to_re "43")))))
(assert (str.in_re x (re.* (str.to_re "482"))))

(assert (= (+ (* 7 (str.len x)) (- (str.to_int y)) (* (- 9) (str.to_int z))) 32))

(check-sat)