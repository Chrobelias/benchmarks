(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re y (re.union (str.to_re "7") (re.++ (re.+ (str.to_re "8")) (re.* (str.to_re "38"))))))
(assert (str.in_re z (re.* (re.* (re.++ (str.to_re "418") (str.to_re "671"))))))
(assert (str.in_re x (re.+ (re.++ (str.to_re "232") (str.to_re "9")))))

(assert (<= (+ (* (- 3) (str.len x)) (* 10 (str.to_int y)) (* 4 (str.to_int z))) 65))

(check-sat)