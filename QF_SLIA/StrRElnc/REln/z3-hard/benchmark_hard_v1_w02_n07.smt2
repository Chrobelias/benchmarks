(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.* (re.union (re.+ (str.to_re "60")) (str.to_re "271"))))))

(assert (< (+ (* (- 10) (str.len x)) (str.to_int x)) 21))

(check-sat)