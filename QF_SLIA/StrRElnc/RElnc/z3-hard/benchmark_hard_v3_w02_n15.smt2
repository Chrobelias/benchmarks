(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= y (str.++ x "73" z "77")))

(assert (str.in_re z (re.* (re.+ (re.++ (re.range "6" "8") (re.* (str.to_re "49")))))))
(assert (str.in_re y (re.+ (re.* (re.union (str.to_re "839") (re.range "3" "8"))))))
(assert (str.in_re x (re.++ (re.union (re.union (str.to_re "0") (re.+ (re.range "0" "9"))) (str.to_re "922")) (str.to_re "36"))))

(assert (= (+ (* 2 (str.len z)) (* 2 (str.to_int y)) (* (- 7) (str.to_int z))) 96))

(check-sat)