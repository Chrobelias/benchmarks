(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (str.to_re "159") (re.union (re.++ (re.+ (str.to_re "32")) (str.to_re "34")) (re.range "3" "6")))))

(assert (<= (* 6 (str.to_int x)) 74))
(assert (<= (+ (* (- 9) (str.len x)) (* 9 (str.to_int x))) 14))
(assert (< (str.len x) 81))

(check-sat)