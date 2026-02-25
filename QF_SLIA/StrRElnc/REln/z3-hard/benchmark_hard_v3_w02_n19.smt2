(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.+ (re.union (str.to_re "56") (re.* (re.range "1" "9"))))))
(assert (str.in_re y (re.union (re.++ (re.+ (str.to_re "457")) (re.range "3" "8")) (re.range "6" "9"))))
(assert (str.in_re z (re.++ (re.union (str.to_re "9") (re.+ (str.to_re "8"))) (str.to_re "91"))))

(assert (= (+ (- (str.len z)) (* 2 (str.to_int x)) (* 6 (str.to_int z))) 18))

(check-sat)