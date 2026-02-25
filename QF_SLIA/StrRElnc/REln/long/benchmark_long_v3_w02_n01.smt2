(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re z (re.++ (re.union (re.* (str.to_re "974")) (str.to_re "310")) (str.to_re "76"))))
(assert (str.in_re y (re.* (re.++ (re.range "7" "9") (str.to_re "71")))))
(assert (str.in_re x (re.union (re.+ (re.++ (str.to_re "11") (re.range "0" "8"))) (str.to_re "47"))))

(assert (= (+ (* 8 (str.len x)) (* 6 (str.to_int x)) (str.to_int y) (* (- 5) (str.to_int z))) 5))

(check-sat)