(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ y z) (str.++ x "68")))

(assert (str.in_re x (re.++ (re.union (str.to_re "443") (re.* (str.to_re "75"))) (re.* (str.to_re "71")))))
(assert (str.in_re z (re.* (re.union (re.+ (re.* (re.range "6" "8"))) (str.to_re "243")))))
(assert (str.in_re y (re.union (re.range "1" "5") (re.union (re.+ (str.to_re "75")) (str.to_re "8")))))

(assert (>= (+ (* (- 10) (str.len x)) (* 10 (str.to_int y))) 52))

(check-sat)