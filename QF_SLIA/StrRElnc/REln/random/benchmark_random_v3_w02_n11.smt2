(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.union (re.union (re.++ (re.+ (str.to_re "5")) (str.to_re "299")) (str.to_re "3")) (str.to_re "115"))))
(assert (str.in_re z (re.union (re.union (re.+ (str.to_re "361")) (re.* (str.to_re "68"))) (str.to_re "10"))))
(assert (str.in_re y (re.++ (re.union (str.to_re "59") (re.range "6" "9")) (re.+ (str.to_re "393")))))

(assert (>= (+ (* 6 (str.len x)) (* (- 4) (str.len y)) (* 4 (str.to_int x)) (* 8 (str.to_int z))) 87))

(check-sat)