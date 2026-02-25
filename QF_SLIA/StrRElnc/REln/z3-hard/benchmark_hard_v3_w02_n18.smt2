(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.* (re.union (str.to_re "77") (re.++ (str.to_re "310") (str.to_re "738"))))))
(assert (str.in_re y (re.+ (str.to_re "926"))))
(assert (str.in_re z (re.++ (re.range "4" "7") (re.++ (re.+ (re.range "2" "6")) (re.range "0" "3")))))

(assert (<= (+ (* (- 3) (str.len y)) (* 3 (str.to_int z))) 63))

(check-sat)