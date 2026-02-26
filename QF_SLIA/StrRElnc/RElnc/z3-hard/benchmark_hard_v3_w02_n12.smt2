(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ y z) (str.++ "76" x)))

(assert (str.in_re x (re.* (re.* (re.range "0" "3")))))
(assert (str.in_re y (re.union (re.++ (str.to_re "76") (re.range "7" "9")) (re.+ (re.range "5" "7")))))
(assert (str.in_re z (re.union (re.* (re.range "1" "3")) (re.+ (str.to_re "72")))))

(assert (<= (+ (* 10 (str.len x)) (* 10 (str.to_int y))) 94))

(check-sat)