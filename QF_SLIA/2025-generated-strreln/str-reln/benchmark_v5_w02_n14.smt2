(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)
(declare-const b String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))
(assert (>= (str.to_int b) 0))

(assert (str.in_re x (re.++ (re.++ (re.+ (str.to_re "85")) (str.to_re "38")) (re.* (str.to_re "2")))))
(assert (str.in_re y (re.* (re.++ (re.* (re.* (str.to_re "90"))) (str.to_re "4")))))
(assert (str.in_re z (re.union (re.union (re.* (str.to_re "388")) (str.to_re "0")) (str.to_re "5"))))
(assert (str.in_re a (re.++ (re.+ (re.++ (str.to_re "24") (str.to_re "84"))) (str.to_re "68"))))
(assert (str.in_re b (re.+ (re.++ (re.range "1" "6") (str.to_re "549")))))

(assert (<= (+ (* (- 5) (str.len x)) (* 8 (str.to_int x))) 81))

(check-sat)