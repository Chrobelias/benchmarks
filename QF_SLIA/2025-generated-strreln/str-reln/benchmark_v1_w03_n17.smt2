(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (str.to_re "233") (re.+ (re.union (str.to_re "65") (re.+ (re.range "6" "9")))))))

(assert (> (+ (* 2 (str.len x)) (* (- 2) (str.to_int x))) 60))
(assert (<= (* 7 (str.to_int x)) 62))

(check-sat)