(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))
(assert (>= (str.len x) 1000))

(assert (= z (str.++ x y "23")))

(assert (str.in_re y (re.++ (str.to_re "5") (re.++ (re.range "4" "6") (re.++ (re.* (str.to_re "487")) (str.to_re "347"))))))
(assert (str.in_re x (re.* (re.* (re.++ (re.range "5" "7") (str.to_re "0"))))))
(assert (str.in_re z (re.+ (re.union (re.+ (re.range "0" "3")) (re.range "4" "7")))))

(assert (<= (+ (* 5 (str.len x)) (* 2 (str.len z)) (* 9 (str.to_int y)) (* 9 (str.to_int z))) 66))

(check-sat)