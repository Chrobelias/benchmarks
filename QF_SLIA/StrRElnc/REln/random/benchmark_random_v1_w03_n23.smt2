(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.+ (re.+ (re.range "1" "5"))) (str.to_re "538"))))

(assert (>= (+ (* 3 (str.len x)) (* (- 7) (str.to_int x))) 95))
(assert (>= (* 4 (str.to_int x)) 68))

(check-sat)