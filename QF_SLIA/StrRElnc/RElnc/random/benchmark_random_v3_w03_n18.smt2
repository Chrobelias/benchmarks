(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= x (str.++ y "92" z)))

(assert (str.in_re x (re.+ (re.* (re.range "0" "9")))))
(assert (str.in_re z (re.* (re.union (re.range "5" "7") (re.++ (str.to_re "9") (str.to_re "347"))))))
(assert (str.in_re y (re.++ (re.* (str.to_re "7")) (re.+ (str.to_re "46")))))

(assert (= (+ (* (- 2) (str.len y)) (* (- 8) (str.to_int x))) 8))
(assert (< (+ (* 2 (str.to_int y)) (* 10 (str.to_int z))) 30))

(check-sat)