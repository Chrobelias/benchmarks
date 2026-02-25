(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.union (re.+ (re.range "5" "7")) (str.to_re "563")))))

(assert (<= (+ (* (- 3) (str.len x)) (* 3 (str.to_int x))) 53))
(assert (>= (* 10 (str.to_int x)) 79))

(check-sat)