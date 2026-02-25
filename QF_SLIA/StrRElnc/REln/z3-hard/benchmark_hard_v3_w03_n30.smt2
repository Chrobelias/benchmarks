(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.++ (re.union (re.range "1" "6") (str.to_re "64")) (re.* (str.to_re "664")))))
(assert (str.in_re z (re.* (re.union (str.to_re "54") (re.++ (re.+ (str.to_re "91")) (str.to_re "811"))))))
(assert (str.in_re y (re.+ (str.to_re "69"))))

(assert (< (+ (* (- 7) (str.len x)) (* 2 (str.to_int z))) 67))
(assert (< (+ (* 4 (str.to_int x)) (* 3 (str.to_int y)) (* 7 (str.to_int z))) 88))

(check-sat)