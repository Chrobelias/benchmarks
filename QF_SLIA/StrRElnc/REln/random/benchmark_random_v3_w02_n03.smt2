(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.++ (re.* (re.++ (str.to_re "7") (re.+ (str.to_re "37")))) (str.to_re "6"))))
(assert (str.in_re y (re.++ (re.+ (str.to_re "418")) (re.* (str.to_re "64")))))
(assert (str.in_re z (re.union (re.++ (str.to_re "352") (re.* (str.to_re "5"))) (re.* (str.to_re "736")))))

(assert (<= (+ (* 4 (str.len x)) (* (- 6) (str.to_int z))) 45))

(check-sat)