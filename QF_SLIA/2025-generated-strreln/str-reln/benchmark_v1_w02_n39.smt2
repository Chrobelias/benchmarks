(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.++ (re.union (str.to_re "312") (re.range "1" "7")) (str.to_re "307")))))

(assert (<= (+ (* (- 8) (str.len x)) (* 7 (str.to_int x))) 8))

(check-sat)