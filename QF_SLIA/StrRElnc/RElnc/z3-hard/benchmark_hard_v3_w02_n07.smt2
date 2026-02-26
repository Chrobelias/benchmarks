(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= z (str.++ "49" x "67" y)))

(assert (str.in_re y (re.++ (re.union (re.union (re.* (str.to_re "6")) (str.to_re "81")) (str.to_re "53")) (str.to_re "8"))))
(assert (str.in_re z (re.* (re.+ (re.union (str.to_re "29") (re.range "1" "9"))))))
(assert (str.in_re x (re.++ (str.to_re "99") (re.* (re.* (re.+ (str.to_re "3")))))))

(assert (>= (+ (* (- 5) (str.len x)) (* 4 (str.len z))) 79))
(assert (= (+ (* 2 (str.to_int x)) (str.to_int y) (* 9 (str.to_int z))) 15))

(check-sat)