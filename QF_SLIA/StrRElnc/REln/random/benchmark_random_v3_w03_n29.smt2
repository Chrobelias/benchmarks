(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.union (str.to_re "56") (re.* (re.range "0" "6")))))
(assert (str.in_re z (re.* (re.++ (str.to_re "35") (re.++ (re.+ (str.to_re "135")) (str.to_re "47"))))))
(assert (str.in_re y (re.union (str.to_re "365") (re.union (re.+ (str.to_re "691")) (re.+ (str.to_re "281"))))))

(assert (= (+ (* 8 (str.to_int x)) (* 7 (str.to_int y)) (* 3 (str.to_int z))) 19))
(assert (<= (+ (* 5 (str.len x)) (* (- 10) (str.to_int y)) (str.to_int z)) 19))

(check-sat)